uncommon_accessories = {
"equippable_accessories:boots_of_haste",
"equippable_accessories:heart_amulet",
"equippable_accessories:enchanted_stone_shield",
"equippable_accessories:enchanted_stone_gauntlets",
}


minetest.register_node("equippable_accessories:acc_chect_uncommon", {
	description = ("Accessory Chest - UnCommon \n" ..core.colorize("#aaaaaa","Break it to get 1 random uncommon accessory \n").. "" ..core.colorize("#aaaaaa","can sometimes be found 2000 nodes deep underground").. ""),
	tiles = {
		"accessories_chest_uncommon_top.png",
		"accessories_chest_uncommon_top.png",
		"accessories_chest_uncommon_side.png",
		"accessories_chest_uncommon_side.png",
		"accessories_chest_uncommon_side.png",
		"accessories_chest_uncommon_front.png"
	},
	is_ground_content = false,
	groups = {oddly_breakable_by_hand = 3},
	drop = "",
	on_dig = function(pos, node, digger)

local gotten_acc = ItemStack({name = uncommon_accessories[math.random(#uncommon_accessories)]})

if minetest.get_modpath("tool_modifiers") then
if math.random(1,2) == 2 then
ApplyAccessoryMod(gotten_acc,accessory_modifiers,math.random(#accessory_modifiers),nil)
end end

	minetest.add_item(pos,gotten_acc)
	minetest.node_dig(pos,node,digger)
	end,
})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "equippable_accessories:acc_chect_uncommon",
		wherein        = "default:stone",
		clust_scarcity = 25 * 25 * 25,
		clust_num_ores = 1,
		clust_size     = 1,
		y_max          = -2000,
		y_min          = -31000,
	})