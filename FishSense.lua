addon.name      = 'FishSense';
addon.author    = 'SeyrenEdge';
addon.version   = '0.1.0';
addon.desc      = 'Advanced Fishing Assistant';
addon.link      = 'https://github.com/SeyrenEdge/FishSense';

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

ashita.events.register('d3d_present', 'fishsense_present', function ()

    gui.render();

end);
