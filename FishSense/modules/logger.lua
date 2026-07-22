local chat = require('chat');

local logger = {}

function logger.info(message)
    print(chat.header('FishSense') .. chat.message(message))
end

function logger.warning(message)
    print(chat.header('FishSense') .. chat.color1(57, message))
end

function logger.error(message)
    print(chat.header('FishSense') .. chat.color1(167, message))
end

return logger
