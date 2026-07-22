local imgui = require('imgui')

local advisor = {}

function advisor.render(info)

    imgui.Text("Advisor")
    imgui.Separator()

    imgui.TextColored({0.70,0.70,0.70,1.00}, "Not implemented")

end

return advisor