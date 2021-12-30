minetest.register_craftitem("m_core:stone_pickaxe", {
	description = "Stone Pickaxe",
	inventory_image = "stone_pickaxe_texture.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level = 0,
		groupcaps = {
			cracky = {
				times = {[1] = 3.60, [2] = 2.60, [3] = 1.60},
				uses = 131,
			},
		},
		damage_groups = {fleshy = 3},
	}
})

minetest.register_craftitem("m_core:wooden_pickaxe", {
	description = "Wooden Pickaxe",
	inventory_image = "wooden_pickaxe_texture.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level = 0,
		groupcaps = {
			cracky = {
				times = {[1] = 4.00, [2] = 3.00, [3] = 2.00},
				uses = 131,
			},
		},
		damage_groups = {fleshy = 3},
	}
})