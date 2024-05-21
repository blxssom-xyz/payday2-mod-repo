local data = UpgradesTweakData._init_pd2_values
function UpgradesTweakData:_init_pd2_values()
	data(self, tweak_data)
	self.values.player.crouch_speed_multiplier = {1.1, 1.2, 1, 1.05}
	self.values.player.passive_dodge_chance = {0.1, 0.25, 0.4, 0, 0.2}
	self.values.player.crouch_dodge_chance = {0.05, 0.15, 0, 0.1}
	self.values.player.pick_up_ammo_multiplier = {1.35, 1.75, 1, 1.5}
	self.values.player.passive_armor_multiplier = {1.1, 1.25, 1, 1.2}
	self.values.player.passive_health_multiplier = {1.1, 1.2, 1.4, 1.8, 1, 1.1}
	self.values.player.passive_health_regen = {0.03, 0, 0.03}
	self.values.player.damage_to_hot = {0.1, 0.2, 0.3, 0.4, 0, 0.1}
	self.values.player.pick_lock_speed_multiplier = {0.8, 1, 0.9}
	self.values.player.alarm_pager_speed_multiplier = {0.9, 1, 0.9}
	self.values.player.corpse_dispose_speed_multiplier = {0.8, 1, 0.9}
	self.values.player.corpse_dispose_amount = {1, 2}
	self.values.player.passive_concealment_modifier = {1, 3}
end
local skills = UpgradesTweakData._player_definitions
function UpgradesTweakData:_player_definitions()
	skills(self, tweak_data)
	self.definitions.speed = {
		category = "feature",
		name_id = "menu_player_crouch_speed_multiplier",
		upgrade = {
			category = "player",
			upgrade = "crouch_speed_multiplier",
			value = 4}}
	self.definitions.dodge = {
		category = "feature",
		name_id = "menu_player_run_dodge_chance",
		upgrade = {
			category = "player",
			upgrade = "passive_dodge_chance",
			value = 5}}
	self.definitions.crouchdodge = {
		category = "feature",
		name_id = "menu_player_crouch_dodge_chance",
		upgrade = {
			category = "player",
			upgrade = "crouch_dodge_chance",
			value = 4}}
	self.definitions.ammopickup = {
		category = "feature",
		name_id = "menu_player_pick_up_ammo_multiplier",
		upgrade = {
			category = "player",
			upgrade = "pick_up_ammo_multiplier",
			value = 4}}
	self.definitions.armor = {
		category = "feature",
		name_id = "menu_player_passive_armor_multiplier",
		upgrade = {
			category = "player",
			upgrade = "passive_armor_multiplier",
			value = 4}}
	self.definitions.health = {
		category = "feature",
		name_id = "menu_player_health_multiplier",
		upgrade = {
			category = "player",
			upgrade = "passive_health_multiplier",
			value = 6}}
	self.definitions.healthregen = {
		category = "temporary",
		name_id = "menu_player_passive_health_regen",
		upgrade = {
			category = "player",
			upgrade = "passive_health_regen",
			value = 3}}
	self.definitions.dmgtoheal = {
		category = "feature",
		name_id = "menu_player_damage_to_hot",
		upgrade = {
			category = "player",
			upgrade = "damage_to_hot",
			value = 6}}
	self.definitions.picklock = {
		category = "feature",
		name_id = "menu_player_pick_lock_speed_multiplier",
		upgrade = {
			category = "player",
			upgrade = "pick_lock_speed_multiplier",
			value = 3}}
	self.definitions.pager = {
		category = "feature",
		name_id = "menu_player_alarm_pager_speed_multiplier",
		upgrade = {
			category = "player",
			upgrade = "alarm_pager_speed_multiplier",
			value = 3}}
	self.definitions.disposespeed = {
		category = "feature",
		name_id = "menu_player_corpse_dispose_speed_multiplier",
		upgrade = {
			category = "player",
			upgrade = "corpse_dispose_speed_multiplier",
			value = 3}}
	self.definitions.dispose = {
		category = "feature",
		name_id = "menu_player_corpse_disp_amount_1",
		upgrade = {
			category = "player",
			upgrade = "corpse_dispose_amount",
			value = 1}}
	self.definitions.stealth = {
		category = "feature",
		name_id = "menu_player_passive_suspicion_bonus",
		upgrade = {
			category = "player",
			upgrade = "passive_concealment_modifier",
			value = 2}}	

end