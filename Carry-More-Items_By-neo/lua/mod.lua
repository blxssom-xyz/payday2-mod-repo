    NEO_CARRYMOREITEMS = NEO_CARRYMOREITEMS or class()

    if not NEO_CARRYMOREITEMS.ready then
        NEO_CARRYMOREITEMS.ready = true

        --Config for your items, current should always be 0, max whatever max you want.
        --Find values at EquipmentsTweakData/tweak_data.equipment and use any in the specials
        --table.
        managers.player._special_item = {
            bank_manager_key = { current = 0, max = 2 }
        }


        --Hooks
        NEO_CARRYMOREITEMS.orig__PlayerManager = {
            add_special = PlayerManager.add_special,
            remove_special = PlayerManager.remove_special,
            can_pickup_equipment = PlayerManager.can_pickup_equipment
        }

        --Any added after the 1st one will increase counter and skip the rest of the code
        function PlayerManager.add_special(self, params)
            local name = params.equipment or params.name
            local special_item = self._special_item[name]
            if special_item and special_item.current < special_item.max then
                self._special_item[name].current = special_item.current + 1
                if special_item.current > 1 then log("more than 1") return end
            end

            NEO_CARRYMOREITEMS.orig__PlayerManager.add_special(self, params)
        end

        --If you have more than one it'll just decrease the counter and not run the rest
        function PlayerManager.remove_special(self, name)
            local special_item = self._special_item[name]
            if special_item and special_item.current > 1 then
                self._special_item[name].current = special_item.current - 1
                return
            end

            NEO_CARRYMOREITEMS.orig__PlayerManager.remove_special(self, name)
        end

        --This allows you to pickup more than one
        function PlayerManager.can_pickup_equipment(self, name)
            local special_item = self._special_item[name]
            if special_item and special_item.current < special_item.max then
                 return true
            end

            return NEO_CARRYMOREITEMS.orig__PlayerManager.can_pickup_equipment(self, name)
        end
    end
