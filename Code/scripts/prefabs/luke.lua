local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
    Asset("SCRIPT", "scripts/prefabs/skilltree_luke.lua"),
}

-- Custom stats
TUNING.LUKE_HEALTH = 150
TUNING.LUKE_HUNGER = 150
TUNING.LUKE_SANITY = 120

TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.LUKE = { "knife" }

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.LUKE
end

local prefabs = FlattenTree(start_inv, true)

local ONFIRE = false
local ISFROZEN = false

-- Event Handlers
local function onbecamehuman(inst)
    inst.components.locomotor:SetExternalSpeedMultiplier(inst, "luke_speed_mod", 1)
    inst:AddTag("notarget")
end

local function onbecameghost(inst)
    inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "luke_speed_mod")
    inst:AddTag("notarget")
end

local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

local function tagGiver(inst)
    inst.components.fear:ApplyFearTags()
end

local function entomophobia_sanityfn(inst)
    local comp = inst.components.entomophobia
    return comp and comp:GetSanityPenalty() or 0
end

local function OnEntityKilledFearGained(inst)
    if STRINGS.CHARACTERS.LUKE.playFearGainSfx == "on" then
        inst.SoundEmitter:PlaySound("dontstarve/characters/wortox/soul/spawn")
    end
end

local function CassetteEffectsUpdate(inst)
    if inst.currentCassette then
        local title = inst.currentCassette.mixtape_data.title

        local switch = {
            ["Nightmare mixtape"] = function() inst.components.fear:AddFear(-1) end,
            ["Spooky mixtape"]   = function() inst.components.fear:AddFear(1) end,
        }

        if switch[title] then
            switch[title]()
        end
    end
end

local function OnCassettePlayed(inst)
    inst._cassette_effect_update_task = inst:DoPeriodicTask(1, CassetteEffectsUpdate, 1)
end

local function OnCassetteStopped(inst)
    if inst._cassette_effect_update_task then
        inst._cassette_effect_update_task:Cancel()
        inst._cassette_effect_update_task = nil
    end
end

