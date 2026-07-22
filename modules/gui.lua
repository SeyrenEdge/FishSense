local gui = {}

gui.visible = true

function gui.initialize()

end

function gui.render()

    if (not gui.visible) then
        return
    end

    if (imgui.Begin('FishSense')) then

        imgui.Text('FishSense')
        imgui.Separator()

        imgui.Text('Fishing Skill')
        imgui.Text('0.0')

        imgui.Separator()

        imgui.Text('Current Zone')
        imgui.Text('Unknown')

        imgui.Separator()

        imgui.Text('Rod')
        imgui.Text('Unknown')

        imgui.Text('Bait')
        imgui.Text('Unknown')

        imgui.Text('Remaining')
        imgui.Text('0')

        imgui.Separator()

        imgui.Text('Session')

        imgui.BulletText('Fish : 0')
        imgui.BulletText('Items : 0')
        imgui.BulletText('Monsters : 0')
        imgui.BulletText('Skillups : 0')

    end

    imgui.End()

end

return gui
