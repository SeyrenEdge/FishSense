local window = {}

window.isOpen = true

function window.initialize()
end

function window.render()

    if not window.isOpen then
        return
    end

    -- Window rendering will be implemented once the ImGui wrapper is wired.

end

return window
