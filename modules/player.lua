local player = {}

local data = {
    name = '',
    mainJob = '',
    mainLevel = 0,
    subJob = '',
    subLevel = 0,
    zone = '',
}

local jobNames = {
    [1] = 'WAR',
    [2] = 'MNK',
    [3] = 'WHM',
    [4] = 'BLM',
    [5] = 'RDM',
    [6] = 'THF',
    [7] = 'PLD',
    [8] = 'DRK',
    [9] = 'BST',
    [10] = 'BRD',
    [11] = 'RNG',
    [12] = 'SAM',
    [13] = 'NIN',
    [14] = 'DRG',
    [15] = 'SMN',
    [16] = 'BLU',
    [17] = 'COR',
    [18] = 'PUP',
    [19] = 'DNC',
    [20] = 'SCH',
    [21] = 'GEO',
    [22] = 'RUN',
}

function player.initialize()
    player.update()
end

function player.update()

    local mem = AshitaCore:GetMemoryManager()
    if mem == nil then
        return
    end

    local p = mem:GetPlayer()
    if p == nil then
        return
    end

    data.name = p:GetName() or ''

    local mainId = p:GetMainJob()
    local subId  = p:GetSubJob()

    data.mainJob = jobNames[mainId] or tostring(mainId)
    data.subJob  = jobNames[subId] or tostring(subId)

    data.mainLevel = p:GetMainJobLevel()
    data.subLevel  = p:GetSubJobLevel()

    -- Zone will be implemented in the next step.
end

function player.getInfo()
    player.update()
    return data
end

return player
