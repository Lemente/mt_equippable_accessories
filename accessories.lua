

minetest.register_tool("equippable_accessories:dark_horns", {
	description = ("Dark Horns \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+12% Attack damage").. ""),
	inventory_image = "accessories_dark_horns_inv.png",
	acc_offense = 12,
	acc_defense = 500,
	acc_slot = "headtop_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("accessory_horns_1.b3d"),
	acc_texture_head = ("accessories_dark_horns.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},
	acc_glow_head = 5,

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:dark_wings", {
	description = ("Dark Wings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","6.0 Flight Time \n").. "" ..core.colorize("#aaaaaa","0.7 Flight Force \n").. "" ..core.colorize("#aaaaaa","Allows slow fall \n").. "" ..core.colorize("#aaaaaa","+9% Attack damage").. ""),
	inventory_image = "accessories_dark_wings_inv.png",
	acc_offense = 9,
	acc_flight_time = 6.0,
	acc_flight_force = 0.7,

	acc_slot = "wing_acc",

	acc_size_body = ({x=3.0,y=3.0}),
	acc_model_body = ("accessory_wings.b3d"),
	acc_texture_body = ("accessories_dark_wings.png"),
	acc_pos_body = {x=0,y=4.0,z=-1.1},
	acc_anim_body = {x=1,y=20},
	acc_glow_body = 5,

groups = {body_accessory = 1,acc_wings=1},
})


