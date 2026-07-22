local fishing = {}

local equipment = require('modules.equipment')

local data = {
    skill = 0,
    rod = 'None',
    bait = 'None'
}

function fishing.update()

    local mem = AshitaCore:GetMemoryManager()
    if mem == nil then
        return
    end

    local player = mem:GetPlayer()
    if player == nil then
        return
    end

    local craftSkill = player:GetCraftSkill(0)

    if craftSkill ~= nil then
        data.skill = craftSkill:GetSkill() or 0
    end

    local gear = equipment.getInfo()

    data.rod = (gear.range and gear.range.name) or 'None'
    data.bait = (gear.ammo and gear.ammo.name) or 'None'

end

function fishing.getInfo()
    fishing.update()
    return data
end

return fishing