AccessoryWingsFlight = true
AccessoryVisualReapplyInterval = 60



local modpath = minetest.get_modpath(minetest.get_current_modname())
dofile(modpath.."/accessories.lua")
dofile(modpath.."/dyes.lua")
dofile(modpath.."/accessory_crafts.lua")

dofile(modpath.."/accessory_chest.lua")

dofile(modpath.."/armors.lua")
dofile(modpath.."/armor_crafts.lua")

dofile(modpath.."/rings.lua")
dofile(modpath.."/ring_crafts.lua")

accessorySets = {
{"copper_set",{"equippable_accessories:copper_helmet","equippable_accessories:copper_chainmail","equippable_accessories:copper_leggings"},{{"IntStat","accessory_defense",2}},"2 Defense"},
{"tin_set",{"equippable_accessories:tin_helmet","equippable_accessories:tin_chainmail","equippable_accessories:tin_leggings"},{{"IntStat","accessory_defense",2}},"2 Defense"},
{"bronze_set",{"equippable_accessories:bronze_helmet","equippable_accessories:bronze_scalemail","equippable_accessories:bronze_leggings"},{{"IntStat","accessory_defense",3}},"3 Defense"},
{"steel_set",{"equippable_accessories:steel_helmet","equippable_accessories:steel_scalemail","equippable_accessories:steel_leggings"},{{"IntStat","accessory_defense",3}},"3 Defense"},
{"silver_set",{"equippable_accessories:silver_helmet","equippable_accessories:silver_platemail","equippable_accessories:silver_leggings"},{{"IntStat","accessory_defense",4}},"4 Defense"},
{"golden_set",{"equippable_accessories:golden_helmet","equippable_accessories:golden_platemail","equippable_accessories:golden_leggings"},{{"IntStat","accessory_defense",5}},"5 Defense"},
{"mithril_set",{"equippable_accessories:mithril_helmet","equippable_accessories:mithril_platemail","equippable_accessories:mithril_leggings"},{{"IntStat","accessory_defense",6},{"IntStat","accessory_offense",14}},"6 Defense & +14% Attack damage"},
{"JoJo_set",{"equippable_accessories:menacing_student_hat","equippable_accessories:menacing_student_jacket","equippable_accessories:menacing_student_pants"},{{"IntStat","accessory_offense",17},{"FloatStat","accessory_walkSpeed",0.30},{"FloatStat","accessory_jumpHeight",0.40}},"+17% Attack damage, 30% Walking speed \n and 40% Jump force"},
{"miner_set",{"equippable_accessories:mining_helmet","equippable_accessories:overalls","equippable_accessories:mining_gloves"},{{"IntStat","accessory_digSpeed",30}},"+30% Digging Speed"},
{"cactus_set",{"equippable_accessories:cactus_helmet","equippable_accessories:cactus_armor","equippable_accessories:cactus_leggings"},{{"IntStat","accessory_offense",3},{"IntStat","accessory_thorns",30}},"+3% Attack Damage \n attacker takes back 30% of their attack's original damage"},
{"molten_set",{"equippable_accessories:molten_helmet","equippable_accessories:molten_armor","equippable_accessories:molten_leggings"},{{"FloatStat","accessory_walkSpeed",0.40},{"IntStat","accessory_fireRes",8}},"+40% Walking Speed \n 8 second immunity to fire blocks, such as lava"},
{"wooden_set",{"equippable_accessories:wooden_helmet","equippable_accessories:wooden_armor","equippable_accessories:wooden_leggings"},{{"IntStat","accessory_defense",1}},"1 Defense"},
{"dungeon_set",{"equippable_accessories:dungeon_helmet","equippable_accessories:dungeon_platemail","equippable_accessories:dungeon_leggings"},{{"IntStat","accessory_hpBonus",2},{"IntStat","accessory_offense",20}},"+2 Max HP & 20% Attack damage"},
}


function AddAccessorySet(set_name,set_parts,set_bonuses,set_bonus_text)
table.insert(accessorySets, {set_name,set_parts,set_bonuses,set_bonus_text})
end



AccessoryCustomStats = {}


CountOfAccInvSlots = 24



DefToSaveOneHP = 5

player_accessory_slots = {
"helmet_acc",
"eye_acc",
"l_hand_acc",
"wing_acc",
"l_ring_acc",
"headtop_acc",
"ear_acc",
"wip1_acc",
"armor_acc",
"gloves_acc",
"shield_acc",
"amulet_acc",
"topshirt_acc",
"mask_acc",
"forehead_acc",
"wip2_acc",
"pants_acc",
"boots_acc",
"r_hand_acc",
"neck_acc",
"r_ring_acc",
"mouth_acc",
"wip3_acc",
"wip4_acc",
}



player_acc_visuals = {}

