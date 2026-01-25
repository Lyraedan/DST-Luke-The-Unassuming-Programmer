local Seasick = Class(function(self, inst)
    self.inst = inst

    self.onboat = false
    self.seasick = false
    self.ia_enabled = false
    self.ia_onboat = false

    self._updatetask = nil
end)

-- Check is island adventures is active
function Seasick:CheckIA()
    if self._checked_ia then return end

    local enabled = KnownModIndex:IsModEnabled("workshop-1467214795")
    if enabled == nil then enabled = false end

    self.ia_enabled = enabled
    self._checked_ia = true
end

function Seasick:IsOnBoat()
    if self.ia_onboat then
        return true
    end

    -- Normal DST boat detection
    return self.inst:GetCurrentPlatform() ~= nil
end

function Seasick:Update()
    self:CheckIA()

    local new_onboat = self:IsOnBoat()

    -- Apply grogginess when on boat
    if new_onboat then
        if self.inst.components.grogginess ~= nil
        and self.inst.components.grogginess.grog_amount < 0.5 then
            self.inst.components.grogginess:AddGrogginess(0.5, 1)
        end
    end

    -- If state changed => say line
    if new_onboat ~= self.seasick then
        if new_onboat then
            self.inst:PushEvent("become_seasick", {})
        else
            self.inst:PushEvent("cure_seasick", {})
        end

        self.seasick = new_onboat
    end
end

function Seasick:Start()
    if self._updatetask == nil then
        self._updatetask = self.inst:DoPeriodicTask(0.5, function() self:Update() end)
    end
end

function Seasick:Stop()
    if self._updatetask ~= nil then
        self._updatetask:Cancel()
        self._updatetask = nil
    end
end

function Seasick:OnEmbarked()
    self.ia_onboat = true
end

function Seasick:OnDisembarked()
    self.ia_onboat = false
end

return Seasick