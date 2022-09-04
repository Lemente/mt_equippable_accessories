---
--- materials
---

minetest.register_craftitem("equippable_accessories:wing_base", {
	description = ("Wing base \n" ..core.colorize("#aaaaaa","A sturdy diamond & mese encrusted metal skeleton for a wing, powered by mese. \n").. "" ..core.colorize("#aaaaaa","used for crafting wearable wings").. ""),
	inventory_image = "accessories_wing_base.png",
})


minetest.register_craft({
	output = "equippable_accessories:wing_base 1",
	recipe = {
		{"default:steel_ingot", "default:diamondblock", "default:steel_ingot"},
		{"default:mese", "default:steel_ingot", "default:mese"},
		{"default:steel_ingot", "default:diamondblock", "default:steel_ingot"},
	}
})

---

minetest.register_craft({
	output = "equippable_accessories:dark_horns 1",
	recipe = {
		{"default:obsidian_shard", "", "default:obsidian_shard"},
		{"default:diamond", "", "default:diamond"},
		{"default:obsidian", "", "default:obsidian"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:dark_wings 1",
	recipe = {
		{"default:obsidian_shard", "default:obsidian", ""},
		{"default:obsidian", "equippable_accessories:wing_base", "default:obsidian"},
		{"default:obsidian", "", ""},
	}
})

minetest.register_craft({
	output = "equippable_accessories:facemask 1",
	recipe = {
		{"farming:string", "", "farming:string"},
		{"", "default:paper", ""},
	}
})

minetest.register_craft({
	output = "equippable_accessories:leather_boots 1",
	recipe = {
		{"mobs:leather", "", "mobs:leather"},
		{"mobs:leather", "", "mobs:leather"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:sunglasses 1",
	recipe = {
		{"group:stick", "", "group:stick"},
		{"xpanes:pane_flat", "group:stick", "xpanes:pane_flat"},
		{"dye:black", "", "dye:black"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:goggles 1",
	recipe = {
		{"group:stick", "", "group:stick"},
		{"xpanes:pane_flat", "group:stick", "xpanes:pane_flat"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:white_scarf 1",
	recipe = {
		{"wool:white", "wool:white", "wool:white"},
		{"wool:white", "farming:string", "wool:white"},
		{"farming:string", "wool:white", "farming:string"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:black_cat_ears 1",
	recipe = {
		{"wool:black", "", "wool:black"},
		{"wool:black", "group:stick", "wool:black"},
		{"farming:string", "", "farming:string"},
	}
})


minetest.register_craft({
	output = "equippable_accessories:menacing_student_hat 1",
	recipe = {
		{"default:gold_ingot", "wool:black", "wool:black"},
		{"wool:black", "wool:black", "wool:black"},
		{"", "default:gold_ingot", ""},
	}
})

minetest.register_craft({
	output = "equippable_accessories:menacing_student_jacket 1",
	recipe = {
		{"wool:black", "default:gold_ingot", "wool:black"},
		{"wool:black", "wool:black", "default:gold_ingot"},
		{"wool:black", "wool:black", "wool:black"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:menacing_student_pants 1",
	recipe = {
		{"wool:blue", "wool:yellow", "wool:red"},
		{"wool:black", "", "wool:black"},
		{"wool:black", "", "wool:black"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:golden_bracelet 1",
	recipe = {
		{"default:gold_ingot", "farming:string"},
		{"farming:string", "default:gold_ingot"},
		{"default:gold_ingot", "farming:string"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:golden_halo 1",
	recipe = {
		{"default:mese_crystal", "default:gold_ingot","default:mese_crystal"},
		{"default:gold_ingot", "","default:gold_ingot"},
		{"default:mese_crystal", "default:gold_ingot","default:mese_crystal"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:angel_wings 1",
	recipe = {
		{"wool:white", "wool:white", "wool:white"},
		{"wool:white", "equippable_accessories:wing_base", "wool:white"},
		{"wool:white", "wool:white", ""},
	}
})

minetest.register_craft({
	output = "equippable_accessories:mining_helmet 1",
	recipe = {
		{"default:gold_ingot", "default:meselamp", "default:gold_ingot"},
		{"default:gold_ingot", "default:mese", "default:gold_ingot"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:overalls 1",
	recipe = {
		{"farming:string", "wool:blue", "farming:string"},
		{"wool:blue", "wool:blue", "wool:blue"},
		{"wool:blue", "", "wool:blue"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:mining_gloves 1",
	recipe = {
		{"wool:black", "", "wool:black"},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"wool:orange", "", "wool:orange"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:white_headband 1",
	recipe = {
		{"farming:string", "wool:white", "farming:string"},
		{"wool:white", "wool:white", "wool:white"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:lmao_emoji_mask 1",
	recipe = {
		{"dye:yellow", "farming:string", "dye:yellow"},
		{"farming:string", "wool:white", "farming:string"},
		{"dye:blue", "dye:white", "dye:blue"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:gaming_headphones 1",
	recipe = {
		{"default:mese_crystal", "default:steel_ingot", "default:mese_crystal"},
		{"default:steel_ingot", "dye:black", "default:steel_ingot"},
		{"dye:red", "default:mese_crystal_fragment", "dye:red"},
	}
})


minetest.register_craft({
	output = "equippable_accessories:steel_shield 1",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		{"", "default:steel_ingot", ""},
	}
})

minetest.register_craft({
	output = "equippable_accessories:bronze_shield 1",
	recipe = {
		{"default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot"},
		{"default:bronze_ingot", "default:bronze_ingot", "default:bronze_ingot"},
		{"", "default:bronze_ingot", ""},
	}
})

minetest.register_craft({
	output = "equippable_accessories:obsidian_shield 1",
	recipe = {
		{"default:obsidian", "default:diamond", "default:obsidian"},
		{"default:mese", "equippable_accessories:skull_shield", "default:mese"},
		{"", "default:obsidian", ""},
	}
})

minetest.register_craft({
	output = "equippable_accessories:santa_hat 1",
	recipe = {
		{"", "","wool:white"},
		{"wool:red", "wool:red",""},
		{"wool:white", "wool:white",""},
	}
})


minetest.register_craft({
	output = "equippable_accessories:white_baseball_cap 1",
	recipe = {
		{"", "wool:white", "wool:white"},
		{"wool:white", "wool:white", "wool:white"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "equippable_accessories:steel_gauntlets 1",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"wool:white", "", "wool:white"},
	}
})

minetest.register_craft({
	output = "equippable_accessories:armored_boots 1",
	recipe = {
		{"", "default:steel_ingot", ""},
		{"default:steel_ingot", "equippable_accessories:leather_boots", "default:steel_ingot"},
		{"", "default:steel_ingot", ""},
	}
})