minetest.register_on_joinplayer(function(player)

 acc_fire_ressistence_bg = 
	player:hud_add({
	hud_elem_type = "statbar",
	name = "acc_fireres_bg",
	text = "accessories_fireres_bg.png",
	number = 0,
	scale = {x = 0, y = 0},
	position = {x = 0.4, y = 0.6},
	offset = {x = 0, y = 0},
	alignment = {x = 0, y = -1}
	})

 acc_fire_ressistence_fg = 
	player:hud_add({
	hud_elem_type = "statbar",
	name = "acc_fireres_fg",
	text = "accessories_fireres.png",
	number = 0,
	scale = {x = 0, y = 0},
	position = {x = 0.4, y = 0.6},
	offset = {x = 0, y = 0},
	alignment = {x = 0, y = -1}
	})

local name = player:get_player_name()
local playerMeta = player:get_meta()

if playerMeta:get_string("accessory_inv") == "" then
local temp_empty_accs_table = {}
for i=1,CountOfAccInvSlots do
temp_empty_accs_table[i] = ""
end
playerMeta:set_string("accessory_inv",(minetest.serialize(temp_empty_accs_table)))
end

if playerMeta:get_string("accessory_vanity_inv") == "" then
local temp_empty_vanaccs_table = {}
for i=1,CountOfAccInvSlots do
temp_empty_vanaccs_table[i] = ""
end
playerMeta:set_string("accessory_vanity_inv",(minetest.serialize(temp_empty_vanaccs_table)))
end

if playerMeta:get_string("accessory_dye_inv") == "" then
local temp_empty_dyeaccs_table = {}
for i=1,CountOfAccInvSlots do
temp_empty_dyeaccs_table[i] = ""
end
playerMeta:set_string("accessory_dye_inv",(minetest.serialize(temp_empty_dyeaccs_table)))
end


local accessory_content = minetest.deserialize(playerMeta:get_string("accessory_inv"))
local accessory_vanity_content = minetest.deserialize(playerMeta:get_string("accessory_vanity_inv"))
local accessory_dye_content = minetest.deserialize(playerMeta:get_string("accessory_dye_inv"))


----------------------
minetest.create_detached_inventory("accs_"..name.."",{
allow_move = function(inv,from_list,from_index,to_list,to_index,count,player)
return 0
end,
allow_put = function(inv,listname,index,stack,player)

if stack:get_definition().acc_slot ~= nil then
if stack:get_definition().acc_slot == player_accessory_slots[index] and (inv:get_stack("accs",index):get_name() ~= stack:get_name()) then
return 1
else
if stack:get_definition().acc_slot  == "both_hand_acc" and (player_accessory_slots[index] == "l_hand_acc" or player_accessory_slots[index] == "r_hand_acc") then
return 1
else
if stack:get_definition().acc_slot  == "both_ring_acc" and (player_accessory_slots[index] == "l_ring_acc" or player_accessory_slots[index] == "r_ring_acc") then
return 1
else
return 0

end
end
end
else
return 0
end

end,
on_put = function(inv,listname,index,stack,player)

local accSlot = player_accessory_slots[index]

local vanity_inv = minetest.get_inventory({type="detached",name="accs_vanity_"..name..""})
local current_vanity_stack = vanity_inv:get_stack("accs_vanity",index)
if current_vanity_stack:get_definition().acc_slot ~= nil then
update_player_acc_visuals(player,current_vanity_stack,1,accSlot,index)
else
update_player_acc_visuals(player,stack,1,accSlot,index)
end




local ser_acc_table = {}

for serAcc,accStack in ipairs(inv:get_list("accs")) do
table.insert(ser_acc_table, accStack:to_string())

end

playerMeta:set_string("accessory_inv",(minetest.serialize(ser_acc_table)))

update_accessory_stats(player)
display_accessory_UI(player)

end,
on_take = function(inv,listname,index,stack,player)
local accSlot = player_accessory_slots[index]

local vanity_inv = minetest.get_inventory({type="detached",name="accs_vanity_"..name..""})
local current_vanity_stack = vanity_inv:get_stack("accs_vanity",index)
if current_vanity_stack:get_definition().acc_slot ~= nil then
update_player_acc_visuals(player,current_vanity_stack,1,accSlot,index)
else
update_player_acc_visuals(player,stack,0,accSlot,index)
end

local ser_acc_table = {}

for serAcc,accStack in ipairs(inv:get_list("accs")) do
table.insert(ser_acc_table, accStack:to_string())

end

playerMeta:set_string("accessory_inv",(minetest.serialize(ser_acc_table)))

update_accessory_stats(player)
display_accessory_UI(player)

end,
})
-----------------
minetest.create_detached_inventory("accs_vanity_"..name.."",{
allow_move = function(inv,from_list,from_index,to_list,to_index,count,player)
return 0
end,
allow_put = function(inv,listname,index,stack,player)

if stack:get_definition().acc_slot ~= nil then
if stack:get_definition().acc_slot == player_accessory_slots[index] and (inv:get_stack("accs_vanity",index):get_name() ~= stack:get_name()) then
return 1
else
if stack:get_definition().acc_slot  == "both_hand_acc" and (player_accessory_slots[index] == "l_hand_acc" or player_accessory_slots[index] == "r_hand_acc") then
return 1
else
if stack:get_definition().acc_slot  == "both_ring_acc" and (player_accessory_slots[index] == "l_ring_acc" or player_accessory_slots[index] == "r_ring_acc") then
return 1
else
return 0

end
end
end
else
return 0
end

end,
on_put = function(inv,listname,index,stack,player)

local accSlot = player_accessory_slots[index]
update_player_acc_visuals(player,stack,1,accSlot,index)

local ser_acc_table = {}

for serAcc,accStack in ipairs(inv:get_list("accs_vanity")) do
table.insert(ser_acc_table, accStack:to_string())

end

playerMeta:set_string("accessory_vanity_inv",(minetest.serialize(ser_acc_table)))

end,
on_take = function(inv,listname,index,stack,player)
local accSlot = player_accessory_slots[index]


local a_inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
local current_acc_stack = a_inv:get_stack("accs",index)
if current_acc_stack:get_definition().acc_slot ~= nil then
update_player_acc_visuals(player,current_acc_stack,1,accSlot,index)
else
update_player_acc_visuals(player,stack,0,accSlot,index)
end


local ser_acc_table = {}

for serAcc,accStack in ipairs(inv:get_list("accs_vanity")) do
table.insert(ser_acc_table, accStack:to_string())

end

playerMeta:set_string("accessory_vanity_inv",(minetest.serialize(ser_acc_table)))

end,
})
-----------------
minetest.create_detached_inventory("accs_dye_"..name.."",{
allow_move = function(inv,from_list,from_index,to_list,to_index,count,player)
return 0
end,
allow_put = function(inv,listname,index,stack,player)
if stack:get_definition().accessory_dye ~= nil then
return 1
else
return 0
end
end,
on_put = function(inv,listname,index,stack,player)

local accSlot = player_accessory_slots[index]
update_player_acc_visuals(player,stack,1,accSlot,index)


local vanity_inv = minetest.get_inventory({type="detached",name="accs_vanity_"..name..""})
local current_vanity_stack = vanity_inv:get_stack("accs_vanity",index)
if current_vanity_stack:get_definition().acc_slot ~= nil then
update_player_acc_visuals(player,current_vanity_stack,1,accSlot,index)
else
local a_inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
local current_acc_stack = a_inv:get_stack("accs",index)
if current_acc_stack:get_definition().acc_slot ~= nil then
update_player_acc_visuals(player,current_acc_stack,1,accSlot,index)
end
end

local ser_acc_table = {}
for serAcc,accStack in ipairs(inv:get_list("accs_dye")) do
table.insert(ser_acc_table, accStack:to_string())

end

playerMeta:set_string("accessory_dye_inv",(minetest.serialize(ser_acc_table)))

end,
on_take = function(inv,listname,index,stack,player)
local accSlot = player_accessory_slots[index]

local vanity_inv = minetest.get_inventory({type="detached",name="accs_vanity_"..name..""})
local current_vanity_stack = vanity_inv:get_stack("accs_vanity",index)
if current_vanity_stack:get_definition().acc_slot ~= nil then
update_player_acc_visuals(player,current_vanity_stack,1,accSlot,index)
else
local a_inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
local current_acc_stack = a_inv:get_stack("accs",index)
if current_acc_stack:get_definition().acc_slot ~= nil then
update_player_acc_visuals(player,current_acc_stack,1,accSlot,index)
end
end

local ser_acc_table = {}

for serAcc,accStack in ipairs(inv:get_list("accs_dye")) do
table.insert(ser_acc_table, accStack:to_string())

end

playerMeta:set_string("accessory_dye_inv",(minetest.serialize(ser_acc_table)))

end,
})

-------------------

if accessory_content ~= nil then

local accList = minetest.deserialize(playerMeta:get_string("accessory_inv"))
local accItemList = {}

for serAcc,accStack in ipairs(accList) do
	table.insert(accItemList, ItemStack(accStack))
end

local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})

inv:set_list("accs",accItemList)

end


if accessory_vanity_content ~= nil then

local accList = minetest.deserialize(playerMeta:get_string("accessory_vanity_inv"))
local accItemList = {}

for serAcc,accStack in ipairs(accList) do
	table.insert(accItemList, ItemStack(accStack))
end

local inv = minetest.get_inventory({type="detached",name="accs_vanity_"..name..""})

