minetest.register_craft({
    type = "shaped",
    output = "m_core:stick 4",
    recipe = {
        {"m_core:apple_planks", "", ""},
        {"m_core:apple_planks", "",  ""},
        {"", "",  ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "m_core:apple_planks 4",
    recipe = {
        {"m_core:apple_log", "", ""},
        {"", "",  ""},
        {"", "",  ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "m_core:stone_pickaxe 1",
    recipe = {
        {"m_core:cobblestone", "m_core:cobblestone", "m_core:cobblestone"},
        {"", "m_core:stick",  ""},
        {"", "m_core:stick",  ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "m_core:wooden_pickaxe 1",
    recipe = {
        {"m_core:apple_planks", "m_core:apple_planks", "m_core:apple_planks"},
        {"", "m_core:stick",  ""},
        {"", "m_core:stick",  ""}
    }
})