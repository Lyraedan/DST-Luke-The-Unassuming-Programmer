local LukeMutterer = Class(function(self, inst)
    self.inst = inst

    self.mutter_rate = 16

    self._task = nil
    self._checked_ia = false
    self.ia_enabled = false

    self.seasick_comp = nil
end)

function LukeMutterer:CheckIA()
    if self._checked_ia then return end

    local enabled = KnownModIndex:IsModEnabled("workshop-1467214795")
    if enabled == nil then enabled = false end

    self.ia_enabled = enabled
    self._checked_ia = true
end

function LukeMutterer:IsInCave()
    return TheWorld:HasTag("cave")
end

function LukeMutterer:IsSane()
    return self.inst.components.sanity
        and self.inst.components.sanity:GetPercent() > 0.25
end

function LukeMutterer:IsHungry()
    return self.inst.components.hunger
        and self.inst.components.hunger:GetPercent() > 0.25
end

function LukeMutterer:IsSeasick()
    return self.seasick_comp and self.seasick_comp.seasick or false
end

function LukeMutterer:DoMutter()
    if math.random(self.mutter_rate) ~= 1 then
        return
    end

    self:CheckIA()

    local inst = self.inst
    local season = TheWorld.state.season
    local is_cave = self:IsInCave()
    local sane = self:IsSane()
    local not_hungry = self:IsHungry()
    local seasick = self:IsSeasick()

    -- CAVE MUTTER
    if sane and not_hungry and is_cave then
        inst.components.talker:Say(
            STRINGS.CHARACTERS.LUKE.MUTTER_CAVE[
                math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_CAVE)
            ]
        )
        return
    end

    -- INSANITY MUTTER
    if not sane then
        inst.components.talker:Say(
            STRINGS.CHARACTERS.LUKE.MUTTER_INSANITY[
                math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_INSANITY)
            ]
        )
        return
    end

    -- HUNGER MUTTER
    if not not_hungry then
        inst.components.talker:Say(
            STRINGS.CHARACTERS.LUKE.MUTTER_HUNGRY[
                math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_HUNGRY)
            ]
        )
        return
    end

    -- SEASON MUTTERS
    local land_table = nil
    local sea_table  = nil

    if season == "spring" then
        land_table = self.ia_enabled and STRINGS.CHARACTERS.LUKE.MUTTER_LAND_MONSOON or STRINGS.CHARACTERS.LUKE.MUTTER_LAND_SPRING
        sea_table  = self.ia_enabled and STRINGS.CHARACTERS.LUKE.MUTTER_SEA_MONSOON  or STRINGS.CHARACTERS.LUKE.MUTTER_SEA_SPRING

    elseif season == "summer" then
        land_table = self.ia_enabled and STRINGS.CHARACTERS.LUKE.MUTTER_LAND_DRY     or STRINGS.CHARACTERS.LUKE.MUTTER_LAND_SUMMER
        sea_table  = self.ia_enabled and STRINGS.CHARACTERS.LUKE.MUTTER_SEA_DRY      or STRINGS.CHARACTERS.LUKE.MUTTER_SEA_SUMMER

    elseif season == "autumn" then
        land_table = self.ia_enabled and STRINGS.CHARACTERS.LUKE.MUTTER_LAND_MILD    or STRINGS.CHARACTERS.LUKE.MUTTER_LAND_AUTUMN
        sea_table  = self.ia_enabled and STRINGS.CHARACTERS.LUKE.MUTTER_SEA_MILD     or STRINGS.CHARACTERS.LUKE.MUTTER_SEA_AUTUMN

    elseif season == "winter" then
        land_table = self.ia_enabled and STRINGS.CHARACTERS.LUKE.MUTTER_LAND_HURRICANE or STRINGS.CHARACTERS.LUKE.MUTTER_LAND_WINTER
        sea_table  = self.ia_enabled and STRINGS.CHARACTERS.LUKE.MUTTER_SEA_HURRICANE  or STRINGS.CHARACTERS.LUKE.MUTTER_SEA_WINTER
    end

    local data = (seasick and sea_table or land_table)
    if data then
        inst.components.talker:Say(data[math.random(#data)])
    end
end

function LukeMutterer:Start()
    if self._task == nil then
        self._task = self.inst:DoPeriodicTask(10, function() self:DoMutter() end)
    end
end

function LukeMutterer:Stop()
    if self._task then
        self._task:Cancel()
        self._task = nil
    end
end

return LukeMutterer