local function OnBecomeSeasick(inst)
    inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.SEA_SICKNESS[math.random(#STRINGS.CHARACTERS.LUKE.SEA_SICKNESS)])
end

local function OnCuredSeasick(inst)
    inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.SEA_SICKNESS_CURE[math.random(#STRINGS.CHARACTERS.LUKE.SEA_SICKNESS_CURE)])
end

local function OnFireCheck(inst)
    if ONFIRE and math.random(8) == 1 then
        inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.ONFIRE[math.random(#STRINGS.CHARACTERS.LUKE.ONFIRE)])
        ONFIRE = false
    end
end

local function IsFrozenCheck(inst)
    if ISFROZEN then
        inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.ISFROZEN[math.random(#STRINGS.CHARACTERS.LUKE.ISFROZEN)])
        ISFROZEN = false
    end
end

local function OnFire(inst) ONFIRE = true end
local function OnFrozen(inst) ISFROZEN = true end

-- Character Initialization
local common_postinit = function(inst)
    inst.MiniMapEntity:SetIcon("luke.tex")
    inst:AddTag("insomniac")
    inst:AddTag("notarget")
    inst:AddTag("frisk_builder")
    inst:AddTag("knifeowner")
    inst:AddTag("spoiler")
    inst:RemoveTag("scarytoprey")
end

local master_postinit = function(inst)
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

    -- Fear system
    inst:AddComponent("fear")
    inst:ListenForEvent("killed", function(inst, data) inst.components.fear:OnEntityKilled(data) end)
    
    -- Pigeon spawner
    inst:AddComponent("pigeonspawner")
    inst.components.pigeonspawner:SetRadius(15)
    inst.components.pigeonspawner:SetRate(0.0333333333333333, 0.01)

    -- Character sounds
    inst.soundsname = "Warly" -- "luke" (pigeons)

    -- Food affinities
    local foodaff = inst.components.foodaffinity
    foodaff:AddPrefabAffinity("bonestew", TUNING.AFFINITY_15_CALORIES_MED)
    foodaff:AddPrefabAffinity("spoiled_food", -TUNING.AFFINITY_15_CALORIES_MED)
    foodaff:AddPrefabAffinity("rottenegg", -TUNING.AFFINITY_15_CALORIES_MED)
    foodaff:AddPrefabAffinity("spoiled_fish", -TUNING.AFFINITY_15_CALORIES_MED)
    foodaff:AddPrefabAffinity("spoiled_fish_small", -TUNING.AFFINITY_15_CALORIES_MED)

    -- Stats
    inst.components.health:SetMaxHealth(TUNING.LUKE_HEALTH)
    inst.components.hunger:SetMax(TUNING.LUKE_HUNGER)
    inst.components.hunger.hungerrate = TUNING.WILSON_HUNGER_RATE
    inst.components.sanity:SetMax(TUNING.LUKE_SANITY)
    inst.components.sanity.night_drain_mult = 0.5

    -- Entomophobia
    inst:AddComponent("entomophobia")
    inst.components.sanity.custom_rate_fn = entomophobia_sanityfn

    -- Combat damage multiplier (fear-based)
    local fearNormalized = (inst.components.fear.fearfactor * 1) / inst.components.fear.maxfear
    inst.components.combat.damagemultiplier = 0.75 + (fearNormalized * 0.75)

    -- Eater component
    if inst.components.eater then
        inst.components.eater:SetIgnoresSpoilage(true)
    end

    -- Periodic tasks
    inst:DoPeriodicTask(0.5, OnFireCheck)
    inst:DoPeriodicTask(0.5, IsFrozenCheck)
    inst:DoPeriodicTask(5, tagGiver)

    -- Hat events for entomophobia
    inst:ListenForEvent("equip", function(inst, data)
        if data.item.prefab == "beehat" then
            inst.components.entomophobia:SetBeehatBlock(true)
            inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.PROTECTED_FROM_INSECTS)
        end
    end)
    inst:ListenForEvent("unequip", function(inst, data)
        if data.item.prefab == "beehat" then
            inst.components.entomophobia:SetBeehatBlock(false)
            inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.UNPROTECTED_FROM_INSECTS)
        end
    end)

    -- Fire & Freeze events
    inst:ListenForEvent("firedamage", OnFire)
    inst:ListenForEvent("freeze", OnFrozen)

    -- Cassette player events
    inst:ListenForEvent("on_cassette_played", function() OnCassettePlayed(inst) end)
    inst:ListenForEvent("on_cassette_stopped", function() OnCassetteStopped(inst) end)

    -- Fear gained
    inst:ListenForEvent("entitykilled_feargained", function() OnEntityKilledFearGained(inst) end)

    -- Respawn
    inst._onrespawnfromghost = function(inst)
        inst.components.fear:Respawn()
    end
    inst:ListenForEvent("respawnfromghost", inst._onrespawnfromghost)

    -- Seasick component
    inst:AddComponent("seasick")
    inst:ListenForEvent("become_seasick", function() OnBecomeSeasick(inst) end)
    inst:ListenForEvent("cure_seasick", function() OnCuredSeasick(inst) end)
    inst.components.seasick:Start()

    -- Mutterer component
    inst:AddComponent("luke_mutterer")
    inst.components.luke_mutterer.seasick_comp = inst.components.seasick
    inst.components.luke_mutterer:Start()

    -- Shipwrecked / IA events
    inst:ListenForEvent("embarkboat", function() inst.components.seasick:OnEmbarked() end)
    inst:ListenForEvent("disembarkboat", function() inst.components.seasick:OnDisembarked() end)

    -- Load handlers
    inst.OnLoad = onload
    inst.OnNewSpawn = onload
end

return MakePlayerCharacter("luke", prefabs, assets, common_postinit, master_postinit, start_inv)
