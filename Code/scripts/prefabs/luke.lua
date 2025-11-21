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

local BEEHAT = false
local MUTTER_RATE = 16; --16

local ONBOAT = false
local SEASICK = false

local IA_ENABLED = false;
local IA_ONBOAT = false

local ONFIRE = false
local ISFROZEN = false

local INCAVE = false

local function Ternary(condition, whenTrue, whenFalse)
	if condition == true then
		return whenTrue
	else
		return whenFalse
	end
end

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

local function CaveCheck(inst)
	INCAVE = TheWorld:HasTag("cave")
	if INCAVE == nil then
		INCAVE = false
	end
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

	inst:DoPeriodicTask(0.5, CaveCheck)

	IA_ENABLED = KnownModIndex:IsModEnabled("workshop-1467214795"); -- Island Adventures : Shipwrecked
	if (IA_ENABLED == nil) then -- When a workshop item can't be found it returns nil instead of false
		IA_ENABLED = false
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

local function BoatCheck(inst)
	if IA_ONBOAT then
		ONBOAT = IA_ONBOAT
	else
		ONBOAT = inst:GetCurrentPlatform() ~= nil
	end

	if ONBOAT then
		if inst.components.grogginess ~= nil and inst.components.grogginess.grog_amount < 0.5 then
			inst.components.grogginess:AddGrogginess(0.5, 1)
		end
	end
	-- Sea sickness quotes
	if SEASICK ~= ONBOAT then
		if ONBOAT == true then
			inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.SEA_SICKNESS[math.random(#STRINGS.CHARACTERS.LUKE.SEA_SICKNESS)])
		else
			inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.SEA_SICKNESS_CURE[math.random(#STRINGS.CHARACTERS.LUKE.SEA_SICKNESS_CURE)])
		end
		--inst.SoundEmitter:PlaySound("luke/luke/talk_LP")
		SEASICK = ONBOAT
	end
end

local function IA_OnEmbarked(inst)
	IA_ONBOAT = true
end

local function IA_OnDisembarked(inst)
	IA_ONBOAT = false
end

local function Mutter(inst)
	local mutterCheck = (math.random(MUTTER_RATE) == 1)
	if mutterCheck then
		local season = TheWorld.state.season
		local isSain = (inst.components.sanity:GetPercent() > 0.25)
		local isNotHungry = (inst.components.hunger:GetPercent() > 0.25)

		if isSain and isNotHungry and (INCAVE == false) then
			if season == "spring" then
				if SEASICK  then
					inst.components.talker:Say(Ternary(IA_ENABLED == false, STRINGS.CHARACTERS.LUKE.MUTTER_SEA_SPRING[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_SEA_SPRING)], 
																			STRINGS.CHARACTERS.LUKE.MUTTER_SEA_MONSOON[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_SEA_MONSOON)]))
				else
					inst.components.talker:Say(Ternary(IA_ENABLED == false, STRINGS.CHARACTERS.LUKE.MUTTER_LAND_SPRING[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_LAND_SPRING)],
																		    STRINGS.CHARACTERS.LUKE.MUTTER_LAND_MONSOON[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_LAND_MONSOON)]))
				end
			elseif season == "summer" then
				if SEASICK then
					inst.components.talker:Say(Ternary(IA_ENABLED == false, STRINGS.CHARACTERS.LUKE.MUTTER_SEA_SUMMER[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_SEA_SUMMER)],
																		    STRINGS.CHARACTERS.LUKE.MUTTER_SEA_DRY[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_SEA_DRY)]))
				else
					inst.components.talker:Say(Ternary(IA_ENABLED == false, STRINGS.CHARACTERS.LUKE.MUTTER_LAND_SUMMER[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_LAND_SUMMER)],
																			STRINGS.CHARACTERS.LUKE.MUTTER_LAND_DRY[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_LAND_DRY)]))
				end
			elseif season == "autumn" then
				if SEASICK then
					inst.components.talker:Say(Ternary(IA_ENABLED == false, STRINGS.CHARACTERS.LUKE.MUTTER_SEA_AUTUMN[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_SEA_AUTUMN)],
																			STRINGS.CHARACTERS.LUKE.MUTTER_SEA_MILD[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_SEA_MILD)]))
				else
					inst.components.talker:Say(Ternary(IA_ENABLED == false, STRINGS.CHARACTERS.LUKE.MUTTER_LAND_AUTUMN[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_LAND_AUTUMN)],
																			STRINGS.CHARACTERS.LUKE.MUTTER_LAND_MILD[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_LAND_MILD)]))
				end
			elseif season == "winter" then
				if SEASICK then
					inst.components.talker:Say(Ternary(IA_ENABLED == false, STRINGS.CHARACTERS.LUKE.MUTTER_SEA_WINTER[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_SEA_WINTER)],
																			STRINGS.CHARACTERS.LUKE.MUTTER_SEA_HURRICANE[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_SEA_HURRICANE)]))
				else
					inst.components.talker:Say(Ternary(IA_ENABLED == false, STRINGS.CHARACTERS.LUKE.MUTTER_LAND_WINTER[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_LAND_WINTER)],
																			STRINGS.CHARACTERS.LUKE.MUTTER_LAND_HURRICANE[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_LAND_HURRICANE)]))
				end
			end
			do return end
		elseif isSain and isNotHungry and (INCAVE == true) then
			inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.MUTTER_CAVE[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_CAVE)])
			do return end
		elseif isSain == false then
			inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.MUTTER_INSANITY[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_INSANITY)])
			do return end
		elseif isNotHungry == false then
			inst.components.talker:Say(STRINGS.CHARACTERS.LUKE.MUTTER_HUNGRY[math.random(#STRINGS.CHARACTERS.LUKE.MUTTER_HUNGRY)])
			do return end
		end
		--inst.SoundEmitter:PlaySound("luke/luke/talk_LP")
	end
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
	
	inst._update_boat_check = inst:DoPeriodicTask(0.5, BoatCheck)
	inst:DoPeriodicTask(10, Mutter)
	inst:DoPeriodicTask(0.5, OnFireCheck)
	inst:DoPeriodicTask(0.5, IsFrozenCheck)
	inst:DoPeriodicTask(5, tagGiver)

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

	-- Shipwrecked listeners
	inst:ListenForEvent("embarkboat", IA_OnEmbarked)
	inst:ListenForEvent("disembarkboat", IA_OnDisembarked)

	inst:AddTag("spoiler")


	inst.OnLoad = onload
    inst.OnNewSpawn = onload
end

return MakePlayerCharacter("luke", prefabs, assets, common_postinit, master_postinit, start_inv)
