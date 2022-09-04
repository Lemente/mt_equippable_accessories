
--
-- copper armor
--

minetest.register_tool("equippable_accessories:copper_helmet", {
	description = ("Copper Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "accessories_copper_helmet_inv.png",
	acc_defense = 2,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("helmet_1.b3d"),
	acc_texture_head = ("accessories_copper_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:copper_chainmail", {
	description = ("Copper Chainmail \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "accessories_copper_chainmail_inv.png",
	acc_defense = 3,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("accessories_copper_chainmail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("accessories_copper_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("accessories_copper_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:copper_leggings", {
	description = ("Copper Leggings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "accessories_copper_leggings_inv.png",
	acc_defense = 2,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("accessories_copper_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("accessories_copper_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

---
--- tin armor
---

minetest.register_tool("equippable_accessories:tin_helmet", {
	description = ("Tin Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "accessories_tin_helmet_inv.png",
	acc_defense = 3,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("helmet_1.b3d"),
	acc_texture_head = ("accessories_tin_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:tin_chainmail", {
	description = ("Tin Chainmail \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "accessories_tin_chainmail_inv.png",
	acc_defense = 3,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("accessories_tin_chainmail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("accessories_tin_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("accessories_tin_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:tin_leggings", {
	description = ("Tin Leggings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "accessories_tin_leggings_inv.png",
	acc_defense = 3,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("accessories_tin_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("accessories_tin_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})


---
--- bronze armor
---

minetest.register_tool("equippable_accessories:bronze_helmet", {
	description = ("Bronze Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","4 Defense").. ""),
	inventory_image = "accessories_bronze_helmet_inv.png",
	acc_defense = 4,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("helmet_1.b3d"),
	acc_texture_head = ("accessories_bronze_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:bronze_scalemail", {
	description = ("Bronze Scalemail \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","4 Defense").. ""),
	inventory_image = "accessories_bronze_scalemail_inv.png",
	acc_defense = 4,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("accessories_bronze_scalemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("accessories_bronze_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("accessories_bronze_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:bronze_leggings", {
	description = ("Bronze Leggings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","3 Defense").. ""),
	inventory_image = "accessories_bronze_leggings_inv.png",
	acc_defense = 3,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("accessories_bronze_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("accessories_bronze_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

---
--- steel armor
---

minetest.register_tool("equippable_accessories:steel_helmet", {
	description = ("Steel Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","4 Defense").. ""),
	inventory_image = "accessories_steel_helmet_inv.png",
	acc_defense = 4,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("accessories_steel_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:steel_scalemail", {
	description = ("Steel Scalemail \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","5 Defense").. ""),
	inventory_image = "accessories_steel_scalemail_inv.png",
	acc_defense = 5,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("accessories_steel_scalemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("accessories_steel_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("accessories_steel_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:steel_leggings", {
	description = ("Steel Leggings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","4 Defense").. ""),
	inventory_image = "accessories_steel_leggings_inv.png",
	acc_defense = 4,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("accessories_steel_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("accessories_steel_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},

})

---
--- golden armor
---

minetest.register_tool("equippable_accessories:golden_helmet", {
	description = ("Golden Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","6 Defense").. ""),
	inventory_image = "accessories_golden_helmet_inv.png",
	acc_defense = 6,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("simple_winged_helmet.b3d"),
	acc_texture_head = ("accessories_golden_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:golden_platemail", {
	description = ("Golden Platemail \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","7 Defense").. ""),
	inventory_image = "accessories_golden_platemail_inv.png",
	acc_defense = 7,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("accessories_golden_platemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("accessories_golden_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("accessories_golden_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:golden_leggings", {
	description = ("Golden Leggings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","6 Defense").. ""),
	inventory_image = "accessories_golden_leggings_inv.png",
	acc_defense = 6,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("accessories_golden_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("accessories_golden_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},

})

---
--- mithril armor
---

minetest.register_tool("equippable_accessories:mithril_helmet", {
	description = ("Mithril Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+4 Max HP \n").. "" ..core.colorize("#aaaaaa","8 Defense").. ""),
	inventory_image = "accessories_mithril_helmet_inv.png",
	acc_defense = 8,
	acc_hpBonus = 4,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_horned_helmet_1.b3d"),
	acc_texture_head = ("accessories_mithril_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:mithril_platemail", {
	description = ("Mithril Platemail \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+7% Attack damage \n").. "" ..core.colorize("#aaaaaa","9 Defense").. ""),
	inventory_image = "accessories_mithril_platemail_inv.png",
	acc_defense = 9,
	acc_offense = 7,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("accessories_mithril_platemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("accessories_mithril_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("accessories_mithril_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:mithril_leggings", {
	description = ("mithril Leggings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","Walking Speed + 15% \n").. "" ..core.colorize("#aaaaaa","8 Defense").. ""),
	inventory_image = "accessories_mithril_leggings_inv.png",
	acc_defense = 8,
	acc_walkSpeed = 0.15,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("accessories_mithril_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("accessories_mithril_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},

})

---
--- silver armor
---

minetest.register_tool("equippable_accessories:silver_helmet", {
	description = ("Silver Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","5 Defense").. ""),
	inventory_image = "accessories_silver_helmet_inv.png",
	acc_defense = 5,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("helmet_1.b3d"),
	acc_texture_head = ("accessories_silver_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:silver_platemail", {
	description = ("Silver Platemail \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","6 Defense").. ""),
	inventory_image = "accessories_silver_platemail_inv.png",
	acc_defense = 6,
	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("accessories_silver_platemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("accessories_silver_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("accessories_silver_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:silver_leggings", {
	description = ("Silver Leggings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","5 Defense").. ""),
	inventory_image = "accessories_silver_leggings_inv.png",
	acc_defense = 5,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("accessories_silver_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("accessories_silver_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},

})


--
-- cactus armor
--

minetest.register_tool("equippable_accessories:cactus_helmet", {
	description = ("Cactus Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+2% Attack damage \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "accessories_cactus_helmet_inv.png",
	acc_defense = 1,
	acc_offense = 2,
	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("accessories_cactus_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:cactus_armor", {
	description = ("Cactus armor \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+3% Attack damage \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "accessories_cactus_armor_inv.png",
	acc_defense = 2,
	acc_offense = 3,
	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("accessories_cactus_armor.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("accessories_cactus_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("accessories_cactus_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:cactus_leggings", {
	description = ("Cactus Leggings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+2% Attack damage \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "accessories_cactus_leggings_inv.png",
	acc_defense = 1,
	acc_offense = 2,
	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("accessories_cactus_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("accessories_cactus_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})


--
-- molten armor
--

minetest.register_tool("equippable_accessories:molten_helmet", {
	description = ("Molten Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+7% Attack damage \n").. "" ..core.colorize("#aaaaaa","9 Defense").. ""),
	inventory_image = "accessories_molten_helmet_inv.png",
	acc_defense = 9,
	acc_offense = 7,
	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_horned_helmet_1.b3d"),
	acc_texture_head = ("accessories_molten_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},
	acc_glow_head = 20,

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:molten_armor", {
	description = ("Molten armor \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+7% Attack damage \n").. "" ..core.colorize("#aaaaaa","10 Defense").. ""),
	inventory_image = "accessories_molten_armor_inv.png",
	acc_defense = 10,
	acc_offense = 7,
	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("accessories_molten_armor.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},
	acc_glow_body = 20,

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("accessories_molten_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},
	acc_glow_l_arm = 20,

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("accessories_molten_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},
	acc_glow_r_arm = 20,

groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:molten_leggings", {
	description = ("Molten Leggings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+6% Attack damage \n").. "" ..core.colorize("#aaaaaa","8 Defense").. ""),
	inventory_image = "accessories_molten_leggings_inv.png",
	acc_defense = 8,
	acc_offense = 6,
	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("accessories_molten_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},
	acc_glow_l_leg = 20,

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("accessories_molten_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},
	acc_glow_r_leg = 20,

groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

--
-- wooden armor
--

minetest.register_tool("equippable_accessories:wooden_helmet", {
	description = ("Wooden Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","1 Defense").. ""),
	inventory_image = "accessories_wooden_helmet_inv.png",
	acc_defense = 1,
	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("simple_helmet_cuboid.b3d"),
	acc_texture_head = ("accessories_wooden_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:wooden_armor", {
	description = ("Wooden armor \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "accessories_wooden_armor_inv.png",
	acc_defense = 2,
	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("simple_body.b3d"),
	acc_texture_body = ("accessories_wooden_armor.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

groups = {body_accessory = 1},
})

minetest.register_tool("equippable_accessories:wooden_leggings", {
	description = ("Wooden Leggings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","2 Defense").. ""),
	inventory_image = "accessories_wooden_leggings_inv.png",
	acc_defense = 1,
	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("simple_hand.b3d"),
	acc_texture_l_leg = ("accessories_wooden_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("simple_hand.b3d"),
	acc_texture_r_leg = ("accessories_wooden_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},
})

---
--- dungeon armor
---

minetest.register_tool("equippable_accessories:dungeon_helmet", {
	description = ("Dungeon Warrior Helmet \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+7% Attack damage \n").. "" ..core.colorize("#aaaaaa","7 Defense").. ""),
	inventory_image = "accessories_dungeon_helmet_inv.png",
	acc_defense = 7,
	acc_offense = 7,

	acc_slot = "helmet_acc",
	acc_size_head = ({x=2.5,y=2.5}),
	acc_model_head = ("accessory_horned_helmet_1.b3d"),
	acc_texture_head = ("accessories_dungeon_helmet.png"),
	acc_pos_head = {x=0,y=2.0,z=0},
	acc_anim_head = {x=0,y=0},

groups = {head_accessory = 1},
})

minetest.register_tool("equippable_accessories:dungeon_platemail", {
	description = ("Dungeon Warrior Platemail \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+8% Attack damage \n").. "" ..core.colorize("#aaaaaa","8 Defense").. ""),
	inventory_image = "accessories_dungeon_platemail_inv.png",
	acc_defense = 8,
	acc_offense = 8,

	acc_slot = "armor_acc",

	acc_size_body = ({x=2.5,y=2.5}),
	acc_model_body = ("double_body.b3d"),
	acc_texture_body = ("accessories_dungeon_platemail.png"),
	acc_pos_body = {x=0,y=3.0,z=0},
	acc_anim_body = {x=0,y=0},

	acc_size_l_arm = ({x=2.4,y=2.4}),
	acc_model_l_arm = ("double_hand.b3d"),
	acc_texture_l_arm = ("accessories_dungeon_l_arm.png"),
	acc_pos_l_arm = {x=0,y=1.75,z=0},
	acc_anim_l_arm = {x=0,y=0},

	acc_size_r_arm = ({x=2.4,y=2.4}),
	acc_model_r_arm = ("double_hand.b3d"),
	acc_texture_r_arm = ("accessories_dungeon_r_arm.png"),
	acc_pos_r_arm = {x=0,y=1.75,z=0},
	acc_anim_r_arm = {x=0,y=0},

groups = {body_accessory = 1,l_arm_accessory = 1,r_arm_accessory = 1},
})

minetest.register_tool("equippable_accessories:dungeon_leggings", {
	description = ("Dungeon Warrior Leggings \n" ..core.colorize("#aaaaaa","Equippable \n").. "" ..core.colorize("#aaaaaa","+6% Attack damage\n").. "" ..core.colorize("#aaaaaa","8 Defense").. ""),
	inventory_image = "accessories_dungeon_leggings_inv.png",
	acc_defense = 7,
	acc_offense = 6,

	acc_slot = "pants_acc",

	acc_size_l_leg = ({x=2.4,y=2.4}),
	acc_model_l_leg = ("double_hand.b3d"),
	acc_texture_l_leg = ("accessories_dungeon_leg.png"),
	acc_pos_l_leg = {x=0,y=2.75,z=0},
	acc_anim_l_leg = {x=0,y=0},

	acc_size_r_leg = ({x=2.4,y=2.4}),
	acc_model_r_leg = ("double_hand.b3d"),
	acc_texture_r_leg = ("accessories_dungeon_leg.png"),
	acc_pos_r_leg = {x=0,y=2.75,z=0},
	acc_anim_r_leg = {x=0,y=0},

groups = {l_leg_accessory = 1,r_leg_accessory = 1},

})
