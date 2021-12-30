local register_node = minetest.register_node
local register_alias = minetest.register_alias

local path = minetest.get_modpath("m_core")
dofile(path .. "/tools.lua")
dofile(path .. "/items.lua")
dofile(path .. "/recipes.lua")


register_node('m_core:stone', {
    description = 'Stone',
    tiles = { 'stone_texture.png' },
    groups = { cracky = 3 },
    drop = 'm_core:cobblestone',
    is_ground_content = true,
    sounds = m_sounds.cracky_sounds
})

minetest.register_node('m_core:purple_candle', {
	description = 'Purple Candle',
	drawtype = 'plantlike',
	paramtype = 'light',
	waving = 0,
	tiles = { 'purple_candle_texture.png' },
	inventory_image = 'purple_candle_texture.png',
	wield_image = 'purple_candle_texture.png',
	sunlight_propagates = true,
	walkable = false,
	groups = { oddly_breakable_by_hand = 3 },
	buildable_to = false,
	light_source = 5,
})

minetest.register_node('m_core:green_mushroom', {
	description = 'Green Mushroom',
	drawtype = 'plantlike',
	paramtype = 'light',
	waving = 0,
	tiles = { 'green_mushroom_texture.png' },
	inventory_image = 'green_mushroom_texture.png',
	wield_image = 'green_mushroom_texture.png',
	sunlight_propagates = true,
	walkable = false,
	groups = { oddly_breakable_by_hand = 3 },
	buildable_to = true,
	light_source = 5,
})

register_node('m_core:bedrock', {
    description = 'Bedrock',
    tiles = { 'bedrock_texture.png' },
    drop = 'm_core:bedrock',
    is_ground_content = false,
    sounds = m_sounds.cracky_sounds
})

register_node('m_core:slipstone', {
    description = 'Slipstone',
    tiles = { 'slipstone_texture.png' },
    groups = { cracky = 3 },
    is_ground_content = true,
    sounds = m_sounds.cracky_sounds
})

register_node('m_core:slipsand', {
    description = 'Slipsand',
    tiles = { 'slipsand_texture.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = m_sounds.crumbly_sounds
})

register_node('m_core:apple_planks', {
    description = 'Apple Planks',
    tiles = { 'apple_planks_texture.png' },
    groups = { choppy = 3 },
    is_ground_content = true,
    sounds = m_sounds.choppy_sounds
})

register_node('m_core:apple_leaves', {
    description = 'Apple Leaves',
    paramtype = 'light',
    tiles = { 'leaves_texture.png' },
    groups = { snappy = 3, falling_node = 1 },
    drawtype = 'allfaces_optional',
    is_ground_content = true,
    sounds = m_sounds.snappy_sounds
})

register_node('m_core:cobblestone', {
    description = 'Cobblestone',
    tiles = { 'cobblestone_texture.png' },
    groups = { cracky = 3 },
    is_ground_content = true,
    sounds = m_sounds.cracky_sounds
})

register_node('m_core:blackstone', {
    description = 'Blackstone',
    tiles = { 'blackstone_texture.png' },
    groups = { cracky = 3 },
    is_ground_content = true,
    sounds = m_sounds.cracky_sounds
})

register_node('m_core:dirt', {
    description = 'Dirt',
    tiles = { 'dirt_texture.png' },
    groups = { crumbly = 3 },
    is_ground_content = true,
    sounds = m_sounds.crumbly_sounds
})

register_node('m_core:sand', {
    description = 'Sand',
    tiles = { 'sand_texture.png' },
    groups = { crumbly = 3 },
    is_ground_content = true
})

register_node('m_core:rose', {
    description = 'Rose',
    walkable = false,
    drawtype = 'plantlike',
    paramtype = 'light',
    waving = 1,
    tiles = { 'rose_texture.png' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    buildable_to = true
})

register_node('m_core:cyan_rose', {
    description = 'Cyan Rose',
    walkable = false,
    drawtype = 'plantlike',
    paramtype = 'light',
    waving = 1,
    tiles = { 'cyan_rose_texture.png' },
    groups = { oddly_breakable_by_hand = 3 },
    is_ground_content = true,
    buildable_to = true
})

register_node('m_core:grass_block', {
    description = 'Grass Block',
    tiles = {"grass_block_top_texture.png", "dirt_texture.png", "grass_block_side_texture.png"},
    drop = 'm_core:dirt',
    groups = { crumbly = 3 },
    is_ground_content = true,
    on_construct = function(pos)
	grass_block_behavior(pos)
    end,
    sounds = m_sounds.snappy_sounds
})

minetest.register_abm({
	label = "Leaf Decay",
	nodenames = {"m_core:grass_block"},
	interval = 3.0,
	chance = 0.3,
	catch_up = true,
	action = function(pos, node, active_object_count, active_object_count_wider)
		grass_block_behavior(pos)
	end
})

function grass_block_behavior(pos)
	range = 1
	for x = -range,range,1 do
		for y = -range,range,1 do
			for z = -range,range,1 do
				checkpos = { x = pos.x + x, y = pos.y + y, z = pos.z + z }
				nodename = minetest.get_node(checkpos).name
				if nodename == "m_core:apple_leaves" or nodename == "m_core:birch_leaves" then
					minetest.remove_node(checkpos)
				end
			end
		end
	end
end

register_node('m_core:apple_log', {
    description = 'Apple Log',
    tiles = {"log_texture.png", "log_texture.png", "log_side_texture.png"},
    groups = { choppy = 3 },
    is_ground_content = true,
    paramtype2 = "facedir",
    sounds = m_sounds.choppy_sounds,

    on_place = minetest.rotate_node
})

minetest.register_node("m_core:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "water_texture.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 5.0,
			},
		},
		{
			name = "water_texture.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 3,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "m_core:water_flowing",
	liquid_alternative_source = "m_core:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 30, r = 0, g = 84, b = 223},
	groups = {water = 3, liquid = 3},
	waving = 3
})

minetest.register_node("m_core:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	tiles = {"water_texture.png"},
	special_tiles = {
		{
			name = "water_texture.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 1,
			},
		},
		{
			name = "water_texture.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 1,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "m_core:water_flowing",
	liquid_alternative_source = "m_core:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 30, r = 0, g = 84, b = 223},
	groups = {water = 3, liquid = 3},
	waving = 3
})

minetest.register_node("m_core:lava_source", {
	description = "Lava Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "lava_texture.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 10.0,
			},
		},
		{
			name = "lava_texture.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 10,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	light_source = 5,
	damage_per_second = 5,
	liquid_alternative_flowing = "m_core:lava_flowing",
	liquid_alternative_source = "m_core:lava_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 200, r = 200, g = 146, b = 89},
	groups = {water = 3, liquid = 3},
	waving = 3
})

minetest.register_node("m_core:lava_flowing", {
	description = "Flowing Lava",
	drawtype = "flowingliquid",
	tiles = {"lava_texture.png"},
	special_tiles = {
		{
			name = "lava_texture.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 10,
			},
		},
		{
			name = "lava_texture.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 1,
				aspect_h = 1,
				length = 10,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	light_source = 5,
	damage_per_second = 5,
	liquid_alternative_flowing = "m_core:lava_flowing",
	liquid_alternative_source = "m_core:lava_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 200, r = 200, g = 146, b = 89},
	groups = {water = 3, liquid = 3},
	waving = 3
})


register_alias('mapgen_stone', 'm_core:stone')
register_alias('mapgen_water_source', 'm_core:water_source')
register_alias('mapgen_river_water_source', 'm_core:water_source')
