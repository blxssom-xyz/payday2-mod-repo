if not Network:is_server() then return end
Hooks:PostHook(CarryTweakData, "init", "CarryNotDragInit", function(self)
	self.types.being.move_speed_modifier = 0.3
	self.types.being.jump_modifier = 0.3
end)