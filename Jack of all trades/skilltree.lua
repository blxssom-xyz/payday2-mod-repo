local data = SkillTreeTweakData.init
function SkillTreeTweakData:init(tweak_data)
data(self, tweak_data)
--perks in all decks 2/4/6/8
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
--perk costs 1/3/5/7/9
local pc1 = 200
local pc3 = 400
local pc5 = 1000
local pc7 = 2400
local pc9 = 4000
local pdcb = "player_passive_loot_drop_multiplier"

table.insert(self.specializations,{--Joat
			name_id = "Joat_title",
			desc_id = "Joat_desc",{
			upgrades = {
			"dodge",
			"speed",
			"crouchdodge"},
			cost = pc1,
			icon_xy = {1, 2},
			name_id = "Joat_1",
			desc_id = "Joat_1_desc"},
			ps2,{
			upgrades = {
			"armor",
			"health"},
			cost = pc3,
			icon_xy = {2, 7},
			name_id = "Joat_3",
			desc_id = "Joat_3_desc"},
			ps4,{
			upgrades = {
			"dmgtoheal",
			"healthregen"},
			cost = pc5,
			icon_xy = {1, 6},
			name_id = "Joat_5",
			desc_id = "Joat_5_desc"},
			ps6,{
			upgrades = {
			"ammopickup"},
			cost = pc7,
			icon_xy = {5, 5},
			name_id = "Joat_7",
			desc_id = "Joat_7_desc"},
			ps8,{
			upgrades = {
			"picklock",
			"pager",
			"stealth",
			pdcb},
			cost = pc9,
			icon_xy = {1, 4},
			name_id = "Joat_9",
			desc_id = "Joat_9_desc"}})		
end