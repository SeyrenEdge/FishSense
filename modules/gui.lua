local gui = {}

gui.state = {
    initialized = false,
}

function gui.initialize()

    if gui.state.initialized then
        return
    end

    gui.state.initialized = true

end

function gui.render()

    if not gui.state.initialized then
        return
    end

    -- ImGui window will be added in the next step.

end

return gui
