
minetest.register_tool("equippable_accessories:diamond_ring", {
	description = ("Diamond Ring \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "accessories_diamond_ring.png",
	acc_defense = 3,
	acc_slot = "both_ring_acc",
})

minetest.register_tool("equippable_accessories:drill_ring", {
	description = ("Diamond Drill Ring \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+25% Digging Speed").. ""),
	inventory_image = "accessories_drill_ring.png",
	acc_digSpeed = 25,
	acc_slot = "both_ring_acc",
})

minetest.register_tool("equippable_accessories:silver_ring", {
	description = ("Silver Ring \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+0.05 HP regeneration").. ""),
	inventory_image = "accessories_silver_ring.png",
	acc_hpRegen = 0.05,
	acc_slot = "both_ring_acc",
})

minetest.register_tool("equippable_accessories:ring_of_power", {
	description = ("Ring Of Power \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+17% Digging Speed \n").. "" ..core.colorize("#aaaaaa","2 Defense \n").. "" ..core.colorize("#aaaaaa","+6% Attack Damage \n").. "" ..core.colorize("#aaaaaa","+15% Walking speed \n").. "" ..core.colorize("#aaaaaa","+3 Max HP").. ""),
	inventory_image = "accessories_ring_of_power.png",
	acc_digSpeed = 17,
	acc_defense = 2,
	acc_offense = 6,
	acc_hpBonus = 3,
	acc_walkSpeed = 0.15,
	acc_slot = "both_ring_acc",
})

minetest.register_tool("equippable_accessories:spikey_ring", {
	description = ("Spikey Ring \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+7% Attack Damage \n").. "" ..core.colorize("#aaaaaa","+10% damage return").. ""),
	inventory_image = "accessories_spikey_ring.png",
	acc_offense = 7,
	acc_thorns = 10,
	acc_slot = "both_ring_acc",
})