minetest.register_tool("equippable_accessories:leather_boots", {
	description = ("Leather Boots \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+25% Walking speed \n").. ""..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "accessories_leather_boots_inv.png",
	acc_defense = 1,
	acc_walkSpeed = 0.25,

	acc_slot = "boots_acc",

	acc_size_l_leg = ({x=2.6,y=2.6}),
	acc_model_l_leg = ("boot.b3d"),
	acc_texture_l_leg = ("accessories_leather_boots.png"),
	acc_pos_l_leg = {x=0,y=4.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.6,y=2.6}),
	acc_model_r_leg = ("boot.b3d"),
	acc_texture_r_leg = ("accessories_leather_boots.png"),
	acc_pos_r_leg = {x=0,y=4.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

minetest.register_tool("equippable_accessories:boots_of_haste", {
	description = ("Boots Of Haste\n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+80% Walking speed ").. ""),
	inventory_image = "accessories_boots_of_haste_inv.png",
	acc_defense = 1,
	acc_walkSpeed = 0.80,

	acc_slot = "boots_acc",

	acc_size_l_leg = ({x=2.55,y=2.55}),
	acc_model_l_leg = ("winged_boot.b3d"),
	acc_texture_l_leg = ("accessories_boots_of_haste.png"),
	acc_pos_l_leg = {x=0,y=4.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.55,y=2.55}),
	acc_model_r_leg = ("winged_boot.b3d"),
	acc_texture_r_leg = ("accessories_boots_of_haste.png"),
	acc_pos_r_leg = {x=0,y=4.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})


minetest.register_tool("equippable_accessories:facemask", {
	description = ("Face mask \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "accessories_facemask_inv.png",
	acc_defense = 1,

	acc_slot = "mouth_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("accessories_facemask.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:sunglasses", {
	description = ("Sunglasses \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+4% Attack Damage \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "accessories_sunglasses_inv.png",
	acc_defense = 1,
	acc_offense = 4,

	acc_slot = "eye_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("accessories_sunglasses.png"),
	acc_pos_head = {x=0,y=2.0,z=-0.2},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})


minetest.register_tool("equippable_accessories:goggles", {
	description = ("Goggles \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "accessories_goggles_inv.png",
	acc_defense = 1,

	acc_slot = "eye_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("accessories_goggles.png"),
	acc_pos_head = {x=0,y=2.0,z=-0.2},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:white_scarf", {
	description = ("White Scarf \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+2 Max HP \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "accessories_white_scarf_inv.png",
	acc_defense = 1,
	acc_hpBonus = 2,

	acc_slot = "neck_acc",
	acc_size_body = ({x=2.4,y=2.4}),
	acc_model_body = ("accessory_scarf.b3d"),
	acc_texture_body = ("accessories_white_scarf.png"),
	acc_pos_body = {x=0,y=6.0,z=0},
	acc_anim_body = {x=0,y=0},

groups = {body_accessory = 1},
})

---
--- IS THIS A F***ING JoJo REFFERENCE?!!?
---

minetest.register_tool("equippable_accessories:menacing_student_hat", {
	description = ("Menacing student hat \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+11% Attack Damage \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "accessories_JoJo_hat_inv.png",
	acc_defense = 2,
	acc_offense = 11,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_cap.b3d"),
	acc_texture_head = ("accessories_JoJo_hat.png"),
	acc_pos_head = {x=0,y=3.5,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:menacing_student_jacket", {
	description = ("Menacing student jacket \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+4% Attack Damage \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "accessories_JoJo_shirt_inv.png",
	acc_defense = 2,
	acc_offense = 4,

	acc_slot = "topshirt_acc",

	acc_size_body = ({x=3.1,y=2.9}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("accessories_JoJo_shirt.png"),
	acc_pos_body = {x=0,y=2.4,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=3.0,y=3.0}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("accessories_JoJo_arm.png"),
	acc_pos_l_arm = {x=0,y=2.65,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=3.0,y=3.0}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("accessories_JoJo_arm.png"),
	acc_pos_r_arm = {x=0,y=2.65,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:menacing_student_pants", {
	description = ("Menacing Student Pants \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+3% Attack Damage \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "accessories_JoJo_pants_inv.png",
	acc_defense = 1,
	acc_offense = 3,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.5,y=2.5}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("accessories_JoJo_leg.png"),
	acc_pos_l_leg = {x=0,y=2.5,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.5,y=2.5}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("accessories_JoJo_leg.png"),
	acc_pos_r_leg = {x=0,y=2.5,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},

})

minetest.register_tool("equippable_accessories:black_cat_ears", {
	description = ("Black Cat Ears \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+5% walking speed \n").. "" ..core.colorize("#aaaaaa","+1 Max HP").. ""),
	inventory_image = "accessories_black_cat_ears_inv.png",
	acc_walkSpeed = 0.05,
	acc_hpBonus = 1,

	acc_slot = "headtop_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("accessory_cat_ears.b3d"),
	acc_texture_head = ("accessories_black_cat_ears.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:golden_bracelet", {
	description = ("Golden bracelet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "accessories_golden_bracelet_inv.png",
	acc_defense = 2,


	acc_slot = "both_hand_acc",
	acc_size_l_arm = ({x=1.525,y=1.45}),
	acc_model_l_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_l_arm = ("accessories_golden_bracelet.png"),
	acc_pos_l_arm = {x=0,y=2.8,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=1.525,y=1.45}),
	acc_model_r_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_r_arm = ("accessories_golden_bracelet.png"),
	acc_pos_r_arm = {x=0,y=2.8,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {l_arm_accessory = 1,r_arm_accessory = 1},
})


minetest.register_tool("equippable_accessories:golden_halo", {
	description = ("Golden Halo \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+6 Max HP").. ""),
	inventory_image = "accessories_golden_halo_inv.png",
	acc_hpBonus = 6,

	acc_slot = "headtop_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("accessory_golden_halo.b3d"),
	acc_texture_head = ("accessories_golden_halo.png"),
	acc_pos_head = {x=0,y=5.50,z=0},
	acc_anim_head = {x=0,y=0},
	acc_glow_head = 10,

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:angel_wings", {
	description = ("Angel Wings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","5.25 Flight Time \n").. "" ..core.colorize("#aaaaaa","0.65 Flight Force \n").. "" ..core.colorize("#aaaaaa","Allows slow fall \n").. "" ..core.colorize("#aaaaaa","+4 Max HP").. ""),
	inventory_image = "accessories_angel_wings_inv.png",
	acc_hpBonus = 4,
	acc_flight_time = 5.25,
	acc_flight_force = 0.65,

	acc_slot = "wing_acc",

	acc_size_body = ({x=3.0,y=3.0}),
	acc_model_body = ("accessory_wings.b3d"),
	acc_texture_body = ("accessories_angel_wings.png"),
	acc_pos_body = {x=0,y=4.0,z=-1.1},
	acc_anim_body = {x=1,y=20},

groups = {body_accessory = 1,acc_wings=1},
})

minetest.register_tool("equippable_accessories:mining_helmet", {
	description = ("Mining Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","Provides light \n").. "" ..core.colorize("#aaaaaa","+25% Digging Speed \n").. "" ..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "accessories_mining_helmet_inv.png",
	acc_defense = 3,
	acc_digSpeed = 25,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_mining_helmet.b3d"),
	acc_texture_head = ("accessories_mining_helmet.png"),
	acc_pos_head = {x=0,y=2.5,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:overalls", {
	description = ("overalls \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+15% Digging Speed \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "accessories_overalls_inv.png",
	acc_defense = 1,
	acc_digSpeed = 15,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=3.0,y=2.5}),
	acc_model_l_leg = ("simple_hand.b3d"),
	acc_texture_l_leg = ("accessories_overalls_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=3.0,y=2.5}),
	acc_model_r_leg = ("simple_hand.b3d"),
	acc_texture_r_leg = ("accessories_overalls_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

	acc_size_body = ({x=3.05,y=2.5}),
	acc_model_body = ("simple_body.b3d"),
	acc_texture_body = ("accessories_overalls_top.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

groups = {body_accessory = 1,l_leg_accessory = 1,r_leg_accessory = 1},

})

minetest.register_tool("equippable_accessories:mining_gloves", {
	description = ("Mining Gloves \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+20% Digging Speed \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "accessories_mining_gloves_inv.png",
	acc_defense = 1,
	acc_digSpeed = 20,
	acc_slot = "gloves_acc",

	acc_size_l_arm = ({x=1.25,y=1.5}),
	acc_model_l_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_l_arm = ("accessories_mining_gloves.png"),
	acc_pos_l_arm = {x=0,y=4.0,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=1.25,y=1.5}),
	acc_model_r_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_r_arm = ("accessories_mining_gloves.png"),
	acc_pos_r_arm = {x=0,y=4.0,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:white_headband", {
	description = ("White Headband \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+5% Digging Speed \n").. "" ..core.colorize("#aaaaaa","+1% Dodge Chance \n").. "" ..core.colorize("#aaaaaa","+5% Attack Damage").. ""),
	inventory_image = "accessories_white_headband_inv.png",
	acc_offense = 5,
	acc_digSpeed = 5,
	acc_dodgeChance = 1,

	acc_slot = "forehead_acc",
	acc_size_head = ({x=2.8,y=2.8}),
	acc_model_head = ("accessory_headband.b3d"),
	acc_texture_head = ("accessories_white_headband.png"),
	acc_pos_head = {x=0,y=1.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:gaming_headphones", {
	description = ("Gaming Headphones \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+12% Walking speed \n").. "" ..core.colorize("#aaaaaa","+4% Digging Speed \n").. "" ..core.colorize("#aaaaaa","+4% Attack Damage").. ""),
	inventory_image = "accessories_gaming_headphones_inv.png",
	acc_offense = 4,
	acc_digSpeed = 4,
	acc_walkSpeed = 0.12,

	acc_slot = "ear_acc",
	acc_size_head = ({x=2.25,y=2.25}),
	acc_model_head = ("accessory_headphones.b3d"),
	acc_texture_head = ("accessories_gaming_headphones.png"),
	acc_pos_head = {x=0,y=2,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})


minetest.register_tool("equippable_accessories:lmao_emoji_mask", {
	description = ("LMAO emoji mask \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+8% Walking Speed \n").. "" ..core.colorize("#aaaaaa","1 Defense \n").. "" ..core.colorize("#aaaaaa","+3% Attack damage\n").. "" ..core.colorize("#aaaaaa","+420% cancer").. ""),
	inventory_image = "accessories_lmao_emoji_mask_inv.png",
	acc_defense = 1,
	acc_offense = 3,
	acc_walkSpeed = 0.08,

	acc_slot = "mask_acc",
	acc_size_head = ({x=2.125,y=2.125}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("accessories_lmao_emoji_mask.png"),
	acc_pos_head = {x=0,y=2.1,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:steel_shield", {
	description = ("Steel shield \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+10% Dodge Chance \n").. "" ..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "accessories_steel_shield_inv.png",
	acc_defense = 3,
	acc_dodgeChance = 10,
	acc_slot = "shield_acc",

	acc_size_l_arm = ({x=2.5,y=2.5}),
	acc_model_l_arm = ("simple_layered_shield.b3d"),
	acc_texture_l_arm = ("accessories_steel_shield.png"),
	acc_pos_l_arm = {x=2,y=4.0,z=1},
	acc_anim_l_arm = {x=0,y=0},

groups = {l_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:bronze_shield", {
	description = ("bronze shield \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+7% Dodge Chance \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "accessories_bronze_shield_inv.png",
	acc_defense = 2,
	acc_dodgeChance = 7,
	acc_slot = "shield_acc",

	acc_size_l_arm = ({x=2.5,y=2.5}),
	acc_model_l_arm = ("simple_layered_shield.b3d"),
	acc_texture_l_arm = ("accessories_bronze_shield.png"),
	acc_pos_l_arm = {x=2,y=4.0,z=1},
	acc_anim_l_arm = {x=0,y=0},

groups = {l_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:skull_shield", {
	description = ("Skull shield \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+12% Dodge Chance \n").. "" ..core.colorize("#aaaaaa","4 Defense").. ""),
	inventory_image = "accessories_skull_shield_inv.png",
	acc_defense = 4,
	acc_dodgeChance = 12,
	acc_slot = "shield_acc",

	acc_size_l_arm = ({x=2.5,y=2.5}),
	acc_model_l_arm = ("simple_layered_shield.b3d"),
	acc_texture_l_arm = ("accessories_skull_shield.png"),
	acc_pos_l_arm = {x=2,y=4.0,z=1},
	acc_anim_l_arm = {x=0,y=0},

groups = {l_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:obsidian_shield", {
	description = ("Obsidian shield \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+14% Dodge Chance \n").. "" ..core.colorize("#aaaaaa","Grants 4 Seconds of fire block imunity\n").. "" ..core.colorize("#aaaaaa","5 Defense").. ""),
	inventory_image = "accessories_obsidian_shield_inv.png",
	acc_defense = 5,
	acc_dodgeChance = 14,
	acc_fireRes = 4,
	acc_slot = "shield_acc",

	acc_size_l_arm = ({x=2.5,y=2.5}),
	acc_model_l_arm = ("simple_layered_shield.b3d"),
	acc_texture_l_arm = ("accessories_obsidian_shield.png"),
	acc_pos_l_arm = {x=2,y=4.0,z=1},
	acc_anim_l_arm = {x=0,y=0},

groups = {l_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:santa_hat", {
	description = ("Santa Hat \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+3 Max HP").. ""),
	inventory_image = "accessories_santa_hat_inv.png",
	acc_hpBonus = 3,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.4,y=2.4}),
	acc_model_head = ("accessory_santa_hat.b3d"),
	acc_texture_head = ("accessories_santa_hat.png"),
	acc_pos_head = {x=0,y=3.5,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})


minetest.register_tool("equippable_accessories:white_baseball_cap", {
	description = ("White Baseball Cap \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+4% Attack Damage \n").. "" ..core.colorize("#aaaaaa","+5% walking speed \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "accessories_white_baseball_cap_inv.png",
	acc_defense = 1,
	acc_offense = 4,
	acc_walkSpeed = 0.05,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_cap.b3d"),
	acc_texture_head = ("accessories_white_baseball_cap.png"),
	acc_pos_head = {x=0,y=3.5,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:heart_amulet", {
	description = ("Heart amulet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+0.1 HP regeneration \n").. "" ..core.colorize("#aaaaaa","+4 Max HP").. ""),
	inventory_image = "accessories_heart_amulet_inv.png",
	acc_hpBonus = 4,
	acc_hpRegen = 0.1,
	acc_slot = "amulet_acc",

	acc_size_body = ({x=2.9,y=2.9}),
	acc_model_body = ("simple_body.b3d"),
	acc_texture_body = ("accessories_heart_amulet.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},


groups = {body_accessory = 1},
})

minetest.register_tool("equippable_accessories:enchanted_stone_shield", {
	description = ("Enchanted Stone shield \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+13% Dodge Chance \n").. "" ..core.colorize("#aaaaaa","+7% Attack Damage\n").. "" ..core.colorize("#aaaaaa","5 Defense").. ""),
	inventory_image = "accessories_enchanted_stone_shield_inv.png",
	acc_defense = 5,
	acc_dodgeChance = 13,
	acc_offense = 7,
	acc_slot = "shield_acc",

	acc_size_l_arm = ({x=2.5,y=2.5}),
	acc_model_l_arm = ("simple_layered_shield.b3d"),
	acc_texture_l_arm = ("accessories_enchanted_stone_shield.png"),
	acc_pos_l_arm = {x=2,y=4.0,z=1},
	acc_anim_l_arm = {x=0,y=0},
	acc_glow_l_arm = 10,

groups = {l_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:enchanted_stone_gauntlets", {
	description = ("Enchanted Stone Gauntlets\n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+10% Attack Damage \n").. "" ..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "accessories_enchanted_stone_gauntlets_inv.png",
	acc_defense = 3,
	acc_offense = 10,
	acc_slot = "gloves_acc",

	acc_size_l_arm = ({x=1.25,y=1.5}),
	acc_model_l_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_l_arm = ("accessories_enchanted_stone_gauntlets.png"),
	acc_pos_l_arm = {x=0,y=4.0,z=0},
	acc_anim_l_arm = {x=0,y=0},
	acc_glow_l_arm = 10,

	acc_size_r_arm = ({x=1.25,y=1.5}),
	acc_model_r_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_r_arm = ("accessories_enchanted_stone_gauntlets.png"),
	acc_pos_r_arm = {x=0,y=4.0,z=0},
	acc_anim_r_arm = {x=0,y=0},
	acc_glow_r_arm = 10,

groups = {l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:steel_gauntlets", {
	description = ("Steel Gauntlets\n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+4% Attack Damage \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "accessories_steel_gauntlets_inv.png",
	acc_defense = 2,
	acc_offense = 4,
	acc_slot = "gloves_acc",

	acc_size_l_arm = ({x=1.25,y=1.5}),
	acc_model_l_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_l_arm = ("accessories_steel_gauntlets.png"),
	acc_pos_l_arm = {x=0,y=4.0,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=1.25,y=1.5}),
	acc_model_r_arm = ("simple_helmet_cuboid.b3d"),
	acc_texture_r_arm = ("accessories_steel_gauntlets.png"),
	acc_pos_r_arm = {x=0,y=4.0,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:armored_boots", {
	description = ("Armored Boots \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+20% Walking speed \n").. ""..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "accessories_armored_boots_inv.png",
	acc_defense = 3,
	acc_walkSpeed = 0.20,

	acc_slot = "boots_acc",

	acc_size_l_leg = ({x=2.6,y=2.6}),
	acc_model_l_leg = ("boot.b3d"),
	acc_texture_l_leg = ("accessories_armored_boots.png"),
	acc_pos_l_leg = {x=0,y=4.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.6,y=2.6}),
	acc_model_r_leg = ("boot.b3d"),
	acc_texture_r_leg = ("accessories_armored_boots.png"),
	acc_pos_r_leg = {x=0,y=4.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})