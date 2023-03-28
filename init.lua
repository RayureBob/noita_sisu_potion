ModMaterialsFileAdd("mods/LiquidSisu/files/materials/material.xml")
ModLuaFileAppend("data/scripts/status_effects/status_list.lua", "mods/LiquidSisu/files/scripts/add_status_effect.lua")

local gui
local player

function OnPlayerSpawned( player_entity )
    player = player_entity
    local arr = EntityGetAllChildren( player );
    local inventory_quick

    for i=1, #arr, 1 do
        if EntityGetName(arr[i]) == "inventory_quick" then
            inventory_quick = arr[i]
            break
        end
    end
    local new_potion = EntityCreateNew()
    
    EntityLoadToEntity( "mods/LiquidSisu/files/entities/sisu_potion.xml", new_potion)
    EntityAddChild( inventory_quick, new_potion)
    gui = GuiCreate()
end

function OnWorldPostUpdate()
    GuiStartFrame(gui)
    if GuiButton(gui, 0, 5, 0, "debug damages") then
        EntityInflictDamage(player, 1, "DAMAGE_MELEE", "debug damages", "BLOOD_EXPLOSION", 0, 0, player)
    end
end