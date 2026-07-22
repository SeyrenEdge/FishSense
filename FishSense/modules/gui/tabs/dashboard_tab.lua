local imgui = require('imgui')

local dashboard = {}

function dashboard.render(info)

    imgui.Text("Status")
    imgui.Separator()
    imgui.BulletText("Addon loaded")

    imgui.Spacing()

    imgui.Text("Player")
    imgui.Separator()

    imgui.Text(string.format("Name      : %s",
        info.player.name ~= "" and info.player.name or "Unknown"))

    imgui.Text(string.format("Main Job  : %s%d",
        info.player.mainJob ~= "" and info.player.mainJob or "--",
        info.player.mainLevel))

    imgui.Text(string.format("Sub Job   : %s%d",
        info.player.subJob ~= "" and info.player.subJob or "--",
        info.player.subLevel))

    imgui.Text(string.format("Zone      : %s",
        info.player.zone ~= "" and info.player.zone or "--"))

end

return dashboard