dofile(minetest.get_modpath("lottmapgen").."/nodes.lua")

local WATER_LEVEL = minetest.get_mapgen_setting("water_level")



-- Biomes

-- Angmar
minetest.register_biome({
	name = "Angmar",
	node_top = "default:snowblock",
	depth_top = 1,
	node_water_top = "default:ice",
	heat_point = 0,
	humidity_point = 40,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:snowblock",
	sidelen = 8,
	fill_ratio = 0.003,
	biomes = {"Angmar"},
	decoration = "default:ice",
	place_offset_y = -1,
	flags = "force_placement",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:snowblock",
	sidelen = 8,
	fill_ratio = 0.03,
	biomes = {"Angmar"},
	decoration = "lottmapgen:frozen_stone",
	place_offset_y = -1,
	flags = "force_placement",
})

-- Snowplains
minetest.register_biome({
	name = "Snowplains",
	node_top = "default:snowblock",
	depth_top = 1,
	node_filler = "default:dirt_with_snow",
	depth_filler = 1,
	node_water_top = "default:ice",
	heat_point = 0,
	humidity_point = 30,
})

-- Trollshaws
minetest.register_biome({
	name = "Trollshaws",
	node_top = "default:dirt_with_snow",
	depth_top = 1,
	node_water_top = "default:ice",
	heat_point = 0,
	humidity_point = 30,
})

-- Dunland
minetest.register_biome({
	name = "Dunland",
	node_top = "lottmapgen:dunland_grass",
	depth_top = 1,
	node_stone = "default:desert_stone",
	heat_point = 60,
	humidity_point = 50,
})

-- Gondor
minetest.register_biome({
	name = "Gondor",
	node_top = "lottmapgen:gondor_grass",
	depth_top = 1,
	node_stone = "default:sandstone",
	heat_point = 55,
	humidity_point = 60,
})

-- Ithilien
minetest.register_biome({
	name = "Ithilien",
	node_top = "lottmapgen:ithilien_grass",
	depth_top = 1,
	heat_point = 55,
	humidity_point = 65,
})

-- Lorien
minetest.register_biome({
	name = "Lorien",
	node_top = "lottmapgen:lorien_grass",
	depth_top = 1,
	heat_point = 55,
	humidity_point = 65,
})

-- Mordor
minetest.register_biome({
	name = "Mordor",
	node_stone = "lottmapgen:mordor_stone",
	heat_point = 60,
	humidity_point = 70,
})

-- Fangorn
minetest.register_biome({
	name = "Fangorn",
	node_top = "lottmapgen:fangorn_grass",
	depth_top = 1,
	heat_point = 40,
	humidity_point = 70,
})

-- Mirkwood
minetest.register_biome({
	name = "Mirkwood",
	node_top = "lottmapgen:mirkwood_grass",
	depth_top = 1,
	heat_point = 40,
	humidity_point = 70,
})

-- Iron Hills
minetest.register_biome({
	name = "Iron Hills",
	node_top = "lottmapgen:ironhill_grass",
	depth_top = 1,
	heat_point = 30,
	humidity_point = 40,
})

-- Rohan
minetest.register_biome({
	name = "Rohan",
	node_top = "lottmapgen:rohan_grass",
	depth_top = 1,
	node_stone = "default:desert_stone",
	heat_point = 40,
	humidity_point = 50,
})

-- Shire
minetest.register_biome({
	name = "Shire",
	node_top = "lottmapgen:shire_grass",
	depth_top = 1,
})



-- Decorations

-- dry shrub
minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:snowblock",
	sidelen = 8,
	fill_ratio = 0.06,
	biomes = { "Angmar", "Trollshaws", },
	decoration = "default:dry_shrub",
	param2 = 42,
})

-- seregon flower
minetest.register_decoration({
	deco_type = "simple",
	place_on = "default:snowblock",
	sidelen = 8,
	fill_ratio = 0.005,
	biomes = {"Angmar"},
	decoration = "lottplants:seregon",
	param2 = 40,
})

-- mallos flower
minetest.register_decoration({
	deco_type = "simple",
	place_on = "lottmapgen:gondor_grass",
	sidelen = 8,
	fill_ratio = 0.01,
	biomes = { "Gondor", },
	decoration = "lottplants:mallos",
	param2 = 2,
})

