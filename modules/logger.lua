local logger = {}

local PREFIX = '[FishSense] '

local function printMessage(color, message)

    print(chat.header(PREFIX) ..
          chat.color1(color, message))

end

function logger.info(message)

    printMessage(2, message)

end

function logger.warning(message)

    printMessage(57, message)

end

function logger.error(message)

    printMessage(167, message)

end

return logger
