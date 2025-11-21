local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
	Asset("SCRIPT", "scripts/prefabs/skilltree_luke.lua")
}
local prefabs = {}

TUNING.LUKE_HEALTH = 150
TUNING.LUKE_HUNGER = 150
TUNING.LUKE_SANITY = 120

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.LUKE = {
	"knife",
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.LUKE
end
local prefabs = FlattenTree(start_inv, true)

local ONFIRE = false
local ISFROZEN = false

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "luke_speed_mod", 1)
	inst:AddTag("notarget")
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
    inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "luke_speed_mod")
	inst:AddTag("notarget")
end

-- When loading or spawning the character
local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)
	inst:AddTag("notarget")

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
    if comp ~= nil then
        return comp:GetSanityPenalty()
    end
    return 0
end

local function OnEntityKilledFearGained(inst)
	if(STRINGS.CHARACTERS.LUKE.playFearGainSfx == "on") then
		inst.SoundEmitter:PlaySound("dontstarve/characters/wortox/soul/spawn")
	end
end

local function CassetteFearUpdate(inst)
	if inst.currentCassette then
		if inst.currentCassette.mixtape_data.title == "Nightmare mixtape" then
			-- reduce fear
			inst.components.fear:AddFear(-1)
		elseif inst.currentCassette.mixtape_data.title == "Spooky mixtape" then
			-- increase fear
			inst.components.fear:AddFear(1)
		end
	end
end

local function OnCassettePlayed(inst)
	--inst.components.talker:Say(inst.currentCassette.mixtape_data.title .. " Played")
	inst._cassette_fear_update_task = inst:DoPeriodicTask(1, CassetteFearUpdate, 1)
end

local function OnCassetteStopped(inst)
	--inst.components.talker:Say(inst.currentCassette.mixtape_data.title .. " Stopped")
	if inst._cassette_fear_update_task then
        inst._cassette_fear_update_task:Cancel()
        inst._cassette_fear_update_task = nil
    end
end

