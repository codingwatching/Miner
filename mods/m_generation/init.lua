minetest.register_biome({
	name = "plains",
	node_top = "m_core:grass_block",
	depth_top = 1,
	node_filler = "m_core:dirt",
	depth_filler = 3,
	node_riverbed = "m_core:stone",
	depth_riverbed = 2,
	y_max = 32000,
	y_min = 5,
	heat_point = 20,
	humidity_point = 20,
})

minetest.register_biome({
	name = "beach",
	node_top = "m_core:sand",
	depth_top = 1,
	node_filler = "m_core:sand",
	depth_filler = 3,
	node_riverbed = "m_core:stone",
	depth_riverbed = 2,
	y_max = 5,
	y_min = -150,
	heat_point = 20,
	humidity_point = 20,
})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = "m_core:grass_block",
	                  sidelen = 4,
	                  fill_ratio = 0.001,
	                  biome = {"plains"},
	                  height = 2,
	                  y_min = 0,
	                  y_max = 32000,
	                  place_offset_y = 0,
		schematic = "apple_tree.mts",
		flags = "place_center_x, place_center_z, force_placement",
		rotation = "random",
	})

minetest.register_ore({
	ore_type	   = "blob",
	ore			= "m_core:slipstone",
	wherein		= "m_core:stone",
	clust_scarcity = 525*3,
	clust_num_ores = 250,
	clust_size	 = 25,
	y_min		  = -350,
	y_max		  = -200,
	noise_params = {
		offset  = 0,
		scale   = 1,
		spread  = {x=50, y=50, z=50},
		seed	= 10,
		octaves = 3,
		persist = 0.6,
		lacunarity = 2,
	}
})

minetest.register_ore({
	ore_type	   = "blob",
	ore			= "m_core:slipsand",
	wherein		= "m_core:stone",
	clust_scarcity = 525*3,
	clust_num_ores = 250,
	clust_size	 = 25,
	y_min		  = -350,
	y_max		  = -200,
	noise_params = {
		offset  = 0,
		scale   = 1,
		spread  = {x=50, y=50, z=50},
		seed	= 11,
		octaves = 3,
		persist = 0.6,
		lacunarity = 2,
	}
})

minetest.register_ore({
	ore_type	   = "blob",
	ore			= "m_core:lava_source",
	wherein		= "m_core:stone",
	clust_scarcity = 525*3,
	clust_num_ores = 25,
	clust_size	 = 5,
	y_min		  = -350,
	y_max		  = -200,
	noise_params = {
		offset  = 0,
		scale   = 1,
		spread  = {x=5, y=5, z=5},
		seed	= 12,
		octaves = 3,
		persist = 0.6,
		lacunarity = 2,
	}
})

minetest.register_ore({
	ore_type	   = "blob",
	ore			= "m_core:slipstone",
	wherein		= "m_core:stone",
	clust_scarcity = 525*3,
	clust_num_ores = 250,
	clust_size	 = 25,
	y_min		  = -350,
	y_max		  = -200,
	noise_params = {
		offset  = 0,
		scale   = 1,
		spread  = {x=50, y=50, z=50},
		seed	= 13,
		octaves = 3,
		persist = 0.6,
		lacunarity = 2,
	}
})

minetest.register_ore({
	ore_type	   = "blob",
	ore			= "m_core:slipstone",
	wherein		= "m_core:stone",
	clust_scarcity = 525*3,
	clust_num_ores = 250,
	clust_size	 = 25,
	y_min		  = -350,
	y_max		  = -200,
	noise_params = {
		offset  = 0,
		scale   = 1,
		spread  = {x=50, y=50, z=50},
		seed	= 14,
		octaves = 3,
		persist = 0.6,
		lacunarity = 2,
	}
})

minetest.register_ore({
	ore_type	   = "blob",
	ore			= "m_core:slipstone",
	wherein		= "m_core:stone",
	clust_scarcity = 525*3,
	clust_num_ores = 250,
	clust_size	 = 25,
	y_min		  = -350,
	y_max		  = -200,
	noise_params = {
		offset  = 0,
		scale   = 1,
		spread  = {x=50, y=50, z=50},
		seed	= 15,
		octaves = 3,
		persist = 0.6,
		lacunarity = 2,
	}
})

minetest.register_ore({
	ore_type	   = "blob",
	ore			= "m_core:slipstone",
	wherein		= "m_core:stone",
	clust_scarcity = 525*3,
	clust_num_ores = 250,
	clust_size	 = 25,
	y_min		  = -350,
	y_max		  = -200,
	noise_params = {
		offset  = 0,
		scale   = 1,
		spread  = {x=50, y=50, z=50},
		seed	= 16,
		octaves = 3,
		persist = 0.6,
		lacunarity = 2,
	}
})

minetest.register_ore({
	ore_type	   = "blob",
	ore			= "m_core:slipstone",
	wherein		= "m_core:stone",
	clust_scarcity = 525*3,
	clust_num_ores = 250,
	clust_size	 = 25,
	y_min		  = -350,
	y_max		  = -200,
	noise_params = {
		offset  = 0,
		scale   = 1,
		spread  = {x=50, y=50, z=50},
		seed	= 17,
		octaves = 3,
		persist = 0.6,
		lacunarity = 2,
	}
})

minetest.register_ore({
	ore_type	   = "blob",
	ore			= "m_core:slipstone",
	wherein		= "m_core:stone",
	clust_scarcity = 525*3,
	clust_num_ores = 250,
	clust_size	 = 25,
	y_min		  = -350,
	y_max		  = -200,
	noise_params = {
		offset  = 0,
		scale   = 1,
		spread  = {x=50, y=50, z=50},
		seed	= 18,
		octaves = 3,
		persist = 0.6,
		lacunarity = 2,
	}
})

minetest.register_ore({
	ore_type	   = "blob",
	ore			= "m_core:slipstone",
	wherein		= "m_core:stone",
	clust_scarcity = 525*3,
	clust_num_ores = 250,
	clust_size	 = 25,
	y_min		  = -350,
	y_max		  = -200,
	noise_params = {
		offset  = 0,
		scale   = 1,
		spread  = {x=50, y=50, z=50},
		seed	= 19,
		octaves = 3,
		persist = 0.6,
		lacunarity = 2,
	}
})

minetest.register_ore({
	ore_type	   = "blob",
	ore			= "m_core:slipstone",
	wherein		= "m_core:stone",
	clust_scarcity = 525*3,
	clust_num_ores = 250,
	clust_size	 = 25,
	y_min		  = -350,
	y_max		  = -200,
	noise_params = {
		offset  = 0,
		scale   = 1,
		spread  = {x=50, y=50, z=50},
		seed	= 20,
		octaves = 3,
		persist = 0.6,
		lacunarity = 2,
	}
})

minetest.register_decoration({
	decoration = "m_core:rose",
	deco_type = "simple",
	place_on = "m_core:grass_block",
	sidelen = 16,
	fill_ratio = 0.008,
	y_min = 5,
	y_max = 32000,
})

minetest.register_decoration({
	decoration = "m_core:cyan_rose",
	deco_type = "simple",
	place_on = "m_core:grass_block",
	sidelen = 16,
	fill_ratio = 0.008,
	y_min = 5,
	y_max = 32000,
})

minetest.register_decoration({
	decoration = "m_core:green_mushroom",
	deco_type = "simple",
	place_on = "m_core:stone",
	sidelen = 16,
	fill_ratio = 0.008,
	y_min = -190,
	y_max = 30,
})