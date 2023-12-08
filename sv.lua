ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

local discordWebhook = "https://discord.com/api/webhooks/1180262299106295961/V1pZweVSlfSREhMtRgrzx2MQze9CsHqoOMYgCckMaMLh7g0S5Ge4rUwg99Or7U4XA0D1"  -- Replace with your actual webhook URL

RegisterNetEvent('main:Player:TakeMoneyInExchangeForItem')
AddEventHandler('main:Player:TakeMoneyInExchangeForItem', function(data)
    local serverId = source
    local shop = nil
    local item = nil
    for _,v in pairs(Config.Shops) do
        if v.name == data.shop then
            shop = v
            break
        end
    end

    if not shop then
        TriggerClientEvent('esx:showNotification', serverId, '~o~Invalid Shop')
        return
    else
        for _,v in pairs(shop.items) do
            if v.item == data.item then
                item = v
                break
            end
        end
    end

    if not item then
        TriggerClientEvent('esx:showNotification', serverId, '~o~Invalid Item')
        return
    else
        local xPlayer = ESX.GetPlayerFromId(serverId) or nil
        if not xPlayer then
            TriggerClientEvent('esx:showNotification', serverId, '~o~Error! Try again')
        else
            if item.inventory then
                local inventory = xPlayer.getInventoryItem(item.item) or nil
                if inventory then
                    if inventory.count >= inventory.count then
                        if xPlayer.getMoney() >= item.price then
                            xPlayer.removeMoney(item.price)
                            xPlayer.addInventoryItem(item.item, 1)
                            TriggerClientEvent('esx:showNotification', serverId, string.format('You ~g~bought~s~ a ~y~%s ', item.displayName, item.price))
                            logPurchaseToDiscord(xPlayer, item, item.price)
                        elseif xPlayer.getAccount('bank').money >= item.price then
                            xPlayer.removeAccountMoney('bank', item.price)
                            xPlayer.addInventoryItem(item.item, 1)
                            TriggerClientEvent('esx:showNotification', serverId, string.format('You ~g~bought~s~ a ~y~%s', item.displayName, item.price))
                            logPurchaseToDiscord(xPlayer, item, item.price)
                        else
                            TriggerClientEvent('esx:showNotification', serverId, '~r~Not enough money in bank to purchase that item.')
                        end
                    end
                else
                    TriggerClientEvent('esx:showNotification', serverId, '~r~Invalid item')
                end
            elseif item.weapon then
                local weapon = xPlayer.getWeapon(item.item) or nil
                if not weapon then
                    if xPlayer.getMoney() >= item.price then
                        xPlayer.removeMoney(item.price)
                        xPlayer.addWeapon(item.item, 20)
                        TriggerClientEvent('esx:showNotification', serverId, string.format('You ~y~bought~s~ a %s for $%s', item.displayName, item.price))
                        logPurchaseToDiscord(xPlayer, item, item.price)
                    elseif xPlayer.getAccount('bank').money >= item.price then
                        xPlayer.removeAccountMoney('bank', item.price)
                        xPlayer.addWeapon(item.item, 20)
                        TriggerClientEvent('esx:showNotification', serverId, string.format('You ~y~bought~s~ a %s for $%s', item.displayName, item.price))
                        logPurchaseToDiscord(xPlayer, item, item.price)
                    else
                        TriggerClientEvent('esx:showNotification', serverId, '~o~Not enough money to purchase that weapon.')
                    end                    
                else
                    TriggerClientEvent('esx:showNotification', serverId, '~r~You already have this weapon')
                end
            else
                TriggerClientEvent('esx:showNotification', serverId, '~r~Invalid Item Type')
            end
        end
    end

end)

function logPurchaseToDiscord(xPlayer, item, price)
    local playerName = GetPlayerName(xPlayer.source)
    local message = string.format('Player `%s` purchased a `%s` for $%s', playerName, item.displayName, ESX.Math.GroupDigits(ESX.Math.Round(price)))
    sendToDiscord(discordWebhook, 'Dardania Log', message)
end

function sendToDiscord(webhook, title, message)
    local connect = {
        {
            ["color"] = 16711680, -- Red color
            ["title"] = title,
            ["description"] = message,
            ["footer"] = {
                ["text"] = "Made by londdzz",
            },
        }
    }

    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "Purchase Tracker", embeds = connect}), { ['Content-Type'] = 'application/json' })
end
