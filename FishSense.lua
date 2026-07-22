addon.name      = 'FishSense';
addon.author    = 'SeyrenEdge';
addon.version   = '0.2.0';
addon.desc      = 'Advanced Fishing Assistant';
addon.link      = 'https://github.com/SeyrenEdge/FishSense';

-- Auto-detect Ashita version compatibility (same pattern as XIUI)
_G._XIUI_USE_ASHITA_4_3 = nil;

require('handlers.imgui_compat');
require('common');

local logger   = require('modules.logger');
local config   = require('modules.config');
local gui      = require('modules.gui');
local session  = require('modules.session');
local database = require('modules.database');

ashita.events.register('load', 'fishsense_load', function ()
    logger.info('Loaded.');

    config.load();
    session.initialize();
    database.initialize();
    gui.initialize();
end);

ashita.events.register('unload', 'fishsense_unload', function ()
    config.save();
    logger.info('Unloaded.');
end);

ashita.events.register('command', 'fishsense_command', function (e)

    local args = e.command:lower():args();

    if (args[1] ~= '/fishsense') then
        return;
    end

    e.blocked = true;

    if (#args == 1) then
        gui.toggle();
        return;
    end

    if (args[2] == 'show') then
        gui.show();
        return;
    end

    if (args[2] == 'hide') then
        gui.hide();
        return;
    end

    if (args[2] == 'toggle') then
        gui.toggle();
        return;
    end

    logger.info('Usage: /fishsense [show|hide|toggle]');
end);

ashita.events.register('d3d_present', 'fishsense_present', function ()
    gui.render();
end);
