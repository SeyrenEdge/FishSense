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

        local info = player.getInfo()

        imgui.Text('Player')
        imgui.Separator()

        imgui.Text(string.format('Name      : %s', info.name ~= '' and info.name or 'Unknown'))
        imgui.Text(string.format('Main Job  : %s', info.mainJob ~= '' and info.mainJob or '--'))
        imgui.Text(string.format('Sub Job   : %s', info.subJob ~= '' and info.subJob or '--'))
        imgui.Text(string.format('Zone      : %s', info.zone ~= '' and info.zone or '--'))

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
