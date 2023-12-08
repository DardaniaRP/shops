Config = {}
Config = {
    Shops = {
        {
            name = "Ammunation",
            open = 6,
            close = 18,
            openDisplay = '6am',
            closeDisplay = '6pm',
            bannerDict = "shopui_title_gunclub",
            bannerTex = "shopui_title_gunclub",
            hideTitle = true,
            sprite = 313,
            colour = 0,
            locations = {
                vector3(17.5733, -1109.5236, 29.7972), -- 17.5733, -1109.5236, 29.7972, 334.9068
                vector3(813.2150, -2153.5244, 29.6192), -- 813.2150, -2153.5244, 29.6192, 185.1514
                vector3(-660.9021, -938.7926, 21.8293), -- -660.9021, -938.7926, 21.8293, 273.8731
                vector3(248.1486, -49.9332, 69.9412), -- 248.1486, -49.9332, 69.9412, 161.7262
                vector3(-1309.1195, -392.9459, 36.6958), -- -1309.1195, -392.9459, 36.6958, 159.7945
                vector3(-1114.4637, 2696.8027, 18.5543), -- -1114.4637, 2696.8027, 18.5543, 306.6137
                vector3(1695.9800, 3756.8696, 34.7053), -- 1695.9800, 3756.8696, 34.7053, 316.0880
                vector3(2566.4766, 298.2563, 108.7350), -- 2566.4766, 298.2563, 108.7350, 92.7765
                vector3(-327.8191, 6080.4907, 31.4548)
            },
            items = {
               {
                    displayName = "Colt Junior",
                    item = "WEAPON_COLTJUNIOR",
                    price = 7000,
                    limit = 1,
                    inventory = true,
                    },
                    {
                    displayName = "M9 Beretta",
                    item = "WEAPON_M9",
                    price = 5000,
                    limit = 1,
                    inventory = true,
                    },
                    {
                    displayName = "Pistol Ammo x1",
                    item = "ammo-9",
                    price = 12,
                    limit = 1,
                    inventory = true,                
                    }                
            },
        },
        {
            name = "Lab Equipment",
            open = 0,
            close = 24,
            hideOpeningTimes = false,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = true,
            sprite = 313,
            colour = 0,
            locations = {
                vector3(3537.53, 3662.56, 28.17)
            },
            items = {
                {
                    displayName = "Lab Equipment",
                    item = "labequipment",
                    price = 5000,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "Donut Shop",
            open = 8,
            close = 18,
            openDisplay = '8am',
            closeDisplay = '6pm',
            hideOpeningTimes = false,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = true,
            sprite = 355,
            colour = 34,
            locations = {
                vector3(-3052.35, 619.12, 7.58)
            },
            items = {
                {
                    displayName = "Fanta Exotic",
                    item = "fanta",
                    price = 5,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Pepsi",
                    item = "max",
                    price = 10,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Sprite",
                    item = "sprite",
                    price = 12,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Croissant",
                    item = "croissant",
                    price = 25,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Donut",
                    item = "donut",
                    price = 30,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "Donut Store",
            open = 8,
            close = 18,
            openDisplay = '8am',
            closeDisplay = '6pm',
            hideOpeningTimes = false,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = false,
            sprite = 355,
            colour = 34,
            locations = {
                vector3(-3054.22, 615.92, 7.58)
            },
            items = {
                {
                    displayName = "Fanta Exotic",
                    item = "fanta",
                    price = 5,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Pepsi",
                    item = "max",
                    price = 10,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Sprite",
                    item = "sprite",
                    price = 12,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Croissant",
                    item = "croissant",
                    price = 25,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Donut",
                    item = "donut",
                    price = 30,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "The Pig Pen",
            open = 6,
            close = 24,
            openDisplay = '6am',
            closeDisplay = '12pm',
            hideOpeningTimes = false,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = false,
            sprite = 468,
            colour = 41,
            locations = {
                vector3(377.6, -1079.22, 29.45)
            },
            items = {
                {
                    displayName = "Beer",
                    item = "beer",
                    price = 25,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Whiskey",
                    item = "whiskey",
                    price = 50,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Wine",
                    item = "wine",
                    price = 35,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Vodka",
                    item = "vodka",
                    price = 75,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "Black Woods Saloon",
            open = 6,
            close = 24,
            openDisplay = '6am',
            closeDisplay = '12pm',
            hideOpeningTimes = false,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = false,
            sprite = 93,
            colour = 0,
            locations = {
                vector3(-3021.08, -37.58, 10.11)
            },
            items = {
                {
                    displayName = "Beer",
                    item = "beer",
                    price = 25,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Whiskey",
                    item = "whiskey",
                    price = 50,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Wine",
                    item = "wine",
                    price = 35,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Vodka",
                    item = "vodka",
                    price = 75,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "~o~TeQui-La-La",
            open = 6,
            close = 24,
            openDisplay = '6am',
            closeDisplay = '12pm',
            hideOpeningTimes = false,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = false,
            sprite = 93,
            colour = 51,
            locations = {
                vector3(-560.14, 285.73, 82.18)
            },
            items = {
                {
                    displayName = "Beer",
                    item = "beer",
                    price = 25,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Whiskey",
                    item = "whiskey",
                    price = 50,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Wine",
                    item = "wine",
                    price = 35,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Vodka",
                    item = "vodka",
                    price = 75,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "Yellow Chack",
            open = 6,
            close = 24,
            openDisplay = '6am',
            closeDisplay = '12pm',
            hideOpeningTimes = false,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = false,
            sprite = 93,
            colour = 46,
            locations = {
                vector3(1986.75, 3053.26, 47.22)
            },
            items = {
                {
                    displayName = "Beer",
                    item = "beer",
                    price = 25,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Whiskey",
                    item = "whiskey",
                    price = 50,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Wine",
                    item = "wine",
                    price = 35,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Vodka",
                    item = "vodka",
                    price = 75,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "Black Market",
            open = 02,
            close = 08,
            hideOpeningTimes = true,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = true,
            sprite = 313,
            colour = 0,
            locations = {
                vector3(2806.45, 5978.9, 350.88)
            },
            items = {
                {
                    displayName = "RPG",
                    item = "weapon_rpg",
                    price = 50000,
                    limit = 5,
                    weapon = true,
                },
                {
                    displayName = "Shotgun Ammo",
                    item = "boxshot",
                    price = 500,
                    limit = 5,
                    inventory = true,
                },
                {
                    displayName = "SMG Ammo",
                    item = "boxsmg",
                    price = 500,
                    limit = 5,
                    inventory = true,
                }
            },
        }, 
        {
            name = "Black Market 2",
            open = 02,
            close = 08,
            hideOpeningTimes = true,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = true,
            sprite = 313,
            colour = 0,
            locations = {
                vector3(2806.45, 5978.9, 350.88)
            },
            items = {
                {
                    displayName = "RPG",
                    item = "weapon_rpg",
                    price = 50000,
                    limit = 5,
                    inventory = true,
                },
                {
                    displayName = "Shotgun Ammo",
                    item = "boxshot",
                    price = 500,
                    limit = 5,
                    inventory = true,
                },
                {
                    displayName = "SMG Ammo",
                    item = "boxsmg",
                    price = 500,
                    limit = 5,
                    inventory = true,
                }
            },
        },
        {
            name = "Smoke on the water",
            open = 0,
            close = 24,
            openDisplay = '8am',
            closeDisplay = '6pm',
            hideOpeningTimes = false,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = false,
            sprite = 496,
            colour = 25,
            locations = {
                vector3(-1171.92, -1572.07, 4.66)
            },
            items = {
                {
                    displayName = "Reseable bag",
                    item = "resealable_bag",
                    price = 15,
                    limit = 100,
                    inventory = true,
                },
                {
                    displayName = "Weed Trimmings",
                    item = "weed",
                    price = 100,
                    limit = 10,
                    inventory = true,
                },
            },
        },
        {
            name = "Parachute Shop",
            open = 6,
            close = 18,
            openDisplay = '8am',
            closeDisplay = '6pm',
            hideOpeningTimes = false,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = false,
            sprite = 550,
            colour = 0,
            locations = {
                vector3(-1121.36, -1647.48, 4.66)
            },
            items = {
                {
                    displayName = "Parachute",
                    item = "parachute",
                    price = 25,
                    limit = 5,
                    inventory = true,
                },
                {
                    displayName = "Weed Activ",
                    item = "weed_activ",
                    price = 5,
                    limit = 5,
                    inventory = true,
                },
            },
        },
        {
            name = "Salieri's",
            open = 0,
            close = 24,
            hideOpeningTimes = false,
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = false,
            sprite = 293,
            colour = 0,
            locations = {
                vector3(414.19, -1496.17, 30.16)
            },
            items = {
                {
                    displayName = "Beer",
                    item = "beer",
                    price = 15,
                    limit = 3,
                    inventory = true,
                },
                {
                    displayName = "Wine",
                    item = "wine",
                    price = 25,
                    limit = 3,
                    inventory = true,
                },
                {
                    displayName = "Vodka",
                    item = "vodka",
                    price = 28,
                    limit = 3,
                    inventory = true,
                },
                {
                    displayName = "Whiskey",
                    item = "whiskey",
                    price = 50,
                    limit = 3,
                    inventory = true,
                },
            },
        }, 
        {
            name = "24/7",
            open = 0,
            close = 24,
            openDisplay = '24/7',
            closeDisplay = '24/7',
            bannerDict = "shopui_title_conveniencestore",
            bannerTex = "shopui_title_conveniencestore",
            hideTitle = true,
            sprite = 52,
            colour = 0,
            locations = {
                {x = 373.875,   y = 325.896,  z = 102.566},
                {x = 2557.458,  y = 382.282,  z = 107.622},
                {x = -3038.939, y = 585.954,  z = 6.908},
                {x = 292.44, y = -1270.82,  z = 29.52},
                {x = -3241.927, y = 1001.462, z = 11.830},
                {x = 547.431,   y = 2671.710, z = 41.156},
                {x = 1961.464,  y = 3740.672, z = 31.343},
                {x = 2678.916,  y = 3280.671, z = 54.241},
                {x = 168.47,  y = -1548.57, z = 29.26},
                {x = -536.31,  y = -1221.34, z = 18.45},
                {x = -2540.81,  y = 2313.85, z = 33.41},
                {x = 161.41,  y = 6640.7, z = 31.71},
                {x = 25.723,   y = -1346.966, z = 28.497},
                {x = 1729.216,  y = 6414.131, z = 34.037}
            },
            items = {
                {
                    displayName = "Beer",
                    item = "beer",
                    price = 15,
                    limit = 3,
                    inventory = true,
                },
                {
                    displayName = "Painkiller",
                    item = "painkiller",
                    price = 70,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "7up",
                    item = "7up",
                    price = 15,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Bread",
                    item = "bread",
                    price = 25,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Apple",
                    item = "apple",
                    price = 8,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Banana",
                    item = "banana",
                    price = 9,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Orange",
                    item = "orange",
                    price = 15,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Carrot",
                    item = "carrot",
                    price = 20,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Dr. Pepper",
                    item = "drpepper",
                    price = 30,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Milkyway",
                    item = "milkyway",
                    price = 30,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Mars",
                    item = "mars",
                    price = 25,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Bount",
                    item = "bounty",
                    price = 23,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Lipton",
                    item = "lipton",
                    price = 25,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Twix",
                    item = "twix",
                    price = 8,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Croissant",
                    item = "croissant",
                    price = 13,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Snickers",
                    item = "snickers",
                    price = 15,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Fanta",
                    item = "fanta",
                    price = 9,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Sprite",
                    item = "sprite",
                    price = 10,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Bandage",
                    item = "bandage",
                    price = 70,
                    limit = 4,
                    inventory = true,
                }                
            },
        },
        {
            name = "Locksmith", 
            open = 6,
            close = 18,
            openDisplay = '6am',
            closeDisplay = '6pm',
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            sprite = 446,
            colour = 1,
            locations = {
                {x = 170.05,   y = -1799.47,  z = 29.32}
            },
            items = {                
                {
                    displayName = "Lockpick",
                    item = "lockpick",
                    price = 50,
                    limit = 5,
                    inventory = true,
                },
                {
                    displayName = "Crowbar",
                    item = "WEAPON_CROWBAR",
                    price = 450,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "~y~Fruit Shop", 
            open = 6,
            close = 20,
            openDisplay = '6am',
            closeDisplay = '6pm',
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            sprite = 366,
            colour = 9,
            locations = {
                {x = -1531.59,   y = -442.04,  z = 35.44}
            },
            items = {                
                {
                    displayName = "Apple",
                    item = "apple",
                    price = 15,
                    limit = 5,
                    inventory = true,
                },
                {
                    displayName = "Orange",
                    item = "orange",
                    price = 25,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Carrot",
                    item = "carrot",
                    price = 15,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Banana",
                    item = "banana",
                    price = 20,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "YouTool",
            open = 6,
            close = 18,
            openDisplay = '6am',
            closeDisplay = '6pm',
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            sprite = 566,
            colour = 1,
            locations = {
                {x = 2747.35,   y = 3473.16,  z = 55.67}
            },
            items = {               
                {
                    displayName = "Petrol",
                    item = "petrol",
                    price = 250,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Hammer (Drug Used)",
                    item = "hammer",
                    price = 300,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Hammer (Weapon)",
                    item = "WEAPON_HAMMER",
                    price = 300,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Pickaxe",
                    item = "WEAPON_BAT",
                    price = 300,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Hatchet",
                    item = "WEAPON_HATCHET",
                    price = 300,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Paint Thinner",
                    item = "paint_thinner",
                    price = 300,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Drain Cleaner",
                    item = "draincleaner",
                    price = 400,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Crowbar",
                    item = "WEAPON_CROWBAR",
                    price = 450,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Respirator Mask",
                    item = "respiratormask",
                    price = 450,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Repair kit",
                    item = "repairkit",
                    price = 500,
                    limit = 2,
                    inventory = true,
                },
                {
                    displayName = "Spare Wheel",
                    item = "tyrekit",
                    price = 500,
                    limit = 2,
                    inventory = true,
                },
                {
                    displayName = "Car Battery",
                    item = "battery",
                    price = 500,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Drill",
                    item = "drill",
                    price = 2000,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "~g~YouTool",
            open = 6,
            close = 18,
            openDisplay = '6am',
            closeDisplay = '6pm',
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = true,
            sprite = 446,
            colour = 1,
            locations = {
                {x = 2743.67,   y = 3471.55,  z = 55.7}
            },
            items = {               
                {
                    displayName = "Petrol",
                    item = "petrol",
                    price = 250,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Hammer",
                    item = "WEAPON_HAMMER",
                    price = 300,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Paint Thinner",
                    item = "paint_thinner",
                    price = 300,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Drain Cleaner",
                    item = "draincleaner",
                    price = 400,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Crowbar",
                    item = "WEAPON_CROWBAR",
                    price = 450,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Repair kit",
                    item = "repairkit",
                    price = 500,
                    limit = 2,
                    inventory = true,
                },
                {
                    displayName = "Spare Wheel",
                    item = "tyrekit",
                    price = 500,
                    limit = 2,
                    inventory = true,
                },
                {
                    displayName = "Car Battery",
                    item = "battery",
                    price = 500,
                    limit = 1,
                    inventory = true,
                },
                {
                    displayName = "Drill",
                    item = "drill",
                    price = 2000,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "Robs Liquor",
            open = 8,
            close = 20,
            openDisplay = '8am',
            closeDisplay = '8pm',
            bannerDict = "shopui_title_liquorstore2",
            bannerTex = "shopui_title_liquorstore2",
            hideTitle = true,
            sprite = 52,
            color = 0,
            locations = {
                {x = 1135.808,  y = -982.281,  z = 45.415},
                {x = -1222.915, y = -906.983,  z = 11.326},
                {x = -1487.553, y = -379.107,  z = 39.163},
                {x = -2968.243, y = 390.910,   z = 14.043},
                {x = 1166.024,  y = 2708.930,  z = 37.157},
                {x = 1392.562,  y = 3604.684,  z = 33.980}, 
                {x = -160.34,  y = 6322.73, z = 31.6}
            },
            items = {
                {
                    displayName = "Beer",
                    item = "beer",
                    price = 15,
                    limit = 3,
                    inventory = true,
                },
                {
                    displayName = "Vodka",
                    item = "vodka",
                    price = 20,
                    limit = 5,
                    inventory = true,
                },
                {
                    displayName = "Painkiller",
                    item = "painkiller",
                    price = 50,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Bandage",
                    item = "bandage",
                    price = 70,
                    limit = 4,
                    inventory = true,
                }
            },
        },
        {
            name = "Mega Mall",
            open = 9,
            close = 18,
            openDisplay = '9am',
            closeDisplay = '6pm',
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            sprite = 605,
            colour = 46,
            locations = {
                {x = 46.54,   y = -1749.83,  z = 29.63}
            },
            items = {                
                {
                    displayName = "Beer",
                    item = "beer",
                    price = 15,
                    limit = 3,
                    inventory = true,
                }, 
                {
                    displayName = "Painkiller",
                    item = "painkiller",
                    price = 50,
                    limit = 8,
                    inventory = true,
                },
                {
                    displayName = "Bandage",
                    item = "bandage",
                    price = 70,
                    limit = 4,
                    inventory = true,
                },
                {
                    displayName = "Rolling Paper",
                    item = "rollingpaper",
                    price = 5,
                    limit = 4,
                    inventory = true,
                },
                {
                    displayName = "Fishing Bait",
                    item = "fishbait",
                    price = 25,
                    limit = 4,
                    inventory = true,
                },
                {
                    displayName = "Fishing Rod",
                    item = "fishingrod",
                    price = 500,
                    limit = 4,
                    inventory = true,
                },
                {
                    displayName = "Baking Tray",
                    item = "baking_tray",
                    price = 500,
                    limit = 4,
                    inventory = true,
                },
                {
                    displayName = "Phone",
                    item = "phone",
                    price = 250,
                    limit = 1,
                    inventory = true,
                }
            },
        },
        {
            name = "Mega Mall V2",
            open = 8,
            close = 18,
            openDisplay = '8am',
            closeDisplay = '6pm',
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            sprite = 605,
            colour = 46,
            locations = {
                {x = -58.3,   y = 6522.83,  z = 31.49}
            },
            items = {                
                {
                    displayName = "Beer",
                    item = "beer",
                    price = 15,
                    limit = 3,
                    inventory = true,
                },
                {
                    displayName = "Vodka",
                    item = "vodka",
                    price = 25,
                    limit = 3,
                    inventory = true,
                },
                {
                    displayName = "Bandage",
                    item = "bandage",
                    price = 30,
                    limit = 3,
                    inventory = true,
                },
                {
                    displayName = "Painkiller",
                    item = "painkiller",
                    price = 50,
                    limit = 3,
                    inventory = true,
                },
                {
                    displayName = "Phone",
                    item = "phone",
                    price = 250,
                    limit = 3,
                    inventory = true,
                },
                {
                    displayName = "Gps",
                    item = "gps",
                    price = 450,
                    limit = 5,
                    inventory = true,
                }
            },
        },
        {
            name = "Digital Den",
            open = 8,
            close = 18,
            openDisplay = '8am',
            closeDisplay = '6pm',
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            sprite = 459,
            colour = 40,
            locations = {
                {x = -1528.98, y = -404.04, z = 35.64}
            },
            items = {                
                {
                    displayName = "Phone",
                    item = "phone",
                    price = 300,
                    limit = 3,
                    inventory = true,
                },
                {
                    displayName = "GPS",
                    item = "gps",
                    price = 300,
                    limit = 3,
                    inventory = true,
                },
            },
        },
        {
            name = "~r~Reception",
            open = 0,
            close = 24,
            openDisplay = '24/7',
            closeDisplay = '24/7',
            bannerDict = "Custom_Menu_Head",
            bannerTex = "Custom_Menu_Head",
            hideBlip = true,
            locations = {
                {x = 312.27, y = -592.65, z = 43.28}
            },
            items = {
                {
                    displayName = "Painkiller",
                    item = "painkiller",
                    price = 30,
                    limit = 8,
                    inventory = true,
                },                
                {
                    displayName = "Bandage",
                    item = "bandage",
                    price = 50,
                    limit = 4,
                    inventory = true,
            
                },
            },
        },
    },
}