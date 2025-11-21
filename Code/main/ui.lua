local FearBadge = require("widgets/fearbadge")

local function calcFearPosition(status)
	local brainPos = status.brain:GetPosition()
	local stomachPos = status.stomach:GetPosition()
	local heartPos = status.heart:GetPosition()

	local pos = GLOBAL.Vector3(stomachPos.x - 65, stomachPos.y, stomachPos.z)
	return pos
end

local function StatusPostConstruct(self)
    if self.owner.prefab ~= "luke" then
        return
    end

    self.fear = self:AddChild(FearBadge(self.owner))
    self.fear.backing:GetAnimState():SetBuild("status_meter_fear")
    self.fear:Hide()          -- Start hidden

	-- Check if Combined Status is enabled
	if GLOBAL.KnownModIndex:IsModEnabled("376333686") then
		self.fear.num:Show()      -- Always show the number
	else
		self.fear.num:Show()      -- Hide the number (TEMP FORCED SHOW)
	end
    
    local oldOnLoseFocus = self.fear.OnLoseFocus
    self.fear.OnLoseFocus = function(badge)
        if oldOnLoseFocus then
            oldOnLoseFocus(badge)
        end
        --badge.num:Show()
    end

    -- Function to update the FearBadge
    self.owner.UpdateFearBadge = function()
        local percent = self.owner.fear_percent and self.owner.fear_percent:value() or 0
        local maxVal = self.owner.fear_maxval and self.owner.fear_maxval:value() or 1
        local numstore = self.owner.fear_numstore and self.owner.fear_numstore:value() or 0
        local isDead = self.owner.components.health and self.owner.components.health:IsDead()

        -- Update visibility
        if isDead then
            self.fear:Hide()
        else
            self.fear:Show()
        end

        -- Update position, scale, and values
        local pos = calcFearPosition(self)
        self.fear:SetPosition(pos:Get())
        self.fear:SetScale(self.brain:GetLooseScale())
        self.fear:SetPercent(percent / maxVal, maxVal)
        self.fear.num:SetString(tostring(numstore))
    end
end


AddClassPostConstruct("widgets/statusdisplays", StatusPostConstruct)