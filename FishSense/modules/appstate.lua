local state = {}

local player = require('modules.player')
local equipment = require('modules.equipment')
local fishing = require('modules.fishing')
local session = require('modules.session')

function state.get()

    return {
        player = player.getInfo(),
        equipment = equipment.getInfo(),
        fishing = fishing.getInfo(),
        session = session.get(),
    }

end

return state