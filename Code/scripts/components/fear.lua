TUNING.ENTITY_FEAR = {
	hound = {
		name = "hound",
		fearGain = 4
	},
	firehound = {
		name = "firehound",
		fearGain = 4
	},
	icehound = {
		name = "icehound",
		fearGain = 4
	},
	clayhound = {
		name = "clayhound",
		fearGain = 4
	},
	mutatedHound = {
		name = "mutatedhound",
		fearGain = 4
	},
	bee = {
		name = "bee",
		fearGain = 1
	},
	killerbee = {
		name = "killerbee",
		fearGain = 2
	},
	beehive = {
		name = "beehive",
		fearGain = 3
	},
	cavespider = {
		name = "spider_hider",
		fearGain = 4
	},
	spitter = {
		name = "spider_spitter",
		fearGain = 5
	},
	deerclops = {
		name = "deepclops",
		fearGain = 10
	},
	ghost = {
		name = "ghost",
		fearGain = 3
	},
	houndfire = {
		name = "houndfire",
		fearGain = 4
	},
	houndbone = {
		name = "houndbone",
		fearGain = 4
	},
	houndmound = {
		name = "houndmound",
		fearGain = 4
	},
	krampus = {
		name = "krampus",
		fearGain = 7
	},
	mosquito = {
		name = "mosquito",
		fearGain = 1
	},
	crawlinghorror = {
		name = "crawlinghorror",
		fearGain = 6
	},
	terrorbeak = {
		name = "terrorbeak",
		fearGain = 8
	},
	spider = {
		name = "spider",
		fearGain = 3
	},
	spiderwarrior = {
		name = "spider_warrior",
		fearGain = 4
	},
	spiderden = {
		name = "spiderden",
		fearGain = 3
	},
	spiderden_2 = {
		name = "spiderden_2",
		fearGain = 4
	},
	spiderden_3 = {
		name = "spiderden_3",
		fearGain = 5
	},
	spiderqueen = {
		name = "spiderqueen",
		fearGain = 9
	},
	tallbird = {
		name = "tallbird",
		fearGain = 5
	},
	treeguard = {
		name = "leif",
		fearGain = 7
	},
	tentacle = {
		name = "tentacle",
		fearGain = 5
	},
	tentapillar = {
		name = "tentacle_piller",
		fearGain = 3
	},
	killerbeehive = {
		name = "wasphive",
		fearGain = 4
	},
	moose = {
		name = "moose",
		fearGain = 7
	},
	dragonfly = {
		name = "dragonfly",
		fearGain = 10
	},
	klaus = {
		name = "klaus",
		fearGain = 10
	},
	bearger = {
		name = "bearger",
		fearGain = 10
	},
	reanimatedskeleton = {
		name = "stalker",
		fearGain = 10
	},
	antlion = {
		name = "antlion",
		fearGain = 10
	},
	bunnyman = {
		name = "bunnyman",
		fearGain = 4
	},
	rocklobster = {
		name = "rocky",
		fearGain = 4
	},
	pigman = {
		name = "pigman",
		fearGain = 4
	},
	babybeefalo = {
		name = "babybeefalo",
		fearGain = 4
	},
	beefalo = {
		name = "beefalo",
		fearGain = 6
	},
	beefalohard = {
		name = "beefalohard",
		fearGain = 10
	},
	crow = {
		name = "crow",
		fearGain = 2
	},
	redbird = {
		name = "robin",
		fearGain = 2
	},
	snowbird = {
		name = "robin_winter",
		fearGain = 2
	},
	frog = {
		name = "frog",
		fearGain = 2
	},
	koalefantsummer = {
		name = "koalefant_summer",
		fearGain = 6
	},
	koalefantwinter = {
		name = "koalefant_winter",
		fearGain = 6
	},
	merm = {
		name = "merm",
		fearGain = 4
	},
	pengull = {
		name = "penguin",
		fearGain = 3
	},
	gobbler = {
		name = "perd",
		fearGain = 3
	},
	rabbit = {
		name = "rabbit",
		fearGain = 2
	},
	mactusk = {
		name = "walrus",
		fearGain = 5
	},
	weemactusk = {
		name = "little_walrus",
		fearGain = 3
	},
	chester = {
		name = "chester",
		fearGain = 100 -- you monster
	},
	treeguardsparce = {
		name = "leif_sparse",
		fearGain = 7
	},
	mandrake = {
		name = "mandrake",
		fearGain = 2
	},
	pigguard = {
		name = "pigguard",
		fearGain = 6
	},
	smallbird = {
		name = "smallbird",
		fearGain = 3
	},
	teenbird = {
		name = "teenbird",
		fearGain = 4
	},
	butterfly = {
		name = "butterfly",
		fearGain = 1
	},
	bat = {
		name = "bat",
		fearGain = 2
	},
	slurtle = {
		name = "slurtle",
		fearGain = 4
	},
	snurtle = {
		name = "snurtle",
		fearGain = 4
	},
	depthsworm = {
		name = "worm",
		fearGain = 7
	},
	clockworkbishop = {
		name = "bishop",
		fearGain = 4
	},
	clockworkknight = {
		name = "knight",
		fearGain = 4
	},
	pigeon = {
		name = "pigeon",
		fearGain = 2
	}
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
        self.timesincelastkill = 0
    end

    self:DriveNearbyPlayersInsane()
end

function Fear:OnEntityKilled(data)
    if data and data.victim and data.attacker == self.inst then
        local prefab = data.victim.prefab

        local fearGain = TUNING.ENTITY_FEAR[prefab].fearGain or 1
        self.timesincelastkill = 0

        self.inst:PushEvent("entitykilled_feargained", {})

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
        { "player" },
        { "playerghost", "INLIMBO" }
    )

    for _, player in ipairs(players) do
        if player ~= self.inst and player.components.sanity then
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
    end
end

return Fear
