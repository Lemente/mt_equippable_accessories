minetest.register_craft({
	output = "equippable_accessories:spikey_ring 1",
	recipe = {
		{"default:mese_crystal_fragment", "default:steel_ingot", "default:mese_crystal_fragment"},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:mese_crystal_fragment", "default:steel_ingot", "default:mese_crystal_fragment"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:diamond_ring 1",
	recipe = {
		{"", "default:gold_ingot", "default:diamond"},
		{"default:gold_ingot", "", "default:gold_ingot"},
		{"", "default:gold_ingot", ""},
	}
})

minetest.register_craft({
	output = "equippable_accessories:drill_ring 1",
	recipe = {
		{"", "default:steelblock", "default:diamondblock"},
		{"default:gold_ingot", "", "default:steelblock"},
		{"", "default:gold_ingot", ""},
	}
})

minetest.register_craft({
	output = "equippable_accessories:silver_ring 1",
	recipe = {
		{"", "moreores:silver_ingot", ""},
		{"moreores:silver_ingot", "", "moreores:silver_ingot"},
		{"", "moreores:silver_ingot", ""},
	}
})

minetest.register_craft({
	output = "equippable_accessories:ring_of_power 1",
	recipe = {
		{"", "default:diamondblock", "default:mese"},
		{"default:copper_ingot", "default:steelblock", "default:diamondblock"},
		{"default:copper_ingot", "default:copper_ingot", ""},
	}
})