inv:set_list("accs_vanity",accItemList)

end


if accessory_dye_content ~= nil then

local accList = minetest.deserialize(playerMeta:get_string("accessory_dye_inv"))
local accItemList = {}

for serAcc,accStack in ipairs(accList) do
	table.insert(accItemList, ItemStack(accStack))
end

local inv = minetest.get_inventory({type="detached",name="accs_dye_"..name..""})

inv:set_list("accs_dye",accItemList)

end


minetest.after(0.5, function(player)

player_acc_visuals[name] = {head={},body={},l_arm={},r_arm={},l_leg={},r_leg={}}

local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
local vanity_inv = minetest.get_inventory({type="detached",name="accs_vanity_"..name..""})

for i = 1,CountOfAccInvSlots do
local current_acc_stack = vanity_inv:get_stack("accs_vanity",i)

if current_acc_stack:get_definition().acc_slot ~= nil then
local accessorySlot = player_accessory_slots[i]
update_player_acc_visuals(player,current_acc_stack,1,accessorySlot,i)
else
current_acc_stack = inv:get_stack("accs",i)
if current_acc_stack:get_definition().acc_slot ~= nil then
local accessorySlot = player_accessory_slots[i]
update_player_acc_visuals(player,current_acc_stack,1,accessorySlot,i)
end
end
end





update_accessory_stats(player)

end, player)

end)


minetest.register_on_leaveplayer(function(player)
	local name = player:get_player_name()
	player_acc_visuals[name] = nil
end)

function display_accessory_UI(player)

local name = player:get_player_name()
local playerMeta = player:get_meta()

AccInvForm =(
"size[8,11]"..
"list[current_player;main;0,6.5;8,4;]"..
"image[0,0.0;9.75,3.3;accessories_inv_bg.png]"..
"image[0.0,3.2;1.0,1.0;accessories_defense_icon.png]"..
"label[0.1,3.4;"..playerMeta:get_int("accessory_defense").."]"..
"image[1.0,3.2;1.0,1.0;accessories_offense_icon.png]"..
"label[1.1,3.4;"..playerMeta:get_int("accessory_offense").."%".."]"..
"image[2.0,3.2;1.0,1.0;accessories_hpRegen_icon.png]"..
"label[2.1,3.4;"..(math.ceil(playerMeta:get_float("accessory_hpRegen")*100)/100).."]"..
"image[3.0,3.2;1.0,1.0;accessories_hpBonus_icon.png]"..
"label[3.1,3.4;"..playerMeta:get_int("accessory_hpBonus").."]"..
"image[4.0,3.2;1.0,1.0;accessories_speed_icon.png]"..
"label[4.1,3.4;"..(math.ceil(playerMeta:get_float("accessory_walkSpeed")*100)/100).."]"..
"image[5.0,3.2;1.0,1.0;accessories_digSpeed_icon.png]"..
"label[5.1,3.4;"..playerMeta:get_int("accessory_digSpeed").."%".."]"..
"label[0.0,5.2;"..playerMeta:get_string("accessory_SetBonus").."]"..
"list[detached:accs_"..name..";accs;0,0.0;8,3;]"..
"button_exit[4,10.5;2,1;exit;Done]")

	minetest.show_formspec(name,"equippable_accessories:AccInvForm", AccInvForm) 

end


function display_accessory_vanity_UI(player)

local name = player:get_player_name()
local playerMeta = player:get_meta()

AccVanityInvForm =(
"size[8,11]"..
"list[current_player;main;0,6.5;8,4;]"..
"image[0,0.0;9.75,3.3;accessories_inv_bg.png]"..
"list[detached:accs_vanity_"..name..";accs_vanity;0,0.0;8,3;]"..
"button_exit[4,10.5;2,1;exit;Done]")

	minetest.show_formspec(name,"equippable_accessories:AccVanityInvForm", AccVanityInvForm) 

end

function display_accessory_dye_UI(player)

local name = player:get_player_name()
local playerMeta = player:get_meta()

AccdyeInvForm =(
"size[8,11]"..
"list[current_player;main;0,6.5;8,4;]"..
"image[0,0.0;9.75,3.3;accessories_inv_bg.png]"..
"list[detached:accs_dye_"..name..";accs_dye;0,0.0;8,3;]"..
"button_exit[4,10.5;2,1;exit;Done]")

	minetest.show_formspec(name,"equippable_accessories:AccdyeInvForm", AccdyeInvForm) 

end

function display_accessory_select_UI(player)

local name = player:get_player_name()
local playerMeta = player:get_meta()

AccSelectUI =(
"size[6,9]"..
"label[2.0,1.0;Accessories]"..
"button[1,3.0;4,1;acc_equips;equippment]"..
"button[1,4.0;4,1;acc_vanity;vanity]"..
"button[1,5.0;4,1;acc_dyes;accessory dyes]"..
"button_exit[1,7.5;4,1;exit;Done]")

	minetest.show_formspec(name,"equippable_accessories:AccSelectUI", AccSelectUI) 

end

minetest.register_on_player_receive_fields(function(player, formname, fields)

if fields["acc_equips"] then

local name = player:get_player_name()
inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
inv:set_size("accs",CountOfAccInvSlots)
inv:set_width("accs",8)
display_accessory_UI(player)

end
if fields["acc_vanity"] then

local name = player:get_player_name()
inv = minetest.get_inventory({type="detached",name="accs_vanity_"..name..""})
inv:set_size("accs",CountOfAccInvSlots)
inv:set_width("accs",8)
display_accessory_vanity_UI(player)

end
if fields["acc_dyes"] then

local name = player:get_player_name()
inv = minetest.get_inventory({type="detached",name="accs_dye_"..name..""})
inv:set_size("accs",CountOfAccInvSlots)
inv:set_width("accs",8)
display_accessory_dye_UI(player)

end

 end)


local acc_display_ent = {
	physical = false,
	timer = 0,
	hp_max = 69420,
	visual = "mesh",
	mesh = "character.b3d",
	visual_size = {x=0.5, y=0.5},
	textures = {"default_dirt.png"},
	lastpos = {},
	collisionbox = {0, 0, 0, 0, 0, 0},
}

minetest.register_entity("equippable_accessories:acc_display_ent",acc_display_ent)

acc_display_ent.on_activate = function(self, staticdata)
end


acc_display_ent.on_step = function(self, dtime)

if self.object:get_attach() == nil then
self.object:remove()
end

end





function update_player_acc_visuals(player,accessory,addtype,accessorySlot,index)

local name = player:get_player_name()
local pos = player:getpos()

if addtype == 1 then

local itemname = accessory:get_name()

----------------------------------------------------------------
if minetest.get_item_group(itemname, "head_accessory") > 0 then

local headModel = accessory:get_definition().acc_model_head or
("simple_helmet_cuboid.b3d")
local headTexture = accessory:get_definition().acc_texture_head or ("simple_test_helmet.png")
local headPos = accessory:get_definition().acc_pos_head or {x=0,y=2.0,z=0}
local headAnim = accessory:get_definition().acc_anim_head or {x=0,y=0}
local headSize = accessory:get_definition().acc_size_head or {x=2.5,y=2.5}
local headGlow = accessory:get_definition().acc_glow_head or 0

