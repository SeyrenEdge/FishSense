local imgui = require('imgui')

local equipment = {}

function equipment.render(info)

    imgui.Text("Equipment")
    imgui.Separator()

    imgui.Text(string.format("Main      : %s",
        info.equipment.main and info.equipment.main.name or "nil"))

    imgui.Text(string.format("Sub       : %s",
        info.equipment.sub and info.equipment.sub.name or "nil"))

    imgui.Text(string.format("Range     : %s",
        info.equipment.range and info.equipment.range.name or "nil"))

    imgui.Text(string.format("Ammo      : %s",
        info.equipment.ammo and info.equipment.ammo.name or "nil"))

end

return equipment