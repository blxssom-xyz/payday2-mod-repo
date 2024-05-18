--Adds one of everything (note some items impact movement speed preventing running)
managers.player._special_item = {}
for key, _ in pairs(tweak_data.equipments.specials) do
	managers.player._special_item[key] = {current = 0, max = 2}
end
for key, _ in pairs(managers.player._special_item) do
	managers.player:add_special({name = key})
end
