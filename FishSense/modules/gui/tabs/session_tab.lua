local imgui = require('imgui')

local session = {}

local function formatTime(seconds)

    local h = math.floor(seconds / 3600)
    local m = math.floor((seconds % 3600) / 60)
    local s = seconds % 60

    return string.format('%02d:%02d:%02d', h, m, s)

end

function session.render(info)

    local s = info.session

    imgui.Text('Session')

    imgui.Separator()

    imgui.Text('Duration          : ' .. formatTime(s.duration))
    imgui.Text('Casts             : ' .. s.casts)
    imgui.Text('Fish              : ' .. s.fishCaught)
    imgui.Text('Items             : ' .. s.itemsCaught)
    imgui.Text('Monsters          : ' .. s.monstersHooked)
    imgui.Text('Line Breaks       : ' .. s.lineBreaks)
    imgui.Text('Rod Breaks        : ' .. s.rodBreaks)
    imgui.Text('Last Catch        : ' .. s.lastCatch)

end

return session