-- melon
minetest.register_decoration({
	deco_type = "simple",
	place_on = {
		"lottmapgen:ithilien_grass",
		"lottmapgen:fangorn_grass",
		"lottmapgen:rohan_grass",
		"lottmapgen:shire_grass",
	},
	sidelen = 8,
	fill_ratio = 0.001,
	biomes = { "Ithilien", "Fangorn", "Rohan", "Shire", },
	decoration = "lottplants:melon_wild",
})

-- brambles of mordor
minetest.register_decoration({
	deco_type = "simple",
	place_on = "lottmapgen:mordor_stone",
	sidelen = 8,
	fill_ratio = 0.009,
	biomes = { "Mordor", },
	decoration = "lottplants:brambles_of_mordor",
	param2 = 42,
})

-- pilinehtar
minetest.register_decoration({
	deco_type = "simple",
	place_on = "lottmapgen:rohan_grass",
	sidelen = 8,
	fill_ratio = 0.006,
	biomes = { "Rohan", },
	decoration = "lottplants:pilinehtar",
	param2 = 2,
})

-- grasses
for length = 1, 5 do
	minetest.register_decoration({
		name = "default:grass_"..length,
		deco_type = "simple",
		place_on = {
			"lottmapgen:dunland_grass",
			"lottmapgen:gondor_grass",
			"lottmapgen:rohan_grass",
		},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.007,
			spread = {x = 100, y = 100, z = 100},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = { "Dunland", "Gondor", "Rohan", },
		decoration = "default:grass_"..length,
		param2 = 40,
	})
end

-- farming plants
for plant, param2 in pairs({
	["lottplants:pipeweed_wild"] = 34,
	["lottplants:barley_wild"] = 3,
	["lottplants:corn_wild"] = 3,
	["lottplants:potato_wild"] = 40,
	["lottplants:mushroom_wild"] = 9,
	["lottplants:berries_wild"] = 34,
	["lottplants:turnips_wild"] = 40,
	["lottplants:tomatoes_wild"] = 10,
	["lottplants:cabbage_wild"] = 0,
}) do
	minetest.register_decoration({
		name = plant,
		deco_type = "simple",
		place_on = {
			"lottmapgen:gondor_grass",
			"lottmapgen:ithilien_grass",
			"lottmapgen:fangorn_grass",
			"lottmapgen:rohan_grass",
			"lottmapgen:shire_grass",
		},
		sidelen = 8,
		fill_ratio = 0.002,
		biomes = { "Gondor", "Ithilien", "Fangorn", "Rohan", "Shire", },
		decoration = plant,
		param2 = param2,
	})
end

-- farming rare plants
for plant, param2 in pairs({
	["lottplants:athelas"] = 2,
	["lottplants:melon_wild"] = 0,
}) do
	minetest.register_decoration({
		name = plant,
		deco_type = "simple",
		place_on = { "lottmapgen:gondor_grass", },
		sidelen = 8,
		fill_ratio = 0.001,
		biomes = { "Gondor", },
		decoration = plant,
		param2 = param2,
	})
end

-- ithildin plants
for _, plant in ipairs({
	"lottplants:asphodel",
	"lottplants:anemones",
	"lottplants:eglantive",
	"lottplants:iris",
}) do
	minetest.register_decoration({
		name = plant,
		deco_type = "simple",
		place_on = { "lottmapgen:ithilien_grass", },
		sidelen = 8,
		fill_ratio = 0.004,
		biomes = { "Ithilien", },
		decoration = plant,
		param2 = 40,
	})
end

-- lorien plants
for plant, param2 in pairs({
	["lottplants:elanor"] = 10,
	["lottplants:lissuin"] = 41,
	["lottplants:niphredil"] = 8,
}) do
	minetest.register_decoration({
		name = plant,
		deco_type = "simple",
		place_on = { "lottmapgen:lorien_grass", },
		sidelen = 8,
		fill_ratio = 0.005,
		biomes = { "Lorien", },
		decoration = plant,
		param2 = param2,
	})
end



-- Trees



-- Structures