if player_acc_visuals[name].head[accessorySlot] ~= nil then
player_acc_visuals[name].head[accessorySlot]:remove()
end

player_acc_visuals[name].head[accessorySlot] = minetest.add_entity(pos, "equippable_accessories:acc_display_ent")
player_acc_visuals[name].head[accessorySlot]:set_attach(player,"Head",headPos,{x=0,y=180,z=0} )
player_acc_visuals[name].head[accessorySlot]:set_animation(headAnim,24,0)


local dyeStuff = ""
local dye_inv = minetest.get_inventory({type="detached",name="accs_dye_"..name..""})
local current_dye_stack = dye_inv:get_stack("accs_dye",index)
if current_dye_stack:get_definition().accessory_dye ~= nil then
dyeStuff = current_dye_stack:get_definition().accessory_dye
end


player_acc_visuals[name].head[accessorySlot]:set_properties({textures={""..headTexture..""..dyeStuff}})
player_acc_visuals[name].head[accessorySlot]:set_properties({mesh=""..headModel..""})
player_acc_visuals[name].head[accessorySlot]:set_properties({visual_size=headSize})
player_acc_visuals[name].head[accessorySlot]:set_properties({glow=headGlow})

end
-------------------------------------------------------
----------------------------------------------------------------
if minetest.get_item_group(itemname, "body_accessory") > 0 then

local bodyModel = accessory:get_definition().acc_model_body or
("simple_body.b3d")
local bodyTexture = accessory:get_definition().acc_texture_body or ("simple_test_body.png")
local bodyPos = accessory:get_definition().acc_pos_body or {x=0,y=3.25,z=0}
local bodyAnim = accessory:get_definition().acc_anim_body or {x=0,y=0}
local bodySize = accessory:get_definition().acc_size_body or {x=2.5,y=2.5}
local bodyGlow = accessory:get_definition().acc_glow_body or 0

if player_acc_visuals[name].body[accessorySlot] ~= nil then
player_acc_visuals[name].body[accessorySlot]:remove()
end

player_acc_visuals[name].body[accessorySlot] = minetest.add_entity(pos, "equippable_accessories:acc_display_ent")
player_acc_visuals[name].body[accessorySlot]:set_attach(player,"Body",bodyPos,{x=0,y=180,z=0} )
player_acc_visuals[name].body[accessorySlot]:set_animation(bodyAnim,24,0)

local dyeStuff = ""
local dye_inv = minetest.get_inventory({type="detached",name="accs_dye_"..name..""})
local current_dye_stack = dye_inv:get_stack("accs_dye",index)
if current_dye_stack:get_definition().accessory_dye ~= nil then
dyeStuff = current_dye_stack:get_definition().accessory_dye
end

player_acc_visuals[name].body[accessorySlot]:set_properties({textures={""..bodyTexture..""..dyeStuff}})
player_acc_visuals[name].body[accessorySlot]:set_properties({mesh=""..bodyModel..""})
player_acc_visuals[name].body[accessorySlot]:set_properties({visual_size=bodySize})
player_acc_visuals[name].body[accessorySlot]:set_properties({glow=bodyGlow})

end
-------------------------------------------------------
----------------------------------------------------------------
if minetest.get_item_group(itemname, "l_arm_accessory") > 0 and accessorySlot ~= "r_hand_acc" and accessorySlot ~= "r_ring_acc" then

local l_armModel = accessory:get_definition().acc_model_l_arm or
("simple_hand.b3d")
local l_armTexture = accessory:get_definition().acc_texture_l_arm or ("simple_test_hand.png")
local l_armPos = accessory:get_definition().acc_pos_l_arm or {x=0,y=2.0,z=0}
local l_armAnim = accessory:get_definition().acc_anim_l_arm or {x=0,y=0}
local l_armSize = accessory:get_definition().acc_size_l_arm or {x=2.4,y=2.4}
local l_armGlow = accessory:get_definition().acc_glow_l_arm or 0

if player_acc_visuals[name].l_arm[accessorySlot] ~= nil then
player_acc_visuals[name].l_arm[accessorySlot]:remove()
end

player_acc_visuals[name].l_arm[accessorySlot] = minetest.add_entity(pos, "equippable_accessories:acc_display_ent")
player_acc_visuals[name].l_arm[accessorySlot]:set_attach(player,"Arm_Left",l_armPos,{x=0,y=180,z=180} )
player_acc_visuals[name].l_arm[accessorySlot]:set_animation(l_armAnim,24,0)

local dyeStuff = ""
local dye_inv = minetest.get_inventory({type="detached",name="accs_dye_"..name..""})
local current_dye_stack = dye_inv:get_stack("accs_dye",index)
if current_dye_stack:get_definition().accessory_dye ~= nil then
dyeStuff = current_dye_stack:get_definition().accessory_dye
end

player_acc_visuals[name].l_arm[accessorySlot]:set_properties({textures={""..l_armTexture..""..dyeStuff}})
player_acc_visuals[name].l_arm[accessorySlot]:set_properties({mesh=""..l_armModel..""})
player_acc_visuals[name].l_arm[accessorySlot]:set_properties({visual_size=l_armSize})
player_acc_visuals[name].l_arm[accessorySlot]:set_properties({glow=l_armGlow})


end
-------------------------------------------------------
----------------------------------------------------------------
if minetest.get_item_group(itemname, "r_arm_accessory") > 0 and accessorySlot ~= "l_hand_acc" and accessorySlot ~= "l_ring_acc" then

local r_armModel = accessory:get_definition().acc_model_r_arm or
("simple_hand.b3d")
local r_armTexture = accessory:get_definition().acc_texture_r_arm or ("simple_test_hand.png")
local r_armPos = accessory:get_definition().acc_pos_r_arm or {x=0,y=2.0,z=0}
local r_armAnim = accessory:get_definition().acc_anim_r_arm or {x=0,y=0}
local r_armSize = accessory:get_definition().acc_size_r_arm or {x=2.4,y=2.4}
local r_armGlow = accessory:get_definition().acc_glow_r_arm or 0

if player_acc_visuals[name].r_arm[accessorySlot] ~= nil then
player_acc_visuals[name].r_arm[accessorySlot]:remove()
end


player_acc_visuals[name].r_arm[accessorySlot] = minetest.add_entity(pos, "equippable_accessories:acc_display_ent")
player_acc_visuals[name].r_arm[accessorySlot]:set_attach(player,"Arm_Right",r_armPos,{x=0,y=180,z=180} )
player_acc_visuals[name].r_arm[accessorySlot]:set_animation(r_armAnim,24,0)

local dyeStuff = ""
local dye_inv = minetest.get_inventory({type="detached",name="accs_dye_"..name..""})
local current_dye_stack = dye_inv:get_stack("accs_dye",index)
if current_dye_stack:get_definition().accessory_dye ~= nil then
dyeStuff = current_dye_stack:get_definition().accessory_dye
end

