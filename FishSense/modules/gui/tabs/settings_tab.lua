local imgui = require('imgui')

local settings = {}

function settings.render(info)

    imgui.Text("Settings")
    imgui.Separator()

    imgui.TextColored({0.70,0.70,0.70,1.00}, "Not implemented")

end

return settings