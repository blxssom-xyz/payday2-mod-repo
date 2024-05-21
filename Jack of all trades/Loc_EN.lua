local text_original = LocalizationManager.text
function LocalizationManager:text(string_id, ...)
return string_id == "all_2" and "Helmet Popping"
or string_id =="all_2_desc" and "Increases your headshot damage by ##25%##."
or string_id =="all_4" and "Blending In"
or string_id =="all_4_desc" and "You gain ##+1## increased concealment.\n\nWhen wearing armor, your movement speed is ##15%## less affected. \n\nYou gain ##45%## more experience when you complete days and jobs."
or string_id =="all_6" and "Walk-in Closet"
or string_id =="all_6_desc" and "Unlocks an armor bag equipment for you to use. The armor bag can be used to change your armor during a heist.\n\nIncreases your ammo pickup to ##135%## of the normal rate. "
or string_id =="all_8" and "Fast and Furious"
or string_id =="all_8_desc" and "You do ##5%## more damage. Does not apply to melee damage, throwables, grenade launchers and the HRL-7 Rocket Launcher.\n\nIncreases your doctor bag interaction speed by ##20%##. "

or string_id == "Joat_title" and "Jack of all trades"
or string_id == "Joat_desc" and "Jack of all trades, master of none\nYou are a heister that is competent with many skills, but no particular one."
or string_id == "Joat_1" and "Rogue"
or string_id == "Joat_1_desc" and "Your impressive speed enables you to dodge incomming bullets.\nYou also move slightly faster while crouched.\n\nYou gain ##20%## dodge chance.\nYou gain ##10%## additional dodge chance while crouched.\nYou gain ##5%## increased movement speed while crouched."
or string_id == "Joat_3" and "Tank"
or string_id == "Joat_3_desc" and "Your strong body endure more damage before you go down.\nYou pack some extra armor just in case.\n\nYour health is increased by ##10%##.\nYour armor is increased by ##20%##."
or string_id == "Joat_5" and "Wolverine"
or string_id == "Joat_5_desc" and "Your experience in the battlefield has taught you to heal your own wounds.\n\nYou regenerate ##3%## health per ##5## seconds.\n\nDamaging an enemy heals ##1## life point every ##0,5## seconds for ##3## seconds.\n\nThis effect stacks but cannot occur more than once every ##1,5## seconds and only while wearing the Two-piece Suit or Lightweight Ballistic Vest."
or string_id == "Joat_7" and "Junkie"
or string_id == "Joat_7_desc" and "Your keen eye detects more ammunition on dead enemies.\n\nYou pickup ##15%## more ammo.\n\nDoes not stack with fully loaded."
or string_id == "Joat_9" and "Thief"
or string_id == "Joat_9_desc" and "Your nimble fingers and silver tounge makes you able to pick locks and answer pagers faster.\nYour ninja like movement makes it easier to avoid detection.\n\nYou pick locks ##10%## faster.\nYou answer pagers ##10%## faster.\nYou gain ##+2## increased concealment.\n\nDeck Completion Bonus: Your chance of getting a higher quality item during a PAYDAY is increased by ##10%##."

or text_original(self, string_id, ...)
end