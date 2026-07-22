local equipment = {}

local slots = {
    Main  = 0x00,
    Sub   = 0x01,
    Range = 0x02,
    Ammo  = 0x03
}

function equipment.getItem(slot)

    local inv = AshitaCore:GetMemoryManager():GetInventory()

    if inv == nil then
        return nil
    end

    local eitem = inv:GetEquippedItem(slot)

    if eitem == nil or eitem.Index == 0 then
        return nil
    end

    local iitem = inv:GetContainerItem(
        bit.band(eitem.Index, 0xFF00) / 0x0100,
        eitem.Index % 0x0100
    )

    if iitem == nil then
        return nil
    end

    if iitem.Id == nil or iitem.Id == 0 or iitem.Id == 65535 then
        return nil
    end

    local res = AshitaCore:GetResourceManager():GetItemById(iitem.Id)

    if res == nil then
        return nil
    end

    return {
        id = iitem.Id,
        name = tostring(res.Name[1])
    }
end

function equipment.getInfo()

    return {
        main  = equipment.getItem(slots.Main),
        sub   = equipment.getItem(slots.Sub),
        range = equipment.getItem(slots.Range),
        ammo  = equipment.getItem(slots.Ammo)
    }

end

function equipment.getMain()
    return equipment.getInfo().main
end

function equipment.getSub()
    return equipment.getInfo().sub
end

function equipment.getRange()
    return equipment.getInfo().range
end

function equipment.getAmmo()
    return equipment.getInfo().ammo
end

return equipment