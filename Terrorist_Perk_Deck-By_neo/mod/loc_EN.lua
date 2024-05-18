local text_original = LocalizationManager.text
function LocalizationManager:text(string_id, ...)
return string_id == "all_2" and "Helmet Popping"
or string_id =="all_2_desc" and "Increases your headshot damage by ##25%##."
or string_id =="all_4" and "Blending In"
or string_id =="all_4_desc" and "You gain ##+1## increased concealment.\n\nWhen wearing armor, your movement speed is ##15%## less affected. \n\nYou gain ##45%## more experience when you complete days and jobs."
or string_id =="all_6" and "Walk-in Closet"
or string_id =="all_6_desc" and "Unlocks an armor bag equipment for you to use. The armor bag can be used to change your armor during a heist.\n\nIncreases your ammo pickup to ##135%## of the normal rate. "
or string_id =="all_8" and "Fast And Furious"
or string_id =="all_8_desc" and "You deal ##5%## more damage. Does not apply to melee damage, throwables, grenade launchers or rocket launchers."
or string_id == "neo-terrorist'name" and "Terrorist"
or string_id == "neo-terrorist'desc" and "The Terrorist perk deck focuses on chaotic and aggressive playstyles, rewarding players who thrive in the midst of mayhem. By embracing chaos and instilling fear in their enemies, players utilizing this perk deck become formidable forces on the battlefield."
or string_id == "neo-terrorist'perk1n" and "Anarchy's Resilience"
or string_id == "neo-terrorist'perk1d" and "You gain the ability to regenerate armor over a period of time along with increased Armor and an 8% damage reduction."
or string_id == "neo-terrorist'perk3n" and "Terrorizing Arsenal"
or string_id == "neo-terrorist'perk3d" and "This perk allows you to thrive off of other peoples fear, allowing you to regen 3% of health every 5 seconds along with guns having a 75% chance to cause panic among enemies with a +25% chance to pierce enemy armor."
or string_id == "neo-terrorist'perk5n" and "Vital Vigor"
or string_id == "neo-terrorist'perk5d" and "You have trained your endurance and resiliance and now have +50% stamina among your crew and +20% health."
or string_id == "neo-terrorist'perk7n" and "Suited Up"
or string_id == "neo-terrorist'perk7d" and "Increased armor by 35% and you gain +30 armor per kill of an enemy."
or string_id == "neo-terrorist'perk9n" and "Scavenger"
or string_id == "neo-terrorist'perk9d" and "The ability to be nimble has granted you +30% dodge and your ability to scavenge off dead bodies allows you to heal 32-40HP per ammo box."
or text_original(self, string_id, ...)
end