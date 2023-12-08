ESX = nil
local shopConfig = Config.Shops

-- MENU VARIABLES

local _menuPool = NativeUI.CreatePool()
local shopMenus = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
    
	while ESX.GetPlayerData() == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)
-------------------
-- Anders Edited --
-------------------
Citizen.CreateThread(function()
    for i = 1, #shopConfig do
        local menuTitle = shopConfig[i].hideTitle ~= nil and shopConfig[i].hideTitle == true and '' or shopConfig[i].name
        shopMenus[shopConfig[i].name] = NativeUI.CreateMenu(menuTitle, '', 1315, 1, shopConfig[i].bannerDict, shopConfig[i].bannerTex)
        _menuPool:Add(shopMenus[shopConfig[i].name])
        if not (shopConfig[i].hideBlip ~= nil and shopConfig[i].hideBlip) then
            for j = 1, #shopConfig[i].locations do
                local blip = AddBlipForCoord(shopConfig[i].locations[j].x, shopConfig[i].locations[j].y, shopConfig[i].locations[j].z)
                SetBlipSprite(blip, shopConfig[i].sprite)
                SetBlipColour(blip, shopConfig[i].colour)
                SetBlipScale(blip, 0.89)
                SetBlipDisplay(blip, 2)
                SetBlipAsShortRange(blip, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(shopConfig[i].name)
                EndTextCommandSetBlipName(blip)
            end
        end
    end
end)

Citizen.CreateThread(function()
    for i = 1, #shopConfig do
        if not shopConfig[i].zoned then shopConfig[i].zoned = {} end
        for j = 1, #shopConfig[i].locations do
            local zone = GetZoneAtCoords(shopConfig[i].locations[j].x, shopConfig[i].locations[j].y, shopConfig[i].locations[j].z)
            if not shopConfig[i].zoned[zone] then shopConfig[i].zoned[zone] = {} end
            table.insert(shopConfig[i].zoned[zone], shopConfig[i].locations[j])
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        local playerCoords = GetEntityCoords(PlayerPedId())
        local zone = GetZoneAtCoords(playerCoords)
        local menuWasOpen = false
        for i = 1, #shopConfig do
            if shopConfig[i].zoned[zone] then
                for j = 1, #shopConfig[i].zoned[zone] do
                    if (Vdist2(playerCoords.x, playerCoords.y, playerCoords.z, shopConfig[i].zoned[zone][j].x, shopConfig[i].zoned[zone][j].y, shopConfig[i].zoned[zone][j].z) < 2) then
                        local currentHour = GetClockHours()
                        if (currentHour >= shopConfig[i].open and currentHour <= shopConfig[i].close) then
                            TriggerEvent('esx:showHelpNotification', string.format('Press ~INPUT_CONTEXT~ to browse the ~y~%s', shopConfig[i].name))
                            if IsControlJustReleased(0, 51) then
                                OpenShopMenu(shopMenus[shopConfig[i].name], shopConfig[i])
                                menuWasOpen = true
                            end
                        else
                            if not (shopConfig[i].hideOpeningTimes ~= nil and shopConfig[i].hideOpeningTimes == true) then
                                TriggerEvent('esx:showHelpNotification', string.format('~y~%s~s~ is currently ~r~closed~s~\n~y~Opening times:~s~ %s - %s', shopConfig[i].name, shopConfig[i].openDisplay, shopConfig[i].closeDisplay))
                            end
                        end
                    end
                end
            end
        end
            
        while _menuPool:IsAnyMenuOpen() do
            _menuPool:MouseControlsEnabled(false)
            _menuPool:ControlDisablingEnabled(false)
            _menuPool:ProcessMenus()
            Citizen.Wait(0)
        end

        if menuWasOpen then
            menuWasOpen = false
             for _, menu in pairs(shopMenus) do
                 ClearMenu(menu)
             end
        end

        Citizen.Wait(5)
    end
end)
-----------------------
-- End Anders Edited --
-----------------------


function ClearMenu(menu)
    menu:Clear()
    menu:Visible(false)
end

function OpenShopMenu(menu, shopData)
    menu:Clear()

    if (shopData.RequiresLicense ~= nil) then

        ESX.TriggerServerCallback('esx_license:checkLicense', function(hasLicense)
            if hasLicense then
                local items = {}

                for i, v in pairs (shopData.items) do
                    v.shop = shopData.name
                    items[v.displayName] = NativeUI.CreateItem(v.displayName, v.description ~= nil and v.description or '')
                    items[v.displayName]:RightLabel(string.format('~g~$%s', v.price))
                    items[v.displayName]["shopdata"] = v
                    menu:AddItem(items[v.displayName])
                end

                menu:CurrentSelection(0)

                menu.OnItemSelect = function(sender, item, index)
                    for i, v in pairs (items) do
                        if (v == item) then
                            TriggerServerEvent("main:Player:TakeMoneyInExchangeForItem", v["shopdata"])
                        end
                    end
                end
            else
                local licensePrices = {
                    ["weapon"] = 3500,
                    ["hunting"] = 230,
                    ["fishing"] = 800,
                    ["prospecting"] = 600,
                    ["diving"] = 350
                }

                if(licensePrices[shopData.RequiresLicense] ~= nil) then

                    local buyLicense = NativeUI.CreateItem("Purchase a ".. shopData.RequiresLicense .. " license", '~y~$$')
                    buyLicense:RightLabel(string.format("~g~$%s", licensePrices[shopData.RequiresLicense]))

                    menu:AddItem(buyLicense)

                    menu.OnItemSelect = function(sender, item, index)
                        if item == buyLicense then
                            ESX.TriggerServerCallback('esx_license:purchaseLicense', function(boughtLicense)
                                if boughtLicense then
                                    ClearMenu(shopMenus[shopData.name])
                                end
                            end, licensePrices[shopData.RequiresLicense], shopData.RequiresLicense)
                        end
                    end
                else

                    local info = NativeUI.CreateItem("You need a ".. shopData.RequiresLicense .. "to shop here")

                    menu:AddItem(info)
                end
            end
        end, GetPlayerServerId(PlayerId()), shopData.RequiresLicense)
    else
        local items = {}

        for i, v in pairs (shopData.items) do
            v.shop = shopData.name
            items[v.displayName] = NativeUI.CreateItem(v.displayName, '~y~$$')
            items[v.displayName]:RightLabel(string.format('~g~$%s', v.price))
            items[v.displayName]["shopdata"] = v
            menu:AddItem(items[v.displayName])
        end

        menu.OnItemSelect = function(sender, item, index)
            for i, v in pairs (items) do
                if (v == item) then
                    TriggerServerEvent("main:Player:TakeMoneyInExchangeForItem", v["shopdata"])
                end
            end
        end

        menu:CurrentSelection(0)
    end

    menu:Visible(true)
end
