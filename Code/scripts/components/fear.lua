local Fear = Class(function(self, inst)
    self.inst = inst
    self.fearfactor = 0 -- Current fear
    self.maxfear = 100
    self.cooldownPeriod = 10

    -- threasholds
    self.scaresmall = 60
    self.scareregular = 80
    self.scareprovokables = 100
    self.scareplayers = 100

    self.timesincelastkill = 0
end,
nil,
{
    
})

local function OnCooldown(inst)
    
end

function Fear:Setup()
	self.maxfear = 100
    self.feardelay = 0
    self.fearmindelay = 120
    -- threasholds
    self.scaresmall = 60
    self.scareregular = 80
    self.scareprovokables = 100
    self.scareplayers = 100
end

function Fear:OnSave()
    return self.fearfactor ~= self.maxfear and { fearfactor = self.fearfactor } or nil
end

function Fear:OnLoad(data)
    if data.fearfactor ~= nil and self.fearfactor ~= data.fearfactor then
        self.fearfactor = data.fearfactor
    end
end

return Fear