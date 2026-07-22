local config = {}

local defaults = {

    window = {

        visible = true,

        x = 200,

        y = 200,

        width = 450,

        height = 650,

    },

    profile = "Mixed"

}

config.settings = defaults

----------------------------------------------------------
-- Load
----------------------------------------------------------

function config.load()

    -- JSON persistence will be implemented later.

end

----------------------------------------------------------
-- Save
----------------------------------------------------------

function config.save()

    -- JSON persistence will be implemented later.

end

return config
