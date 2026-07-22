local gui = {}

local state = require('modules.gui.state')
local window = require('modules.gui.window')

function gui.initialize()
    window.initialize()
end

function gui.render()

    if not state.isVisible() then
        return
    end

    window.render()

end

function gui.show()
    state.setVisible(true)
end

function gui.hide()
    state.setVisible(false)
end

function gui.toggle()
    state.toggle()
end

return gui
