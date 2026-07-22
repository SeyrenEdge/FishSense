local imgui = require('imgui')

local fishing = {}

function fishing.render(info)

    imgui.Text("Fishing")
    imgui.Separator()

    imgui.Text(string.format("Skill     : %.1f", info.fishing.skill))
    imgui.Text(string.format("Rod       : %s", info.fishing.rod))
    imgui.Text(string.format("Bait      : %s", info.fishing.bait))

end

return fishing