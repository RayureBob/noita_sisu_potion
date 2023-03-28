dofile_once("data/scripts/lib/coroutines.lua")

--[ This could be done with a less complicated solution, but I like coroutines :) ]--
function init(effect)
    async(function() 
        wait(0)
        local parent = EntityGetParent(GetUpdatedEntityID())
        local comp = EntityAddComponent2(parent, "LuaComponent", 
        {
            script_damage_received = "mods/LiquidSisu/files/scripts/damage_received.lua"
        })

        local storage = EntityGetFirstComponent(GetUpdatedEntityID(), "VariableStorageComponent")
        storage.value_int = comp
    end)
end