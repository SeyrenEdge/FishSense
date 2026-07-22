addon.name = 'FishSense'
addon.author = 'SeyrenEdge'
addon.version = '0.1.0'
addon.desc = 'Advanced Fishing Assistant'
addon.link = 'https://github.com/SeyrenEdge/FishSense'

require('common')

local Bootstrap = require('bootstrap')

ashita.events.register('load', 'FishSense_Load', function()
    Bootstrap.load()
end)

ashita.events.register('unload', 'FishSense_Unload', function()
    Bootstrap.unload()
end)

ashita.events.register('d3d_present', 'FishSense_Render', function()
    Bootstrap.render()
end)
