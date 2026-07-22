local imgui = require('imgui')

local windowState = require('modules.gui.window_state')
local appState = require('modules.appstate')

local window = {}

local dashboard = require('modules.gui.tabs.dashboard_tab')
local fishing   = require('modules.gui.tabs.fishing_tab')
local equipment = require('modules.gui.tabs.equipment_tab')
local session   = require('modules.gui.tabs.session_tab')
local advisor   = require('modules.gui.tabs.advisor_tab')
local settings  = require('modules.gui.tabs.settings_tab')

function window.initialize()
end

function window.render()

    if not windowState.isVisible() then
        return
    end

    local visible = windowState.isVisible()

    if imgui.Begin(windowState.getTitle(), visible) then

        local info = appState.get()

        imgui.Text('FishSense')
        imgui.Separator()

        if imgui.BeginTabBar('##FishSenseTabs') then

    if imgui.BeginTabItem('Dashboard') then
        dashboard.render(info)
        imgui.EndTabItem()
    end

    if imgui.BeginTabItem('Fishing') then
        fishing.render(info)
        imgui.EndTabItem()
    end

    if imgui.BeginTabItem('Equipment') then
        equipment.render(info)
        imgui.EndTabItem()
    end

    if imgui.BeginTabItem('Session') then
        session.render(info)
        imgui.EndTabItem()
    end

    if imgui.BeginTabItem('Advisor') then
        advisor.render(info)
        imgui.EndTabItem()
    end

    if imgui.BeginTabItem('Settings') then
        settings.render(info)
        imgui.EndTabItem()
    end

    imgui.EndTabBar()
end
    end

    imgui.End()

end

return window