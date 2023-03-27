
-- function OnModPreInit() 
-- end

-- function OnModInit() 
-- end

-- function OnModPostInit() 
-- end

-- function OnPlayerDied( player_entity ) 
-- end

-- function OnWorldInitialized() 
-- end

-- function OnWorldPreUpdate() 
-- end



-- function OnBiomeConfigLoaded() 
-- end

-- function OnMagicNumbersAndWorldSeedInitialized() 
-- end

-- function OnPausedChanged( is_paused, is_inventory_pause ) 
-- end

-- function OnModSettingsChanged() 
-- end

-- function OnPausePreUpdate() 
-- end
ModMaterialsFileAdd("mods/LiquidSisu/files/materials/material.xml")
ModLuaFileAppend("data/scripts/status_effects/status_list.lua", "mods/LiquidSisu/files/scripts/add_status_effect.lua")

function OnPlayerSpawned( player_entity )
    local arr = EntityGetAllChildren( player_entity );
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
end