if not Network:is_server() then return end

Hooks:PreHook(PlayerManager, "_internal_load", "DragNotBagLoad", function(self)
	self._local_player_body_bags = 0
end)

function PlayerManager:spawn_dropin_penalty(dead, bleed_out, health, used_deployable, used_cable_ties, used_body_bags)
	local player = self:player_unit()

	print("[PlayerManager:spawn_dropin_penalty]", dead, bleed_out, health, used_deployable, used_cable_ties, used_body_bags)

	if not alive(player) then
		return
	end

	if used_deployable then
		managers.player:clear_equipment()

		local equipped_deployable = managers.blackmarket:equipped_deployable()
		local deployable_data = tweak_data.equipments[equipped_deployable]

		if deployable_data and deployable_data.dropin_penalty_function_name then
			local used_one, redirect = player:equipment()[deployable_data.dropin_penalty_function_name](player:equipment(), self._equipment.selected_index)

			if redirect then
				redirect(player)
			end
		end
	end

	for i = 1, used_cable_ties, 1 do
		self:remove_special("cable_tie")
	end

	self:_set_body_bags_amount(math.max(self:total_body_bags() - used_body_bags, 0))

	local min_health = nil
	min_health = (dead or bleed_out) and 0 or 0.25

	player:character_damage():set_health(math.max(min_health, health) * player:character_damage():_max_health())

	if dead or bleed_out then
		print("[PlayerManager:spawn_dead] Killing")
		player:network():send("sync_player_movement_state", "dead", player:character_damage():down_time(), player:id())
		managers.groupai:state():on_player_criminal_death(managers.network:session():local_peer():id())
		player:base():set_enabled(false)
		game_state_machine:change_state_by_name("ingame_waiting_for_respawn")
		player:character_damage():set_invulnerable(true)
		player:character_damage():set_health(0)
		player:base():_unregister()
		World:delete_unit(player)
	end
end

function PlayerManager:dye_pack_exploded()
	local carry_data = self:get_my_carry_data()

	if not carry_data then
		return
	end

	local carry_id = carry_data.carry_id
	local type = tweak_data.carry[carry_id].type
	local dye_initiated = carry_data.dye_initiated
	local has_dye_pack = carry_data.has_dye_pack
	local dye_value_multiplier = carry_data.dye_value_multiplier
	local value = carry_data.value * (1 - dye_value_multiplier / 100)
	value = math.round(value)
	has_dye_pack = false

	self:update_synced_carry_to_peers(carry_id, carry_data.multiplier, dye_initiated, has_dye_pack, dye_value_multiplier)
	managers.hud:set_teammate_carry_info(HUDManager.PLAYER_PANEL, carry_id, managers.loot:get_real_value(carry_id, carry_data.multiplier))
end

function PlayerManager:on_used_body_bag()
	self:_set_body_bags_amount(0)
end

function PlayerManager:chk_body_bags_depleted()
	return false
end

Hooks:PostHook(PlayerManager, "_set_body_bags_amount", "DragNotBagSetBodyBagsAmount", function(self)
	self._local_player_body_bags = 0
	managers.hud:on_ext_inventory_changed()
end)

local add = PlayerManager.add_body_bags_amount
function PlayerManager:add_body_bags_amount(body_bags_amount, ...)
	return add(self, 0, ...)
end

function PlayerManager:has_max_body_bags()
	return true
end

function PlayerManager:max_body_bags()
	return self:total_body_bags(0)
end