player_acc_visuals[name].r_arm[accessorySlot]:set_properties({textures={""..r_armTexture..""..dyeStuff}})
player_acc_visuals[name].r_arm[accessorySlot]:set_properties({mesh=""..r_armModel..""})
player_acc_visuals[name].r_arm[accessorySlot]:set_properties({visual_size=r_armSize})
player_acc_visuals[name].r_arm[accessorySlot]:set_properties({glow=r_armGlow})


end
-------------------------------------------------------
----------------------------------------------------------------
if minetest.get_item_group(itemname, "l_leg_accessory") > 0 then

local l_legModel = accessory:get_definition().acc_model_l_leg or
("simple_hand.b3d")
local l_legTexture = accessory:get_definition().acc_texture_l_leg or ("simple_test_hand.png")
local l_legPos = accessory:get_definition().acc_pos_l_leg or {x=0,y=2.75,z=0}
local l_legAnim = accessory:get_definition().acc_anim_l_leg or {x=0,y=0}
local l_legSize = accessory:get_definition().acc_size_l_leg or {x=2.4,y=2.4}
local l_legGlow = accessory:get_definition().acc_glow_l_leg or 0

if player_acc_visuals[name].l_leg[accessorySlot] ~= nil then
player_acc_visuals[name].l_leg[accessorySlot]:remove()
end

player_acc_visuals[name].l_leg[accessorySlot] = minetest.add_entity(pos, "equippable_accessories:acc_display_ent")
player_acc_visuals[name].l_leg[accessorySlot]:set_attach(player,"Leg_Left",l_legPos,{x=0,y=0,z=180} )
player_acc_visuals[name].l_leg[accessorySlot]:set_animation(l_legAnim,24,0)

local dyeStuff = ""
local dye_inv = minetest.get_inventory({type="detached",name="accs_dye_"..name..""})
local current_dye_stack = dye_inv:get_stack("accs_dye",index)
if current_dye_stack:get_definition().accessory_dye ~= nil then
dyeStuff = current_dye_stack:get_definition().accessory_dye
end

player_acc_visuals[name].l_leg[accessorySlot]:set_properties({textures={""..l_legTexture..""..dyeStuff}})
player_acc_visuals[name].l_leg[accessorySlot]:set_properties({mesh=""..l_legModel..""})
player_acc_visuals[name].l_leg[accessorySlot]:set_properties({visual_size=l_legSize})
player_acc_visuals[name].l_leg[accessorySlot]:set_properties({glow=l_legGlow})

end
-------------------------------------------------------
----------------------------------------------------------------
if minetest.get_item_group(itemname, "r_leg_accessory") > 0 then

local r_legModel = accessory:get_definition().acc_model_r_leg or
("simple_hand.b3d")
local r_legTexture = accessory:get_definition().acc_texture_r_leg or ("simple_test_hand.png")
local r_legPos = accessory:get_definition().acc_pos_r_leg or {x=0,y=2.75,z=0}
local r_legAnim = accessory:get_definition().acc_anim_r_leg or {x=0,y=0}
local r_legSize = accessory:get_definition().acc_size_r_leg or {x=2.4,y=2.4}
local r_legGlow = accessory:get_definition().acc_glow_r_leg or 0

if player_acc_visuals[name].r_leg[accessorySlot] ~= nil then
player_acc_visuals[name].r_leg[accessorySlot]:remove()
end

player_acc_visuals[name].r_leg[accessorySlot] = minetest.add_entity(pos, "equippable_accessories:acc_display_ent")
player_acc_visuals[name].r_leg[accessorySlot]:set_attach(player,"Leg_Right",r_legPos,{x=0,y=0,z=180} )
player_acc_visuals[name].r_leg[accessorySlot]:set_animation(r_legAnim,24,0)

local dyeStuff = ""
local dye_inv = minetest.get_inventory({type="detached",name="accs_dye_"..name..""})
local current_dye_stack = dye_inv:get_stack("accs_dye",index)
if current_dye_stack:get_definition().accessory_dye ~= nil then
dyeStuff = current_dye_stack:get_definition().accessory_dye
end

player_acc_visuals[name].r_leg[accessorySlot]:set_properties({textures={""..r_legTexture..""..dyeStuff}})
player_acc_visuals[name].r_leg[accessorySlot]:set_properties({mesh=""..r_legModel..""})
player_acc_visuals[name].r_leg[accessorySlot]:set_properties({visual_size=r_legSize})
player_acc_visuals[name].r_leg[accessorySlot]:set_properties({glow=r_legGlow})

end
-------------------------------------------------------
end

if addtype == 0 then
if player_acc_visuals[name].head[accessorySlot] ~= nil then
player_acc_visuals[name].head[accessorySlot]:remove()
end
if player_acc_visuals[name].body[accessorySlot] ~= nil then
player_acc_visuals[name].body[accessorySlot]:remove()
end
if player_acc_visuals[name].l_arm[accessorySlot] ~= nil then
player_acc_visuals[name].l_arm[accessorySlot]:remove()
end
if player_acc_visuals[name].r_arm[accessorySlot] ~= nil then
player_acc_visuals[name].r_arm[accessorySlot]:remove()
end
if player_acc_visuals[name].l_leg[accessorySlot] ~= nil then
player_acc_visuals[name].l_leg[accessorySlot]:remove()
end
if player_acc_visuals[name].r_leg[accessorySlot] ~= nil then
player_acc_visuals[name].r_leg[accessorySlot]:remove()
end
end

end


function apply_accessory_setBonus(player)


local name = player:get_player_name()
local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
local playerMeta = player:get_meta()
playerMeta:set_string("accessory_SetBonus","")
playerMeta:set_string("accessory_SetName","")

for setAcc,setAccs in ipairs(accessorySets) do

local missingAccSetPart = 0

for setAccPart,setAccParts in ipairs(setAccs[2]) do
if missingAccSetPart == 0 and
inv:contains_item("accs",setAccParts) then

missingAccSetPart = 0
else
missingAccSetPart = 1
end
end

if missingAccSetPart == 0 then

playerMeta:set_string("accessory_SetBonus","Set Bonus: "..setAccs[4].."")
playerMeta:set_string("accessory_SetName",setAccs[1])

for setInfo,setInfos in ipairs(setAccs[3]) do

if setInfos[1] == "IntStat" then
playerMeta:set_int(setInfos[2],playerMeta:get_int(setInfos[2])+setInfos[3])
end 

if setInfos[1] == "FloatStat" then
playerMeta:set_float(setInfos[2],playerMeta:get_float(setInfos[2])+setInfos[3])
end 


if setInfos[1] == "CustomIntStat" then
if AccessoryCustomStats[setInfos[2]] == nil then
AccessoryCustomStats[setInfos[2]] = {setInfos[2],"IntStat"}
playerMeta:set_int(setInfos[2],0)
end
playerMeta:set_int(setInfos[2],playerMeta:get_int(setInfos[2])+setInfos[3])
end 

if setInfos[1] == "CustomFloatStat" then
if AccessoryCustomStats[setInfos[2]] == nil then
AccessoryCustomStats[setInfos[2]] = {setInfos[2],"FloatStat"}
playerMeta:set_float(setInfos[2],0)
end
playerMeta:set_float(setInfos[2],playerMeta:get_float(setInfos[2])+setInfos[3])
end 


