-- target

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("cyberbarDuty", vector3(323.19, -927.0, 30.05), 1.0, 1.2, {
        name = "cyberbarDuty",
        heading = 32,
        debugPoly = false,
        minZ=28.9,
        maxZ=29.5,
    }, {
        options = {
            {  
                event = "qb-cyberbarjob:Duty",
                icon = "far fa-clipboard",
                label = "Clock On/Off",
                job = "cyberbar",
            },
        },
        distance = 1.5
    })

	exports['qb-target']:AddBoxZone("cyberbar_tray_1", vector3(338.75, -911.92, 29.26), 1.05, 0.5, {
        name = "cyberbar_tray_1",
        heading = 10,
        debugPoly = false,
        minZ=28.9,
        maxZ=29.5,
    }, {
        options = {
            {
                event = "qb-cyberbarjob:Tray1",
                icon = "far fa-clipboard",
                label = "Pick Up Order",
            },
        },
        distance = 2.5
    })

	exports['qb-target']:AddBoxZone("cyberbar_tray_2", vector3(333.19, -909.12, 30.35), 1.05, 0.5, {
        name = "cyberbar_tray_2",
        heading = 25,
        debugPoly = false,
        minZ=28.9,
        maxZ=29.5,
    }, {
        options = {
            {
                event = "qb-cyberbarjob:Tray2",
                icon = "far fa-clipboard",
                label = "Pick Up Order",
            },
        },
        distance = 2.5
    })

	exports['qb-target']:AddBoxZone("cyberbarpump", vector3(338.26, -909.95, 30.06), 1.05, 0.7, {
        name ="cyberbarpump",
        heading = 10,
        debugPoly = false,
        minZ=28.6,
        maxZ=29.5,
    }, {
        options = {
            {
                event = "nh-context:BeerMenu",
                icon = "fas fa-filter",
                label = "Pour a Pint",
                job = "cyberbar",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("cyberbarpump2", vector3(333.28, -910.37, 29.26), 1.05, 0.5, { 
        name ="cyberbarpump2",
        heading = 34,
        debugPoly = false,
        minZ=28.9,
        maxZ=29.5,
    }, {
        options = {
            {
                event = "nh-context:BeerMenu",
                icon = "fas fa-filter",
                label = "Pour a Pint",
                job = "cyberbar",
            },
        },
        distance = 1.5
    })

	exports['qb-target']:AddBoxZone("cyberbarmixer", vector3(338.35, -914.68, 30.4), 1.05, 0.5, {
		name ="cyberbarmixer",
		heading = 10,
		debugPoly = false,
		minZ=28.1,
        maxZ=29.5,
	}, {
	    options = {
			{
    		    event = "nh-context:MixerMenu",
    		    icon = "fas fa-box",
    		    label = "Make Cocktails",
    		    job = "cyberbar",
			},
	    },
	    distance = 2.5
	})

    exports['qb-target']:AddBoxZone("cyberbarfridge", vector3(335.32, -915.88, 30.06), 1.05, 1.0, {
        name ="cyberbarfridge",
        heading = 25,
        debugPoly = false,
        minZ=28.1,
        maxZ=29.1,
    }, {
        options = {
            {
                event = "nh-context:cyberbarMenu",
                icon = "fas fa-laptop",
                label = "Buy Items Or Check Storage!",
                job = "cyberbar",
            },
        },
        distance = 2.5
    })

    --[[exports['qb-target']:AddBoxZone("cyberbarstorage", vector3(323.59, -925.82, 29.1), 1.05, 0.5, {
        name ="cyberbarstorage",
        heading = 10,
        debugPoly = false,
        minZ=28.2,
        maxZ=29.9,
    }, {
        options = {
            {
                event = "qb-cyberbarjob:Storage",
                icon = "fas fa-box",
                label = "Storage",
                job = "cyberbar",
            },
        },
        distance = 1.5
    })]]


    exports['qb-target']:AddBoxZone("craftcyber", vector3(-1197.57, -899.41, 14.0), 1.8, 0.7, {
        name ="craftcyber",
        heading = 304,
        debugPoly = false,
        minZ=28.9,
        maxZ=29.5,
    }, {
        options = {
            {
                event = "nh-context:cybers",
                icon = "fas fa-cheesecyber",
                label = "cyber Work Station",
                job = "cyberbar",
            },
        },
        distance = 1.5
    })


    exports['qb-target']:AddBoxZone("cyberbar_register_1", vector3(333.7, -914.08, 30.15), 0.5, 0.4, {
        name ="cyberbar_register_1",
        heading = 125,
        debugPoly = false,
        minZ=28.9,
        maxZ=29.5,
    }, {
        options = {
            {
                event = "qb-cyberbarjob:bill",
                parms = "1",
                icon = "fas fa-credit-card",
                label = "Charge Customer",
                job = "cyberbar",
            },
        },
        distance = 1.5
    })

end)


-- NH - Context --

RegisterNetEvent('nh-context:cyberbarMenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Fridge |",
            txt = "",
        },
        {
            id = 1,
            header = "• Order Items",
            txt = "Buy items from the shop!",
            params = {
                event = "qb-cyberbarjob:shop"
            }
        },
        {
            id = 2,
            header = "• Open Fridge",
            txt = "See what you have in storage",
            params = {
                event = "qb-cyberbarjob:Storage2"
            }
        },
        {
            id = 3,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)

RegisterNetEvent('nh-context:BeerMenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Beer Menu |",
            txt = "",
        },
        {
            id = 1,
            header = "• Patoche Beer",
            txt = "Pint Glass",
            params = {
                event = "qb-cyberbarjob:PatocheBeer"
            }
        },
        {
            id = 2,
            header = "• Duff Beer",
            txt = "Pint Glass",
            params = {
                event = "qb-cyberbarjob:DuffBeer"
            }
        },
        {
            id = 3,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)

RegisterNetEvent('nh-context:MixerMenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Mixer Menu |",
            txt = "",
        },
        {
            id = 1,
            header = "• Hulk Cocktail",
            txt = "Small Glass",
            params = {
                event = "qb-cyberbarjob:hulkcocktail"
            }
        },
        {
            id = 2,
            header = "• Milk Dragon",
            txt = "Small Glass",
            params = {
                event = "qb-cyberbarjob:milkdragon"
            }
        },
        {
            id = 3,
            header = "• Marvel Cocktail",
            txt = "Cocktail Glass",
            params = {
                event = "qb-cyberbarjob:marvelcocktail"
            }
        },
        {
            id = 4,
            header = "• Yoshi Shooter",
            txt = "Cocktail Glass",
            params = {
                event = "qb-cyberbarjob:yoshishooter"
            }
        },
        {
            id = 5,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)


-- Register Stuff --
RegisterNetEvent("qb-cyberbarjob:bill")
AddEventHandler("qb-cyberbarjob:bill", function()
    local bill = exports["nh-keyboard"]:KeyboardInput({
        header = "Create Receipt",
        rows = {
            {
                id = 0,
                txt = "PayPal Number"
            },
            {
                id = 1,
                txt = "Amount"
            }
        }
    })
    if bill ~= nil then
        if bill[1].input == nil or bill[2].input == nil then 
            return 
        end
        TriggerServerEvent("qb-cyberbarjob:bill:player", bill[1].input, bill[2].input)
    end
end)