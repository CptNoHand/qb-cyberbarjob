Config = {}

Config.SQL = 'oxmysql' --- oxmysql or ghmattisql

--if u are not using qb-target uncomment this.

--[[Config.Locations = {
     ["duty"] = {
         [1] = vector4(324.07, -926.69, 29.25, 99.09),
     },    
     ["tray1"] = {
         [1] = vector4(338.53, -912.01, 29.26, 265.24),
     },
     ["tray2"] = {
         [1] = vector4(333.43, -908.87, 29.26, 89.85),
     }, 
     ["pumps"] = {
         [1] = vector4(338.21, -910.06, 29.26, 271.27),
         [2] = vector4(333.55, -910.36, 29.26, 98.42),
     },
     ["mixer"] = {
         [1] = vector4(337.47, -914.49, 29.26, 247.69),
     },    
     ["fridge"] = {
         [1] = vector4(335.74, -915.11, 29.26, 181.81),
     },      
     ["storage"] = { -- if not using the storage comment this out (uncomment in menu.lua if using)
         [1] = vector4(0 , 0 , 0, 0),
     },
     ["cashregister"] = {
         [1] = vector4(334.22, -914.15, 29.26, 89.78),
     },
  }]]


Config.Items = {
label = "Shop",
    slots = 7,
    items = {
        [1] = {
            name = "pintglass",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "smallglass",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "wineglass",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "cocktailglass",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "crisps",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
    }
}
