dofile_once("data/scripts/lib/coroutines.lua")

function init(effect)
    async(function() 
        wait(0)
        local parent = EntityGetParent(effect)
        EntityAddComponent2(parent, "LuaComponent", 
        {
            script_wand_fired = "mods/LiquidSisu/files/scripts/wand_shot.lua"
        })
    end)
end