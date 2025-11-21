local Badge = require "widgets/badge"
local UIAnim = require "widgets/uianim"

local FearBadge = Class(Badge, function(self, owner)
    Badge._ctor(self, nil, owner, {127 / 255, 1 / 255, 1 / 255, 1}, "status_fear", nil, nil, true)
end)

function FearBadge:SetPercent(percent, max)
    Badge.SetPercent(self, percent, max)
    if self.oldpercent then
        if percent > self.oldpercent then
            self:PulseRed() -- When we gain percent be red
        elseif percent < self.oldpercent then
            self:PulseGreen() -- When we lose percent be green
        end
    end
    self.oldpercent = percent
end

return FearBadge