end
end

end
end


function update_accessory_stats(player)

local acc_defense = 0
local acc_offense = 0
local acc_hpRegen = 0
local acc_hpBonus = 0
local acc_flight_time = 0
local acc_flight_force = 0
local acc_walkSpeed = 0
local acc_jumpHeight = 0
local acc_gravPull = 0
local acc_digSpeed = 0
local acc_thorns = 0
local acc_dodgeChance = 0
local acc_fireRes = 0

local TempAccCustStats = {}

local name = player:get_player_name()
local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})

for i = 1,CountOfAccInvSlots do

local current_acc_check = inv:get_stack("accs",i)
local acc_Meta = current_acc_check:get_meta() 

if current_acc_check:get_definition().acc_CustomStats ~= nil then
for TmpCStat,TmpCStats in ipairs(current_acc_check:get_definition().acc_CustomStats) do

if TmpCStats[1] == "IntStat" then
if AccessoryCustomStats[TmpCStats[2]] == nil then
AccessoryCustomStats[TmpCStats[2]] = {TmpCStats[2],"IntStat"}
end
if TempAccCustStats[TmpCStats[2]] == nil then
TempAccCustStats[TmpCStats[2]] = {TmpCStats[2],0,"IntStat"}
end
TempAccCustStats[TmpCStats[2]][2] = TempAccCustStats[TmpCStats[2]][2] + TmpCStats[3]
end

if TmpCStats[1] == "FloatStat" then
if AccessoryCustomStats[TmpCStats[2]] == nil then
AccessoryCustomStats[TmpCStats[2]] = {TmpCStats[2],"FloatStat"}
end
if TempAccCustStats[TmpCStats[2]] == nil then
TempAccCustStats[TmpCStats[2]] = {TmpCStats[2],0,"FloatStat"}
end
TempAccCustStats[TmpCStats[2]][2] = TempAccCustStats[TmpCStats[2]][2] + TmpCStats[3]
end

end end

if current_acc_check:get_definition().acc_defense ~= nil then
acc_defense = acc_defense + current_acc_check:get_definition().acc_defense 
end

if current_acc_check:get_definition().acc_offense ~= nil then
acc_offense = acc_offense + current_acc_check:get_definition().acc_offense 
end

if current_acc_check:get_definition().acc_hpRegen ~= nil then
acc_hpRegen = acc_hpRegen + current_acc_check:get_definition().acc_hpRegen 
end

if current_acc_check:get_definition().acc_hpBonus ~= nil then
acc_hpBonus = acc_hpBonus + current_acc_check:get_definition().acc_hpBonus
end

if current_acc_check:get_definition().acc_flight_time ~= nil then
acc_flight_time = acc_flight_time + current_acc_check:get_definition().acc_flight_time
end

if current_acc_check:get_definition().acc_flight_force ~= nil then
acc_flight_force = acc_flight_force + current_acc_check:get_definition().acc_flight_force
end

if current_acc_check:get_definition().acc_walkSpeed ~= nil then
acc_walkSpeed = acc_walkSpeed + current_acc_check:get_definition().acc_walkSpeed
end

if current_acc_check:get_definition().acc_jumpHeight ~= nil then
acc_jumpHeight = acc_jumpHeight + current_acc_check:get_definition().acc_jumpHeight
end

if current_acc_check:get_definition().acc_gravPull ~= nil then
acc_gravPull = acc_gravPull + current_acc_check:get_definition().acc_gravPull
end

if current_acc_check:get_definition().acc_digSpeed ~= nil then
acc_digSpeed = acc_digSpeed + current_acc_check:get_definition().acc_digSpeed
end

if current_acc_check:get_definition().acc_thorns ~= nil then
acc_thorns = acc_thorns + current_acc_check:get_definition().acc_thorns
end


if current_acc_check:get_definition().acc_dodgeChance ~= nil then
acc_dodgeChance = acc_dodgeChance + current_acc_check:get_definition().acc_dodgeChance
end

if current_acc_check:get_definition().acc_fireRes ~= nil then
acc_fireRes = acc_fireRes + current_acc_check:get_definition().acc_fireRes
end

acc_defense = acc_defense + acc_Meta:get_int("acc_meta_defense")
acc_offense = acc_offense + acc_Meta:get_int("acc_meta_offense")
acc_hpRegen = acc_hpRegen + acc_Meta:get_float("acc_meta_hpRegen")
acc_hpBonus = acc_hpBonus + acc_Meta:get_int("acc_meta_hpBonus")
acc_flight_time = acc_flight_time + acc_Meta:get_float("acc_meta_flight_time")
acc_flight_force = acc_flight_force + acc_Meta:get_float("acc_meta_flight_force")
acc_walkSpeed = acc_walkSpeed + acc_Meta:get_float("acc_meta_walkSpeed")
acc_jumpHeight = acc_jumpHeight + acc_Meta:get_float("acc_meta_jumpHeight")
acc_gravPull = acc_gravPull + acc_Meta:get_float("acc_meta_gravPull")
acc_digSpeed = acc_digSpeed + acc_Meta:get_int("acc_meta_digSpeed")
acc_thorns = acc_thorns + acc_Meta:get_int("acc_meta_thorns")
acc_dodgeChance = acc_dodgeChance + acc_Meta:get_int("acc_meta_dodgeChance")
acc_fireRes = acc_fireRes + acc_Meta:get_int("acc_meta_fireRes")

end

local playerMeta = player:get_meta()

for resetAccStat,resetAccStats in pairs(AccessoryCustomStats) do
if resetAccStats[2] == "IntStat" then
playerMeta:set_int(resetAccStats[1],0)
end
if resetAccStats[2] == "FloatStat" then
playerMeta:set_float(resetAccStats[1],0)
end
end


for setPlrAccStat,setPlrAccStats in pairs(TempAccCustStats) do
if setPlrAccStats[3] == "IntStat" then
playerMeta:set_int(setPlrAccStats[1],setPlrAccStats[2])
end
if setPlrAccStats[3] == "FloatStat" then
playerMeta:set_float(setPlrAccStats[1],setPlrAccStats[2])
end
end


playerMeta:set_int("accessory_defense",acc_defense)
playerMeta:set_int("accessory_offense",acc_offense)
playerMeta:set_float("accessory_hpRegen",acc_hpRegen)
playerMeta:set_int("accessory_hpBonus",acc_hpBonus)
playerMeta:set_float("accessory_flightTime",acc_flight_time)
playerMeta:set_float("accessory_flightForce",acc_flight_force)
playerMeta:set_float("accessory_walkSpeed",acc_walkSpeed)
playerMeta:set_float("accessory_jumpHeight",acc_jumpHeight)
playerMeta:set_float("accessory_gravPull",acc_gravPull)
playerMeta:set_int("accessory_digSpeed",acc_digSpeed)
playerMeta:set_int("accessory_thorns",acc_thorns)
playerMeta:set_int("accessory_dodgeChance",acc_dodgeChance)
playerMeta:set_int("accessory_fireRes",acc_fireRes)

apply_accessory_setBonus(player)

