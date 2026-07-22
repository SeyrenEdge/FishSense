local imgui = require('imgui')

local state = require('modules.gui.state')
local player = require('modules.player')

local window = {}

function window.initialize()
end

function window.render()

    if not state.isVisible() then
        return
    end

    local visible = state.isVisible()

    if imgui.Begin(state.getTitle(), visible) then

        imgui.Text('FishSense')
        imgui.Separator()

        imgui.Text('Status')
        imgui.BulletText('Addon loaded')

        imgui.Spacing()

        imgui.Text('Player')
        imgui.TextColored({ 0.70, 0.70, 0.70, 1.00 }, 'Not implemented')

        imgui.Spacing()

        imgui.Text('Session')
        imgui.TextColored({ 0.70, 0.70, 0.70, 1.00 }, 'Not implemented')

        imgui.Spacing()

        imgui.Text('Advisor')
        imgui.TextColored({ 0.70, 0.70, 0.70, 1.00 }, 'Not implemented')

    end

    imgui.End()

end

return window
