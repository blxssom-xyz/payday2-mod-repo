function SkillTreeManager:skill_cost(tier, skill_level, skill_cost)
	if skill_level < 2 then
		return 0
	else
		return 1
	end
end

function SkillTreeManager:tier_cost(tier, skill_id)
	return 0
end