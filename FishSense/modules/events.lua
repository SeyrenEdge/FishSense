local events = {}

local listeners = {}

function events.on(eventName, callback)

    if listeners[eventName] == nil then
        listeners[eventName] = {}
    end

    table.insert(listeners[eventName], callback)

end

function events.emit(eventName, ...)

    local list = listeners[eventName]

    if list == nil then
        return
    end

    for _, callback in ipairs(list) do
        callback(...)
    end

end

function events.clear()

    listeners = {}

end

return events