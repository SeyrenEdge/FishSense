local state = {}

state.window = {
    visible = true,
    title = 'FishSense',
}

function state.isVisible()
    return state.window.visible
end

function state.setVisible(value)
    state.window.visible = value
end

function state.toggle()
    state.window.visible = not state.window.visible
end

function state.getTitle()
    return state.window.title
end

return state