player:set_properties({hp_max=20+playerMeta:get_int("accessory_hpBonus")})

player:set_physics_override({speed=1+playerMeta:get_float("accessory_walkSpeed"),jump=1+playerMeta:get_float("accessory_jumpHeight"),gravity=1+playerMeta:get_float("accessory_gravPull")})

--minetest.chat_send_all(playerMeta:get_int("accessory_defense"))

end


function PlayerHasAccEquipped(name,accessory)
local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})

if inv:contains_item("accs",accessory) then
return true
else
return false
end

end

function PlayerHasAccGroupEquipped(name,accessoryGroup)
local inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
local TheAccGroupIsEquipped = 0
for i = 1,CountOfAccInvSlots do
local current_acc_stack = inv:get_stack("accs",i)

if minetest.get_item_group(current_acc_stack:get_name(), accessoryGroup) > 0 then

TheAccGroupIsEquipped = 1
end end

if TheAccGroupIsEquipped == 1 then
return true
else
return false
end end






minetest.register_node("equippable_accessories:helm_glow", {
		description = "" ..core.colorize("#00eaff","helmet glow\n") ..core.colorize("#FFFFFF", "1V1 ME H4X0R! IMMA REKT U!"),
	drawtype = "airlike",
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	pointable = false,
	sunlight_propagates = true,
	light_source = 13,
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(1.0)
	end,
	on_timer = function(pos, elapsed)
		minetest.swap_node(pos, {name = "air"})
	end,
	drop = "",
	groups = {not_in_creative_inventory=1},
})

local ReapplyIntPassed = 0
local quarterSecondTimer = 0
local SecondTimer = 0

minetest.register_globalstep(function(dtime)

quarterSecondTimer = quarterSecondTimer + dtime
SecondTimer = SecondTimer + dtime


--------------constent_visual_reapply-----------------
if AccessoryVisualReapplyInterval > 0 then
ReapplyIntPassed = ReapplyIntPassed + dtime

if ReapplyIntPassed >= AccessoryVisualReapplyInterval then
ReapplyIntPassed = 0

for _, player in pairs(minetest.get_connected_players()) do
local name = player:get_player_name()
inv = minetest.get_inventory({type="detached",name="accs_"..name..""})
vanity_inv = minetest.get_inventory({type="detached",name="accs_vanity_"..name..""})

for i = 1,CountOfAccInvSlots do
local current_acc_stack = vanity_inv:get_stack("accs_vanity",i)

if current_acc_stack:get_definition().acc_slot ~= nil then
local accessorySlot = player_accessory_slots[i]
update_player_acc_visuals(player,current_acc_stack,1,accessorySlot,i)
else
current_acc_stack = inv:get_stack("accs",i)
if current_acc_stack:get_definition().acc_slot ~= nil then
local accessorySlot = player_accessory_slots[i]
update_player_acc_visuals(player,current_acc_stack,1,accessorySlot,i)
end
end
end

end
end
end
---------------------------------------------

if SecondTimer >= 1.0 then
SecondTimer = 0
for _, player in pairs(minetest.get_connected_players()) do
local playerMeta = player:get_meta()
player:hud_change(acc_fire_ressistence_bg, "number", playerMeta:get_int("accessory_fireRes"))
player:hud_change(acc_fire_ressistence_fg, "number", playerMeta:get_int("acc_remaining_fire_prot"))

if playerMeta:get_int("acc_last_fire_contact") <= 3 then
playerMeta:set_int("acc_last_fire_contact",playerMeta:get_int("acc_last_fire_contact")+1)
end

if playerMeta:get_int("acc_remaining_fire_prot") >= playerMeta:get_int("accessory_fireRes") then
player:hud_change(acc_fire_ressistence_bg, "number", 0)
player:hud_change(acc_fire_ressistence_fg, "number", 0)
end

end

end


if quarterSecondTimer >= 0.25 then
quarterSecondTimer = 0

for _, player in pairs(minetest.get_connected_players()) do


local playerMeta = player:get_meta()
local name = player:get_player_name()
local pos = player:getpos()


if playerMeta:get_int("acc_last_fire_contact") >= 3 and
playerMeta:get_int("acc_remaining_fire_prot") < playerMeta:get_int("accessory_fireRes") then

playerMeta:set_int("acc_remaining_fire_prot",playerMeta:get_int("acc_remaining_fire_prot")+1)
player:hud_change(acc_fire_ressistence_fg, "number", playerMeta:get_int("acc_remaining_fire_prot"))
end

if playerMeta:get_int("acc_remaining_fire_prot") >playerMeta:get_int("accessory_fireRes") then
playerMeta:set_int("acc_remaining_fire_prot",playerMeta:get_int("accessory_fireRes"))
end


-----------------------toolcap_mod-----------------
local WieldItemstack = player:get_wielded_item()
local itmStackMeta = WieldItemstack:get_meta()

if WieldItemstack:get_tool_capabilities() ~= nil and WieldItemstack:get_definition().tool_capabilities and WieldItemstack:get_name() ~= "" then

if itmStackMeta:get_int("LastAccDigEffc") ~= playerMeta:get_int("accessory_digSpeed") then

itmStackMeta:set_int("LastAccDigEffc",playerMeta:get_int("accessory_digSpeed"))

if itmStackMeta:get_string("ToolOldStats") == "" then
itmStackMeta:set_string("ToolOldStats",minetest.serialize(WieldItemstack:get_tool_capabilities().groupcaps))

end



local ToolNewStats = minetest.deserialize(itmStackMeta:get_string("ToolOldStats"))

for toolStatValue, toolStatValues in pairs(ToolNewStats) do
for toolStatTime, toolStatTimes in pairs(ToolNewStats[toolStatValue].times) do

ToolNewStats[toolStatValue].times[toolStatTime] = ToolNewStats[toolStatValue].times[toolStatTime] / (1+(playerMeta:get_int("accessory_digSpeed")/100))

end
end

itmStackMeta:set_tool_capabilities({
full_punch_interval = WieldItemstack:get_definition().tool_capabilities.full_punch_interval,
max_drop_level = WieldItemstack:get_definition().tool_capabilities.max_drop_level, 
groupcaps = ToolNewStats,
damage_groups = WieldItemstack:get_definition().tool_capabilities.damage_groups,
})

player:set_wielded_item(WieldItemstack)
end
end
----------------------------------------------

if PlayerHasAccEquipped(name,"equippable_accessories:mining_helmet") == true then

	local gpos = player:getpos()
	gpos.y = gpos.y+1
local node = minetest.get_node(gpos)
if node.name == "air" or
   node.name == "equippable_accessories:helm_glow" then

minetest.set_node(gpos, {name = "equippable_accessories:helm_glow"})
minetest.get_node_timer(gpos):start(1.0)
end
end

if playerMeta:get_string("accessory_SetName") == "JoJo_set" then

	minetest.add_particle({
		pos = {x=pos.x+math.random(-2,2),y=pos.y+math.random(1,3),z=pos.z+math.random(-2,2)},
		velocity = {x=0, y=0, z=0},
          acceleration = {x=0, y=0, z=0},
		expirationtime = 2, 
		size = 6, 
		collisiondetection = false,
		collision_removal = false,
		vertical = false,
		texture = "accessories_menacing.png",
          animation = {type="vertical_frames", aspect_w=8, aspect_h=8, length = 0.25,},
		glow = 10,
	})

end

pos.y = pos.y - 0.2
local stoodNode = minetest.get_node(pos)
if minetest.registered_nodes[stoodNode.name] ~= nil then
if minetest.registered_nodes[stoodNode.name].walkable then
playerMeta:set_float("fly_time_left",playerMeta:get_float("accessory_flightTime"))
end
end

end end

for _, player in pairs(minetest.get_connected_players()) do

if AccessoryWingsFlight == true then
local controls = player:get_player_control()
if controls.jump then
local playerMeta = player:get_meta()
local name = player:get_player_name()

if PlayerHasAccGroupEquipped(name,"acc_wings") == true then

if player:get_player_velocity().y < -1 then
player:add_player_velocity({x=0,y=((player:get_player_velocity().y)*-0.3) -0.5, z=0})
end

if playerMeta:get_float("fly_time_left") > 0 then
playerMeta:set_float("fly_time_left",playerMeta:get_float("fly_time_left")-dtime)

player:add_player_velocity({x=0,y= playerMeta:get_float("accessory_flightForce"), z=0})
end end end end



if player:get_hp() < player:get_properties().hp_max then

local playerMeta = player:get_meta()
local hpRegenAmount = playerMeta:get_float("accessory_hpRegen")
local finalHpRegen = (dtime * hpRegenAmount)
playerMeta:set_float("accessory_hpRegen_progress",playerMeta:get_float("accessory_hpRegen_progress")+finalHpRegen)

if playerMeta:get_float("accessory_hpRegen_progress") >= 1.0 then

local AccHpToRegen = math.floor(playerMeta:get_float("accessory_hpRegen_progress"))

playerMeta:set_float("accessory_hpRegen_progress",playerMeta:get_float("accessory_hpRegen_progress")-AccHpToRegen)

player:set_hp(player:get_hp() + AccHpToRegen)

end end

end



end)


