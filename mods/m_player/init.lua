local register_item = minetest.register_item


register_item(':', {
    type = 'none',
    wield_image = 'hand_texture.png',
    wield_scale = {x = 1, y = 1, z = 4},
    tool_capabilities = {
        full_punch_interval = 1.0,
        max_drop_level = 0,
        groupcaps = {
            snappy = {
                times = {[3] = 1.00},
                uses = 0,
                maxlevel = 1,
            },
            oddly_breakable_by_hand = {
                times = {[1] = 2.00, [2] = 1.00, [3] = 0.00},
                uses = 0,
            },
            choppy = {
                times = {[1] = 4.00, [2] = 3.50, [3] = 3.00},
                uses = 0,
            },
            crumbly = {
                times = {[1] = 2.50, [2] = 2.00, [3] = 1.00},
                uses = 0,
            },
        },
        damage_groups = {fleshy = 1}
    }
})
