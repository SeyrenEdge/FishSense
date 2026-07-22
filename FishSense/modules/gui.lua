local gui = {}

local windowState = require('modules.gui.window_state')
local window = require('modules.gui.window')

function gui.initialize()
    window.initialize()
end

function gui.render()

    if not windowState.isVisible() then
        return
    end

    window.render()

end

function gui.show()
    windowState.setVisible(true)
end

function gui.hide()
    windowState.setVisible(false)
end

function gui.toggle()
    windowState.toggle()
end

return gui