minetest.register_on_player_hpchange(function(player, hp_change, reason)
	if hp_change < 0 then

local playerMeta = player:get_meta()
local AccDefense = playerMeta:get_int("accessory_defense")

local acc_hp_protected = math.floor(AccDefense/DefToSaveOneHP)
local acc_extra_hp_protect_chance = (AccDefense - (acc_hp_protected*DefToSaveOneHP))

if math.random(1,DefToSaveOneHP) <= acc_extra_hp_protect_chance then
acc_hp_protected = acc_hp_protected + 1
end

--minetest.chat_send_all(minetest.serialize(reason))

if reason.type == "punch" then

if playerMeta:get_int("accessory_thorns") > 0 and
reason.object ~= player then
reason.object:punch(player, 1.0, {full_punch_interval = 1.0,
	damage_groups = {fleshy = -hp_change*(playerMeta:get_int("accessory_thorns")/100)},}, nil)
end


local AttackerDmgBonus = 1

if reason.object:is_player() then
AttackerDmgBonus = (reason.object:get_meta():get_int("accessory_offense")/100)+1
minetest.chat_send_all("kek")
end

hp_change = (hp_change*AttackerDmgBonus) + acc_hp_protected
end

if hp_change >= 0 then
hp_change = -1
end

if reason.type == "node_damage" then

playerMeta:set_int("acc_last_fire_contact",0)

if playerMeta:get_int("acc_remaining_fire_prot") > 0 then
playerMeta:set_int("acc_remaining_fire_prot",playerMeta:get_int("acc_remaining_fire_prot")-1)
player:hud_change(acc_fire_ressistence_fg, "number", playerMeta:get_int("acc_remaining_fire_prot"))
player:hud_change(acc_fire_ressistence_bg, "number", playerMeta:get_int("accessory_fireRes"))
hp_change = 0
end


end

if reason.type == "punch" then
if math.random(1,100) <= playerMeta:get_int("accessory_dodgeChance") then
hp_change = 0

local pos = player:getpos()

for i = 1,math.random(10,25) do
	minetest.add_particle({
		pos = {x=pos.x+math.random(-1,1),y=pos.y+math.random(1,1),z=pos.z+math.random(-1,1)},
		velocity = {x=math.random(-5,5), y=math.random(-5,5), z=math.random(-5,5)},
          acceleration = {x=math.random(-5,5), y=math.random(-5,5), z=math.random(-5,5)},
		expirationtime = 0.9, 
		size = 16, 
		collisiondetection = true,
		collision_removal = false,
		vertical = false,
		texture = "accessories_dodgepuff.png",
          animation = {type="vertical_frames", aspect_w=8, aspect_h=8, length = 1.0,},
		glow = 1,
	})
end

end
end

	end

	return hp_change
end, true)


function ApplyAccessoryDmgBonus()
for _,ent in pairs(minetest.registered_entities) do
	if ent.on_punch ~= nil then

	local DmgBonusPunch = ent.on_punch

		ent.on_punch = function(self, hitter,time_from_last_punch, tool_capabilities, direction, pos)

if self.health ~= nil and hitter:is_player() then

local playerMeta = hitter:get_meta()
local atk_bonus = playerMeta:get_int("accessory_offense")

tool_capabilities.damage_groups.fleshy = tool_capabilities.damage_groups.fleshy * (1 + (atk_bonus/100))
				
			end

return DmgBonusPunch(self, hitter, time_from_last_punch, tool_capabilities, direction)
end end end
end

minetest.register_on_mods_loaded(ApplyAccessoryDmgBonus)





if minetest.get_modpath("sfinv") then
sfinv.register_page("sfinv:accessories", {
	title = ("accessories"),
	get = function(self, player, context)
		return sfinv.make_formspec(player, context, [[
		label[1.0,0.5;Accessories]
		button[1.0,1.5;4,1;acc_equips;equippment]
		button[1.0,2.5;4,1;acc_vanity;vanity]
		button[1.0,3.5;4,1;acc_dyes;accessory dyes]
				listring[current_player;main]
			]], true)
	end
})
end


if minetest.get_modpath("unified_inventory") then
unified_inventory.register_button("accinv", {
	type = "image",
	image = "accessories_defense_icon.png",
	tooltip = ("Accessories"),
	action = function(player)
display_accessory_select_UI(player)
	end
})

end

minetest.register_chatcommand("accinv", {
	description = ("Opens your accessory inventory"),
	func = function(name)
		local player = minetest.get_player_by_name(name)
		if player then
display_accessory_select_UI(player)
		end
	end
})


if minetest.global_exists("dungeon_loot") then
	dungeon_loot.register({
		{name = "equippable_accessories:skull_shield", chance = 0.15, count = {1, 1}},
		{name = "equippable_accessories:dungeon_helmet", chance = 0.1, count = {1, 1}},
		{name = "equippable_accessories:dungeon_platemail", chance = 0.1, count = {1, 1}},
		{name = "equippable_accessories:dungeon_leggings", chance = 0.1, count = {1, 1}},
	})
end