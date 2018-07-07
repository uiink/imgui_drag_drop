function setup()
    main = ink.source("main")

    for i=1,12 do
        local d = main:append("slots")
        d:set_image("icon", "box"..((i%6)+1))
    end

    new_item("Hat", "Head", 2, true)
    new_item("Boots", "Feet", 3, false)
    new_item("Shield", "Hand", 7, false)
    new_item("Sword", "Hand", 12, true)
end

next_item = 1
function new_item(name, category, slot, equipped)
    local id = next_item
    next_item = next_item + 1
    local d = main:append("items")
    d:set_int("slot", slot)
    d:set_bool("equipped", equipped)
    d:set_string("name", name)
    d:set_string("category", category)
    d:set_image("icon", "item"..((id%4)+1))
    d:set_image("label_image", "label"..((id%3)+1))
end

setup()