local function OnBecomeSeasick(inst)
	inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.SEA_SICKNESS[math.random(#STRINGS.CHARACTERS.LUKE.SEA_SICKNESS)])
end

local function OnCuredSeasick(inst)
	inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.SEA_SICKNESS_CURE[math.random(#STRINGS.CHARACTERS.LUKE.SEA_SICKNESS_CURE)])
end

local function OnFireCheck(inst)
	if ONFIRE == true then
		local fireCheck = (math.random(8) == 1)
		if fireCheck then
			inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.ONFIRE[math.random(#STRINGS.CHARACTERS.LUKE.ONFIRE)])
		end
		ONFIRE = false
	end
end

local function IsFrozenCheck(inst)
	if ISFROZEN == true then
		inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.ISFROZEN[math.random(#STRINGS.CHARACTERS.LUKE.ISFROZEN)])
		ISFROZEN = false
	end
end

local function OnFire(inst)
	ONFIRE = true
end

local function OnFrozen(inst)
	ISFROZEN = true
end

-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst)
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "luke.tex" )
	inst:AddTag("insomniac")
	inst:AddTag("notarget")
	inst:AddTag("frisk_builder")
	inst:AddTag("knifeowner")
	inst:RemoveTag("scarytoprey")
	inst:AddTag("spoiler")
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

	inst:AddComponent("fear")

	inst:ListenForEvent("killed", function(inst, data)
		inst.components.fear:OnEntityKilled(data)	
	end)

	inst:AddComponent("pigeonspawner")
	inst.components.pigeonspawner:SetRadius(15)
	inst.components.pigeonspawner:SetRate(0.0333333333333333, 0.01)

	-- choose which sounds this character will play
	inst.soundsname = "Warly" -- "luke" (pigeons)
	
	inst.components.foodaffinity:AddPrefabAffinity("bonestew", TUNING.AFFINITY_15_CALORIES_MED)
	inst.components.foodaffinity:AddPrefabAffinity("spoiled_food", -TUNING.AFFINITY_15_CALORIES_MED)
	inst.components.foodaffinity:AddPrefabAffinity("rottenegg", -TUNING.AFFINITY_15_CALORIES_MED)
	inst.components.foodaffinity:AddPrefabAffinity("spoiled_fish", -TUNING.AFFINITY_15_CALORIES_MED)
    inst.components.foodaffinity:AddPrefabAffinity("spoiled_fish_small", -TUNING.AFFINITY_15_CALORIES_MED)
	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.LUKE_HEALTH)
	inst.components.hunger:SetMax(TUNING.LUKE_HUNGER)
	inst.components.sanity:SetMax(TUNING.LUKE_SANITY)
	inst.components.sanity.night_drain_mult = 0.5

	inst:AddComponent("entomophobia")
	inst.components.sanity.custom_rate_fn = entomophobia_sanityfn
	
	-- Damage multiplier (optional)
	local fearNormalized = (inst.components.fear.fearfactor * 1) / inst.components.fear.maxfear -- Fear factor in a value of 0 - 1
    inst.components.combat.damagemultiplier = 0.75 + (fearNormalized * 0.75)
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	if inst.components.eater ~= nil then
        inst.components.eater:SetIgnoresSpoilage(true)
    end
	
	--[[
    local attractor = inst.components.birdattractor
    if attractor then
        attractor.spawnmodifier:SetModifier(inst, 24, "maxbirds")
        attractor.spawnmodifier:SetModifier(inst, -5, "mindelay")
        attractor.spawnmodifier:SetModifier(inst, -10, "maxdelay")

        local birdspawner = TheWorld.components.birdspawner
        if birdspawner ~= nil then
            birdspawner:ToggleUpdate(true)
        end
    end
	]]
	
	inst:DoPeriodicTask(0.5, OnFireCheck)
	inst:DoPeriodicTask(0.5, IsFrozenCheck)
	inst:DoPeriodicTask(5, tagGiver) -- Not sure if this is needed, just in case

	local function WithHat(inst, data)
		if data.item.prefab == "beehat" then
			inst.components.entomophobia:SetBeehatBlock(true)
			inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.PROTECTED_FROM_INSECTS)
		end
	end

	local function WithoutHat(inst, data)
		if data.item.prefab == "beehat" then
			inst.components.entomophobia:SetBeehatBlock(false)
			inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.UNPROTECTED_FROM_INSECTS)
		end
	end

	inst:ListenForEvent("equip", WithHat)
	inst:ListenForEvent("unequip", WithoutHat)
	inst:ListenForEvent("firedamage", OnFire)
	inst:ListenForEvent("freeze", OnFrozen)

	inst:ListenForEvent("on_cassette_played", function() return OnCassettePlayed(inst) end)
	inst:ListenForEvent("on_cassette_stopped", function() return OnCassetteStopped(inst) end)

	inst:ListenForEvent("entitykilled_feargained", function() return OnEntityKilledFearGained(inst) end)

	inst._onrespawnfromghost = function(inst, data)
		inst.components.fear:Respawn()
	end
	inst:ListenForEvent("respawnfromghost", inst._onrespawnfromghost)

	inst:AddComponent("seasick")
	inst:ListenForEvent("become_seasick", function() return OnBecomeSeasick(inst) end)
	inst:ListenForEvent("cure_seasick", function() return OnCuredSeasick(inst) end)
	inst.components.seasick:Start()

	inst:AddComponent("luke_mutterer")
	inst.components.luke_mutterer.seasick_comp = inst.components.seasick
	inst.components.luke_mutterer:Start()

	-- Shipwrecked / IA event hooks
	inst:ListenForEvent("embarkboat", function() inst.components.seasick:OnEmbarked() end)
	inst:ListenForEvent("disembarkboat", function() inst.components.seasick:OnDisembarked() end)

	inst:AddTag("spoiler")

	inst.OnLoad = onload
    inst.OnNewSpawn = onload
end

return MakePlayerCharacter("luke", prefabs, assets, common_postinit, master_postinit, start_inv)
