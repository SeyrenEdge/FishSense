local player = {}

local data = {
    name = '',
    mainJob = '',
    mainLevel = 0,
    subJob = '',
    subLevel = 0,
    zone = '',
}

function player.initialize()
    -- Ashita integration will be added in the next feature.
end

function player.update()
    -- Refresh player data.
end

function player.getInfo()
    return data
end

return player
