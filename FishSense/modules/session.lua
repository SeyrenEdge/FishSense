local events = require('modules.events')

local session = {}

local state = {
    active = false,
    startTime = nil,

    casts = 0,
    fishCaught = 0,
    itemsCaught = 0,
    monstersHooked = 0,
    lineBreaks = 0,
    rodBreaks = 0,

    lastCatch = '',
}

function session.initialize()

    state.active = true
    state.startTime = os.time()

    events.on('cast', function()

        state.casts = state.casts + 1

    end)

    events.on('fish', function(name)

        state.fishCaught = state.fishCaught + 1
        state.lastCatch = name or 'Unknown'

    end)

    events.on('item', function(name)

        state.itemsCaught = state.itemsCaught + 1
        state.lastCatch = name or 'Unknown Item'

    end)

    events.on('monster', function(name)

        state.monstersHooked = state.monstersHooked + 1
        state.lastCatch = name or 'Unknown Monster'

    end)

    events.on('line_break', function()

        state.lineBreaks = state.lineBreaks + 1

    end)

    events.on('rod_break', function()

        state.rodBreaks = state.rodBreaks + 1

    end)

end

function session.get()

    local duration = 0

    if state.startTime then
        duration = os.time() - state.startTime
    end

    return {

        active = state.active,
        duration = duration,

        casts = state.casts,
        fishCaught = state.fishCaught,
        itemsCaught = state.itemsCaught,
        monstersHooked = state.monstersHooked,
        lineBreaks = state.lineBreaks,
        rodBreaks = state.rodBreaks,

        lastCatch = state.lastCatch,

    }

end

return session