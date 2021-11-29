local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = true
PlayerJob = {}

local onDuty = false

function DrawText3Ds(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "cyberbar" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

--[[Citizen.CreateThread(function() -- Commented out by McKlean
    cyberbar = AddBlipForCoord(-1197.32, -897.655, 13.995)
    SetBlipSprite (cyberbar, 106)
    SetBlipDisplay(cyberbar, 4)
    SetBlipScale  (cyberbar, 0.5)
    SetBlipAsShortRange(cyberbar, true)
    SetBlipColour(cyberbar, 75)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("cyberbar")
    EndTextCommandSetBlipName(cyberbar)
end)]]

RegisterNetEvent("qb-cyberbarjob:Duty")
AddEventHandler("qb-cyberbarjob:Duty", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("qb-cyberbarjob:Tray1")
AddEventHandler("qb-cyberbarjob:Tray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pickupcyberbar")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pickupcyberbar", {
        maxweight = 20000,
        slots = 5,
    })
end)

RegisterNetEvent("qb-cyberbarjob:Tray2")
AddEventHandler("qb-cyberbarjob:Tray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "pickupcyberbar2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "pickupcyberbar2", {
        maxweight = 20000,
        slots = 5,
    })
end)

RegisterNetEvent("qb-cyberbarjob:Storage")
AddEventHandler("qb-cyberbarjob:Storage", function()
    TriggerEvent("inventory:client:SetCurrentStash", "cyberbarstash")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "cyberbarstash", {
        maxweight = 750000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-cyberbarjob:Storage2")
AddEventHandler("qb-cyberbarjob:Storage2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "cyberbarfridge")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "cyberbarfridge", {
        maxweight = 750000,
        slots = 40,
    })
end)

-- Drink Creations
RegisterNetEvent("qb-cyberbarjob:PatocheBeer")
AddEventHandler("qb-cyberbarjob:PatocheBeer", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakePatocheBeer()
        else
            QBCore.Functions.Notify("You don't have a Pint Glass..", "error")
        end
      end, 'pintglass')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-cyberbarjob:DuffBeer")
AddEventHandler("qb-cyberbarjob:DuffBeer", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeDuffBeer()
        else
            QBCore.Functions.Notify("You don't have a Pint Glass..", "error")
        end
      end, 'pintglass')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-cyberbarjob:hulkcocktail")
AddEventHandler("qb-cyberbarjob:hulkcocktail", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           Makehulkcocktail()
        else
            QBCore.Functions.Notify("You don't have a Small Glass..", "error")
        end
      end, 'smallglass')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)


RegisterNetEvent("qb-cyberbarjob:milkdragon")
AddEventHandler("qb-cyberbarjob:milkdragon", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           Makemilkdragon()
        else
            QBCore.Functions.Notify("You don't have a Small Glass..", "error")
        end
      end, 'smallglass')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-cyberbarjob:marvelcocktail")
AddEventHandler("qb-cyberbarjob:marvelcocktail", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           Makemarvelcocktail()
        else
            QBCore.Functions.Notify("You don't have a Cocktail Glass..", "error")
        end
      end, 'cocktailglass')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-cyberbarjob:yoshishooter")
AddEventHandler("qb-cyberbarjob:yoshishooter", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           Makeyoshishooter()
        else
            QBCore.Functions.Notify("You don't have a Cocktail Glass..", "error")
        end
      end, 'cocktailglass')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

-- Functions --
function MakePatocheBeer()
    TriggerServerEvent('QBCore:Server:RemoveItem', "pintglass", 1)
    QBCore.Functions.Progressbar("pickup", "Pouring Pint...", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    },{
        animDict = "amb@world_human_drinking_fat@coffee@female@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_pint_glass_tall",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    } 
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "patochebeer", 1)
    --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["patochebeer"], "add")
    QBCore.Functions.Notify("You poured a pint", "success")
end  


function MakeDuffBeer()
    TriggerServerEvent('QBCore:Server:RemoveItem', "pintglass", 1)
    QBCore.Functions.Progressbar("pickup", "Pouring Pint...", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    },{
        animDict = "amb@world_human_drinking_fat@coffee@female@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_pint_glass_tall",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    } 
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "duffbeer", 1)
    --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["duffbeer"], "add")
    QBCore.Functions.Notify("You poured a pint", "success")
end

function Makehulkcocktail()
    TriggerServerEvent('QBCore:Server:RemoveItem', "smallglass", 1)
    QBCore.Functions.Progressbar("pickup", "Mixing Cocktail...", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    },{
        animDict = "anim@amb@clubhouse@bar@drink@one",
        anim = "one_bartender",
        flags = 8,
    }, {
        model = "prop_shot_glass",
        bone = 60309,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    }, {
        model = "prop_cs_whiskey_bottle",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    } 
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "hulkcocktail", 1)
    --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hulkcocktail"], "add")
    QBCore.Functions.Notify("You made a cocktail", "success")
end

function Makemilkdragon()
    TriggerServerEvent('QBCore:Server:RemoveItem', "smallglass", 1)
    QBCore.Functions.Progressbar("pickup", "Mixing Cocktail...", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    },{
        animDict = "anim@amb@clubhouse@bar@drink@one",
        anim = "one_bartender",
        flags = 8,
    }, {
        model = "prop_shot_glass",
        bone = 60309,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    }, {
        model = "prop_cs_whiskey_bottle",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    } 
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "milkdragon", 1)
    --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["milkdragon"], "add")
    QBCore.Functions.Notify("You made a cocktail", "success")
end

function Makemarvelcocktail()
    TriggerServerEvent('QBCore:Server:RemoveItem', "cocktailglass", 1)
    QBCore.Functions.Progressbar("pickup", "Mixing Cocktail...", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    },{
        animDict = "anim@amb@clubhouse@bar@drink@one",
        anim = "one_bartender",
        flags = 8,
    }, {
        model = "prop_shot_glass",
        bone = 60309,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    }, {
        model = "prop_cs_whiskey_bottle",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    } 
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "marvelcocktail", 1)
    --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["marvelcocktail"], "add")
    QBCore.Functions.Notify("You made a cocktail", "success")
end

function Makeyoshishooter()
    TriggerServerEvent('QBCore:Server:RemoveItem', "cocktailglass", 1)
    QBCore.Functions.Progressbar("pickup", "Mixing Cocktail...", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    },{
        animDict = "anim@amb@clubhouse@bar@drink@one",
        anim = "one_bartender",
        flags = 8,
    }, {
        model = "prop_shot_glass",
        bone = 60309,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    }, {
        model = "prop_cs_whiskey_bottle",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    } 
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "yoshishooter", 1)
    --TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["yoshishooter"], "add")
    QBCore.Functions.Notify("You made a cocktail", "success")
end


-- Shop --   
RegisterNetEvent("qb-cyberbarjob:shop")
AddEventHandler("qb-cyberbarjob:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "cyberbar", Config.Items)
end)
