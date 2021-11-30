# qb-cyberbarjob
Enables Patoche's Cyberbar to have employee's.

## Dependencies  ##
[QBCore](https://github.com/qbcore-framework/qb-core)

[nh-context](https://github.com/nerohiro/nh-context)

[nh-keyboard](https://github.com/nerohiro/nh-keyboard)

## Optional ##
[qb-target](https://github.com/BerkieBb/qb-target)

If not using qb-target 
 - Rename menus.lua to menus-target.lua
 - Rename menus-notarget.lua to menus.lua
 - Uncomment the Config.Locations in config.lua

## Map ##
[Patoche](https://patoche-mapping.com/blog/) - [Cyberbar 2.0](https://www.gta5-mods.com/maps/mlo-cyber-bar-fivem-sp)

## Credit ##
Credit all goes to these people as if it wasn't for them I wouldn't have been able to get this script to work.

Original Creator [DrBlackBeard095](https://github.com/DrBlackBeard095) of [qb-burgershot](https://github.com/DrBlackBeard095/Qb-Burgershot)

Forked from [heyjeay](https://github.com/heyjeay) [qb-tequilala](https://github.com/heyjeay/qb-tequilala)

## Key Features ##
 - For qb-target or non qb-target servers
 - Employees for the Cyberbar
 - Pouring of Drinks
 - Mixing of drinks
 - Fridge for drinks
 - Billing system

## To Setup ##

qb-core/shared.lua
```
    -- Cyberbar Drinks
    ["patochebeer"]                  = {["name"] = "patochebeer",                   ["label"] = "Patoche Beer",             ["weight"] = 250,       ["type"] = "item",      ["image"] = "patochebeer.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cyber Bar Is The Best."}, 
    ["milkdragon"]                   = {["name"] = "milkdragon",                    ["label"] = "Milk Dragon",              ["weight"] = 250,       ["type"] = "item",      ["image"] = "milkdragon.png",           ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cyber Bar Is The Best."}, 
    ["duffbeer"]                     = {["name"] = "duffbeer",                      ["label"] = "Duff Beer",                ["weight"] = 250,       ["type"] = "item",      ["image"] = "duffbeer.png",             ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cyber Bar Is The Best."}, 
    ["hulkcocktail"]                 = {["name"] = "hulkcocktail",                  ["label"] = "Hulk Cocktail",            ["weight"] = 250,       ["type"] = "item",      ["image"] = "hulkcocktail.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cyber Bar Is The Best."}, 
    ["marvelcocktail"]               = {["name"] = "marvelcocktail",                ["label"] = "Marvel Cocktail",          ["weight"] = 250,       ["type"] = "item",      ["image"] = "marvelcocktail.png",       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cyber Bar Is The Best."}, 
    ["yoshishooter"]                 = {["name"] = "yoshishooter",                  ["label"] = "Yoshi Shooter",            ["weight"] = 250,       ["type"] = "item",      ["image"] = "yoshishooter.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cyber Bar Is The Best."},
    
    -- Cyberbar Food
    ["crisps"]                       = {["name"] = "crisps",                        ["label"] = "Chips",                    ["weight"] = 250,       ["type"] = "item",      ["image"] = "crisps.png",               ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Hmmm nice."}, 

    -- Cyberbar Ingrediants
    ["pintglass"]                    = {["name"] = "pintglass",                     ["label"] = "Pint Glass",               ["weight"] = 500,       ["type"] = "item",      ["image"] = "pintglass.png",            ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A glass for beer"},
    ["smallglass"]                   = {["name"] = "smallglass",                    ["label"] = "Small Glass",              ["weight"] = 500,       ["type"] = "item",      ["image"] = "smallglass.png",           ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A small glass"},
    ["wineglass"]                    = {["name"] = "wineglass",                     ["label"] = "Wine Glass",               ["weight"] = 500,       ["type"] = "item",      ["image"] = "wineglass.png",            ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A glass for wine"},
    ["cocktailglass"]                = {["name"] = "cocktailglass",                 ["label"] = "Cocktail Glass",           ["weight"] = 500,       ["type"] = "item",      ["image"] = "cocktailglass.png",        ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A glass for cock... tails"},

```
```
["cyberbar"] = {
        label = "Cyberbar",
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = "DJ",
                payment = 50
            },
            ['1'] = {
                name = "Bartender",
                payment = 75
            },
            ['2'] = {
                name = "Bouncer",
                payment = 100
            },
            ['3'] = {
                name = "Manager",
                payment = 125
            },
            ['4'] = {
                name = "Owner",
                isboss = true,
                payment = 150
            },
        },
    },

``` 

qb-bossmenu/config.lua

```
['Cyberbar'] = vector3(0, 0, 0) -- will configure soon
```

qb-smallresources/config.lua  -- Regen Amounts for hunger and thirst
```
    -- Cyberbar Drinks
    ["milkdragon"] = math.random(5, 15),
    ["hulkcocktail"] = math.random(5, 15),
    ["marvelcocktail"] = math.random(5, 15),
    ["yoshishooter"] = math.random(5, 15),
    ["patochebeer"] = math.random(5, 15),
    ["duffbeer"] = math.random(5, 15),
    -- Cyberbar Food
    ["crisps"] = math.random(10, 20),
```

qb-smallresources/client/consumables.lua  - Shouldn't need if added with another resource  
```
-- Cyberbar
-- Drinking a Cocktail

RegisterNetEvent("consumables:client:DrinkCock")
AddEventHandler("consumables:client:DrinkCock", function(itemName)
    Citizen.Wait(1500)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar("snort_coke", "Drinking cocktail..", math.random(3000, 6000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + Consumeables[itemName])
        alcoholCount = alcoholCount + 2
        if alcoholCount > 1 and alcoholCount < 4 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 600)
        elseif alcoholCount >= 4 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 600)
            Effectdrunk()
            -- print("This should start the drunk effect")
        end
        
    end, function() -- Cancel
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify("Cancelled..", "error")
    end)
end)

-- Cyberbar
-- Drinking a Beer

RegisterNetEvent("consumables:client:DrinkBeer")
AddEventHandler("consumables:client:DrinkBeer", function(itemName)
    Citizen.Wait(1500)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    local playerPed = PlayerPedId()
    local prop_name = 'prop_beer_pissh'
    local x,y,z = table.unpack(GetEntityCoords(playerPed))
    local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
    local boneIndex = GetPedBoneIndex(playerPed, 18905)

    if not action then
        AttachEntityToEntity(prop, playerPed, boneIndex, 0.02, -0.20, 0.10, 240.0, -60.0, 0.0, true, true, false, true, 1, true)
    else
        DeleteObject(prop)
    end

    action = true
    QBCore.Functions.Progressbar("drink_something", "Drinking Beer...", 3500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        DeleteObject(prop)    
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + Consumeables[itemName])
        action = false
        alcoholCount = alcoholCount + 2
        if alcoholCount > 1 and alcoholCount < 4 then
            TriggerEvent("evidence:client:SetStatus", "alcohol", 600)
        elseif alcoholCount >= 4 then
            TriggerEvent("evidence:client:SetStatus", "heavyalcohol", 600)
            Effectdrunk()
        end
    end)

end)
```

qb-smallresources/server/consumables.lua
```
-- Cyberbar Drinks
QBCore.Functions.CreateUseableItem("milkdragon", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkCock", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("hulkcocktail", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkCock", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("marvelcocktail", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkCock", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("yoshishooter", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkCock", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("patochebeer", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkBeer", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("duffbeer", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkBeer", source, item.name)
    end
end)



-- Cyberbar Food
QBCore.Functions.CreateUseableItem("crisps", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)
```

## Please enjoy and have FUN!! ##


----------------------------------------
# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>

License is the same due to it being MADE FOR QBCore
