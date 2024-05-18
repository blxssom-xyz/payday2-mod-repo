local data = SkillTreeTweakData.init
function SkillTreeTweakData:init(tweak_data)
data(self, tweak_data)
local ps2 = {
upgrades = {"weapon_passive_headshot_damage_multiplier"},
cost = 300,
icon_xy = {1, 0},
name_id = "all_2",
desc_id = "all_2_desc"}
local ps4 = {
upgrades = {"passive_player_xp_multiplier",
"player_passive_suspicion_bonus",
"player_passive_armor_movement_penalty_multiplier"},
cost = 600,
icon_xy = {3, 0},
name_id = "all_4",
desc_id = "all_4_desc"}
local ps6 = {
upgrades = {"armor_kit",
"player_pick_up_ammo_multiplier"},
cost = 1600,
icon_xy = {5, 0},
name_id = "all_6",
desc_id = "all_6_desc"}
local ps8 = {
upgrades = {"weapon_passive_damage_multiplier",
"passive_doctor_bag_interaction_speed_multiplier"},
cost = 3200,
icon_xy = {7, 0},
name_id = "all_8",
desc_id = "all_8_desc"}
local pc1 = 200
local pc3 = 300
local pc5 = 400
local pc7 = 600
local pc9 = 1000
local pdcb = "player_passive_loot_drop_multiplier"
table.insert(self.specializations,{
name_id = "neo-terrorist'name",
desc_id = "neo-terrorist'desc",{
upgrades = {
"player_passive_damage_reduction_1", "player_tier_armor_multiplier_1", "player_armor_grinding_1"
},
cost = pc1,
icon_xy = {1, 1},
name_id = "neo-terrorist'perk1n",
desc_id = "neo-terrorist'perk1d"},
ps2,{
upgrades = {
"player_passive_health_regen", "player_panic_suppression", "weapon_passive_armor_piercing_chance"
},
cost = pc3,
icon_xy = {1, 1},
name_id = "neo-terrorist'perk3n",
desc_id = "neo-terrorist'perk3d"},
ps4,{
upgrades = {
"team_passive_stamina_multiplier_1", "player_passive_health_multiplier_1"
},
cost = pc5,
icon_xy = {1, 1},
name_id = "neo-terrorist'perk5n",
desc_id = "neo-terrorist'perk5d"},
ps6,{
upgrades = {
"player_tier_armor_multiplier_6", "player_killshot_regen_armor_bonus"
},
cost = pc7,
icon_xy = {1, 1},
name_id = "neo-terrorist'perk7n",
desc_id = "neo-terrorist'perk7d"},
ps8,{
upgrades = {
"player_tier_dodge_chance_3", "temporary_loose_ammo_restore_health_3"
},
cost = pc9,
icon_xy = {1, 1},
name_id = "neo-terrorist'perk9n",
desc_id = "neo-terrorist'perk9d"}})
end