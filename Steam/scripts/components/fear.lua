TUNING.ENTITY_FEAR = {
    hound = 3,
    firehound = 4,
    icehound = 4,
    clayhound = 4,
    mutatedhound = 5,

    bee = 1,
    killerbee = 2,
    beehive = 3,

    spider_hider = 4,
    spider_spitter = 5,
    spider = 3,
    spider_warrior = 4,
    spiderden = 3,
    spiderden_2 = 4,
    spiderden_3 = 5,
    spiderqueen = 9,

    tallbird = 5,

    leif = 8,
    leif_sparse = 6,

    tentacle = 4,
    tentacle_pillar = 3,

    krampus = 7,

    mosquito = 1,
    crawlinghorror = 6,
    terrorbeak = 8,

    deerclops = 12,
    dragonfly = 15,
    moose = 10,
    bearger = 12,
    stalker = 10,
    antlion = 12,

    klaus = 14,

    bunnyman = 4,
    rocky = 4,
    pigman = 3,
    babybeefalo = 2,
    beefalo = 6,
    beefalohard = 12,

    crow = 1,
    robin = 1,
    robin_winter = 1,
    smallbird = 1,
    teenbird = 2,

    frog = 1,

    koalefant_summer = 8,
    koalefant_winter = 8,

    merm = 3,
    penguin = 2,
    perd = 2,
    rabbit = 1,

    walrus = 7,
    little_walrus = 4,

    chester = 50, -- You monster

    mandrake = 2,

    pigguard = 8,

    butterfly = 1,
    bat = 1,

    slurtle = 4,
    snurtle = 4,

    worm = 8,

    bishop = 6,
    knight = 7,

    pigeon = 1
}

local Fear = Class(function(self, inst)
    self.inst = inst
    self.fearfactor = 0
    self.maxfear = 100

    -- Timers
    self.timesincelastkill = 0
    self.cooldownPeriod = 10 -- 30
    self.cooldowntick = 1

    -- Thresholds
    self.scaresmall = 60
    self.scareregular = 80
    self.scareprovokables = 100
    self.scareplayers = 100

    self._cooldown_task = inst:DoPeriodicTask(self.cooldowntick, function()
        self:OnCooldownTick()
    end)
end)

function Fear:AddFear(amount)
    self.fearfactor = self.fearfactor + amount

    -- Clamp
    self.fearfactor = math.clamp(self.fearfactor, 0, self.maxfear)

    -- Update combat multiplier
    local normalized = self.fearfactor / self.maxfear
    if self.inst.components.combat then
        self.inst.components.combat.damagemultiplier = 0.75 + normalized * 0.75
    end

    self:ApplyFearTags()

    self.inst:PushEvent("luke_fearupdate", {})
    self.timesincelastkill = 0
end

function Fear:ApplyFearTags()
    local inst = self.inst
    local fear = self.fearfactor

    if fear <= self.scaresmall then
        inst:AddTag("notarget")
        inst:RemoveTag("scarytoprey")
        inst:RemoveTag("monster")
    else
        inst:RemoveTag("notarget")
        inst:AddTag("scarytoprey")

        if fear > self.scareregular then
            inst:AddTag("monster")
        else
            inst:RemoveTag("monster")
        end
    end
end

function Fear:OnCooldownTick()
    self.timesincelastkill = self.timesincelastkill + 1

    if self.timesincelastkill >= self.cooldownPeriod then
        self:AddFear(-1)
    end

    self:DriveNearbyPlayersInsane()
end

function Fear:OnEntityKilled(data)
    if data and data.victim and data.attacker == self.inst then
        local prefab = data.victim.prefab
        
        local entry = TUNING.ENTITY_FEAR[prefab]
        local fearGain = TUNING.ENTITY_FEAR[prefab] or 1

        self.timesincelastkill = 0
        self.inst:PushEvent("entitykilled_feargained", { })
        self:AddFear(fearGain)
    end
end

-- Affect nearby players
function Fear:DriveNearbyPlayersInsane()
    if self.fearfactor < self.scareplayers then
        return
    end

    local x, y, z = self.inst.Transform:GetWorldPosition()
    local players = TheSim:FindEntities(
        x, y, z, 25,
        { "player", "character" },
        { "playerghost", "INLIMBO" }
    )

    for _, player in ipairs(players) do
        if player.components.sanity then
            player.components.sanity:DoDelta(-0.1, true)
        end
    end
end

function Fear:Respawn()
    self:AddFear(-100)
    self.timesincelastkill = 0
end

function Fear:OnSave()
    return { fearfactor = self.fearfactor }
end

function Fear:OnLoad(data)
    if data.fearfactor then
        self.fearfactor = data.fearfactor
        self:ApplyFearTags()
    end
end

return Fear
