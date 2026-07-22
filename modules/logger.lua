local logger = {}

function logger.info(message)
    print('[FishSense] ' .. message)
end

function logger.warning(message)
    print('[FishSense] Warning: ' .. message)
end

function logger.error(message)
    print('[FishSense] Error: ' .. message)
end

return logger
