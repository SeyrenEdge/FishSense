local Logger = require('modules.logger')
local Config = require('modules.config')

local Bootstrap = {}

----------------------------------------------------------
-- Load
----------------------------------------------------------

function Bootstrap.load()

    Logger.info('Initializing FishSense...')

    Config.load()

    Logger.info('FishSense initialized.')

end

----------------------------------------------------------
-- Unload
----------------------------------------------------------

function Bootstrap.unload()

    Logger.info('Saving configuration...')

    Config.save()

    Logger.info('Goodbye.')

end

----------------------------------------------------------
-- Render
----------------------------------------------------------

function Bootstrap.render()

    -- GUI will be added in Commit #2

end

return Bootstrap
