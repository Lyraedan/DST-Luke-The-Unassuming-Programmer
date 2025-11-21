local FearBadge = require("widgets/fearbadge")

local function calcFearPosition(status)
	local brainPos = status.brain:GetPosition()
	local stomachPos = status.stomach:GetPosition()
	local heartPos = status.heart:GetPosition()

	local pos = GLOBAL.Vector3(stomachPos.x - 65, stomachPos.y, stomachPos.z)
	return pos
end

local function StatusPostConstruct(self)
	if self.owner.prefab == 'luke' then
		self.fear = self:AddChild(FearBadge(self.owner))
		self.fear.backing:GetAnimState():SetBuild("status_meter_fear")
		self.fear:Hide() -- Init the meter as hidden?
		self.fear.num:Show() -- Show the number on the meter
		local oldOnLoseFocus = self.fear.OnLoseFocus
		self.fear.OnLoseFocus = function(badge) -- Not sure?
			oldOnLoseFocus(badge)
			badge.num:Show()
		end

		self.owner.UpdateFearBadge = function()
			local percent = self.owner.fear_percent and self.owner.fear_percent:value() or 0
			local maxVal = self.owner.fear_maxval and self.owner.fear_maxval:value() or 0
			local numstore = self.owner.fear_numstore and self.owner.fear_numstore:value() or 0
			local pulse = self.owner.fear_pulse and self.owner.fear_pulse:value() or false
			local isDead = false -- Todo implement hiding badge when dead
			local pos = calcFearPosition(self)
			if isDead then
				self.fear:Hide() -- Hide the meter icon
			else
				self.fear:Show() -- Display the meter icon
			end
			self.fear:SetPosition(pos:Get()) -- Set the position of the meter icon
			self.fear:SetScale(self.brain:GetLooseScale()) -- Set the scale of the meter icon
			self.fear:SetPercent(percent / maxVal, maxVal) -- Set the meter current percentage
			self.fear.num:SetString(tostring(numstore)) -- Convert the numstore to a string and set the num display
			if pulse then
				--self.fear:PulseRed()
			end
		end
	end
end

AddClassPostConstruct("widgets/statusdisplays", StatusPostConstruct)