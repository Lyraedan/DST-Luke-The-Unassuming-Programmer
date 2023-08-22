
local UPDATE_INTERVAL=0.20
local RANDOM_POOP_CHANCE=16
local RANDOM_FLYPOOP_CHANCE=24
local RANDOM_CHAINPOOP_CHANCE=32
local DAMAGE_SANITY=5
local POOP_SPOIL_RATE=0.1

local brain = require "brains/birdbrain"

local function ShouldSleep(inst)
    return DefaultSleepTest(inst) and not inst.sg:HasStateTag("flight")
end

local BIRD_TAGS = { "bird" }
local function OnAttacked(inst, data)
    inst.components.pigeonspawner:Wait(math.random(5, 15))
    if(data.attacker == "luke") then
        data.attacker.components.pigeonspawner:Wait(math.random(5, 15))
    end
    local pos= inst:GetPosition()
	local birds = TheSim:FindEntities(pos.x,pos.y,pos.z, 20, {"bird"})
    for k, v in pairs(birds) do
        if(v ~= inst) then
            if(v.components.pigeonspawner ~= nil) then
                v.components.pigeonspawner:Wait(math.random(5, 15))
            end
        end
    end
    local x, y, z = inst.Transform:GetWorldPosition()
    local ents = TheSim:FindEntities(x, y, z, 30, BIRD_TAGS)
    local num_friends = 0
    local maxnum = 5
    for k, v in pairs(ents) do
        if v ~= inst then
            v:PushEvent("gohome")
            num_friends = num_friends + 1
        end

        if num_friends > maxnum then
            return
        end
    end
end

local function OnTrapped(inst, data)
    if data and data.trapper and data.trapper.settrapsymbols then
        data.trapper.settrapsymbols(inst.trappedbuild)
    end
end

local function OnPutInInventory(inst)
    --Otherwise sleeper won't work if we're in a busy state
    inst.sg:GoToState("idle")
end

local function OnDropped(inst)
    inst.sg:GoToState("stunned")
end

local function ChooseItem()
    local mercy_items =
    {
        "flint",
        "flint",
        "flint",
        "twigs",
        "twigs",
        "cutgrass",
    }
    return mercy_items[math.random(#mercy_items)]
end

local function ChooseSeeds()
    return not TheWorld.state.iswinter and "seeds" or nil
end

local function SpawnPrefabChooser(inst)
    if TheWorld.state.cycles <= 3 then
        -- The item drop is for drop-in players, players from the start of the game have to forage like normal
        return ChooseSeeds()
    end

    local x, y, z = inst.Transform:GetWorldPosition()
    local players = FindPlayersInRange(x, y, z, 20, true)

    -- Give item if only fresh players are nearby
    local oldestplayer = -1
    for i, player in ipairs(players) do
        if player.components.age ~= nil then
            local playerage = player.components.age:GetAgeInDays()
            if playerage >= 3 then
                return ChooseSeeds()
            elseif playerage > oldestplayer then
                oldestplayer = playerage
            end
        end
    end

    -- Lower chance for older players to get item
    return oldestplayer >= 0
        and math.random() < .35 - oldestplayer * .1
        and ChooseItem()
        or ChooseSeeds()
end

--------------------------------------------------------------------------

local function StopExhalingGas(inst)
    if inst._gasdowntask ~= nil then
        inst._gasdowntask:Cancel()
        inst._gasdowntask = nil
    end
end

local function OnExhaleGas(inst)
    if inst._gaslevel > 1 then
        inst._gaslevel = inst._gaslevel - 1
    else
        inst._gaslevel = 0
        StopExhalingGas(inst)
    end
end

local function StartExhalingGas(inst)
    if inst._gaslevel > 0 and inst._gasdowntask == nil then
        inst._gasdowntask = inst:DoPeriodicTask(TUNING.SEG_TIME, OnExhaleGas, TUNING.SEG_TIME * (.5 + math.random() * .5))
    end
end

local function TestGasLevel(inst, gaslevel)
    --Trigger with increasing chance from level 12 -> 24
    if gaslevel > 12 and math.random() * 12 < gaslevel - 12 then
        local cage = inst.components.occupier:GetOwner()
        if cage ~= nil and cage:HasTag("cage") then
            local data = { bird = inst, poisoned_prefab = "canary_poisoned" }
            TheWorld:PushEvent("birdpoisoned", data)
            cage:PushEvent("birdpoisoned", data)
        end
    end
end

local function OnInhaleGas(inst)
    if TheWorld.components.toadstoolspawner:IsEmittingGas() then
        inst._gaslevel = inst._gaslevel + 1
        TestGasLevel(inst, inst._gaslevel)
    elseif inst._gaslevel > 0 then
        inst._gaslevel = math.max(0, inst._gaslevel - 1)
    end
end

local function StopInhalingGas(inst)
    if inst._gasuptask ~= nil then
        inst._gasuptask:Cancel()
        inst._gasuptask = nil

        StartExhalingGas(inst)
    end
end

local function StartInhalingGas(inst)
    if inst._gasuptask == nil then
        inst._gasuptask = inst:DoPeriodicTask(TUNING.SEG_TIME, OnInhaleGas, TUNING.SEG_TIME * (.5 + math.random() * .5))

        StopExhalingGas(inst)
    end
end

local function OnCanaryOccupied(inst, cage)
    if cage ~= nil and cage:HasTag("cage") then
        StartInhalingGas(inst)
    else
        StopInhalingGas(inst)
    end
end

local function OnCanarySave(inst, data)
    data.gaslevel = inst._gaslevel > 0 and math.ceil(inst._gaslevel) or nil
end

local function OnCanaryLoad(inst, data)
    if data ~= nil and data.gaslevel ~= nil then
        inst._gaslevel = math.max(0, math.floor(data.gaslevel))
    end
end

local function PoopHitFn(inst)
	inst:RemoveComponent("goto3d")
	local pos=inst:GetPosition()
	local players = TheSim:FindEntities(pos.x,pos.y,pos.z, 2, {"player"})
	local food = TheSim:FindEntities(pos.x,pos.y,pos.z, 2)
	if #players > 0 then
		for k,v in ipairs(players) do
		 	v.components.sanity:DoDelta(-DAMAGE_SANITY)
		    v:PushEvent("attacked", { attacker = inst, damage = 0 })
			inst:Remove()
		end
	end
	for k,v in ipairs(food) do
		if v.components.edible and v.components.perishable and 
	    (v.components.inventoryitem.owner == nil or (v.components.inventoryitem.owner and v.components.inventoryitem.owner.components.container == nil)) then
			v.components.perishable.perishremainingtime = v.components.perishable.perishremainingtime-POOP_SPOIL_RATE*v.components.perishable.perishtime
			v:PushEvent("perishchange", {percent = v.components.perishable:GetPercent()})
		end
	end
end

local function DoPoop(inst, target)
    local pos=inst:GetPosition()
    if target ==nil or not target:IsValid() then
        target=inst
    end
    local tpos=target:GetPosition()
    local poop = SpawnPrefab("guano")
    poop.Transform:SetPosition(pos:Get())
    poop.Transform:SetScale(.33, .33, .33)
    poop:AddComponent("goto3d")
    poop.components.goto3d:SetSpeed(60)
    poop.components.goto3d:SetThreshold(0.5)
    --poop.components.goto3d:SetOnHitPointFn(PoopHitFn)
    poop.components.goto3d:GoToPoint(tpos)
    poop:DoTaskInTime(15, function() 
        if poop.components.inventoryitem and  poop.components.inventoryitem.owner == nil then
            poop:Remove()
        end
    end)
end

local function DoUpdate(inst)
	if inst.haspoop then
		return
	end
	
	if inst.components.inventoryitem and  inst.components.inventoryitem.owner == nil then
	    local pos = inst:GetPosition()
	    local vx, vy, vz = inst.Physics:GetVelocity()
	    if vy < 0.1 then
	        if math.random(RANDOM_POOP_CHANCE) == 1 then 
	            inst.haspoop=true
                DoPoop(inst, inst)
	        end
	    else
	        if math.random(RANDOM_FLYPOOP_CHANCE) == 1 and pos.y > 3 then
        		local players = TheSim:FindEntities(pos.x,pos.y,pos.z, 25, {"player"})
        		if #players > 0 then
        			local player = players[math.random(#players)]
        			inst.haspoop=true
        			if math.random(RANDOM_CHAINPOOP_CHANCE) == 1 then
        			    for ii=0,6 do
        			        inst:DoTaskInTime(ii/10, function()
                			    DoPoop(inst, player)
                		    end)
        			    end
        			else
        			    DoPoop(inst, player)
        			end
        		end
	        end
	    end
	end
end

--------------------------------------------------------------------------

local function makebird(name, soundname, no_feather, bank, custom_loot_setup, water_bank, tacklesketch)
    local assets =
    {
        Asset("ANIM", "anim/crow.zip"),
        Asset("ANIM", "anim/quagmire_pigeon_build.zip"),
        --Asset("ANIM", "anim/"..name.."_build.zip"),
        Asset("ANIM", "anim/crow_build.zip"),
        Asset("SOUND", "sound/birds.fsb"),
    }
    local prefabs =
    {
        "seeds",
        "smallmeat",
        "cookedsmallmeat",
        "flint",
        "twigs",
        "cutgrass",
    }

	if not no_feather then
        table.insert(prefabs, "feather_"..name)
	end

    if name == "canary" then
        table.insert(prefabs, "canary_poisoned")
    end

	if tacklesketch then
		--table.insert(prefabs, type(tacklesketch) == "string" and tacklesketch or ("oceanfishingbobber_"..name.."_tacklesketch"))
		table.insert(prefabs, type(tacklesketch) == "string" and tacklesketch or ("oceanfishingbobber_crow_tacklesketch"))
	end

	local soundbank = "dontstarve"
	if type(soundname) == "table" then
		soundbank = soundname.bank
		soundname = soundname.name
	end

    local function fn()
        local inst = CreateEntity()

        --Core components
        inst.entity:AddTransform()
        inst.entity:AddPhysics()
        inst.entity:AddAnimState()
        inst.entity:AddDynamicShadow()
        inst.entity:AddSoundEmitter()
        inst.entity:AddNetwork()
        inst.entity:AddLightWatcher()

        --Initialize physics
        inst.Physics:SetCollisionGroup(COLLISION.CHARACTERS)
        inst.Physics:ClearCollisionMask()
        if water_bank ~= nil then
            -- Birds that float can pass through LIMITS walls, i.e. when hopping.
            inst.Physics:CollidesWith(COLLISION.GROUND)
        else
            inst.Physics:CollidesWith(COLLISION.WORLD)
        end
        inst.Physics:SetMass(1)
        inst.Physics:SetSphere(1)

        inst:AddTag("bird")
        inst:AddTag(name)
        inst:AddTag("smallcreature")
        inst:AddTag("likewateroffducksback")
        inst:AddTag("prey")

        --cookable (from cookable component) added to pristine state for optimization
        inst:AddTag("cookable")

        inst.Transform:SetTwoFaced()

        inst.AnimState:SetBank(bank or "crow")
        inst.AnimState:SetBuild("quagmire_pigeon_build")
        inst.AnimState:PlayAnimation("idle")

        inst.DynamicShadow:SetSize(1, .75)
        inst.DynamicShadow:Enable(false)

        MakeFeedableSmallLivestockPristine(inst)

        inst.entity:SetPristine()

        if not TheWorld.ismastersim then
            return inst
        end

        inst.sounds =
        {
            takeoff = soundbank.."/birds/takeoff_"..soundname,
            chirp = soundbank.."/birds/chirp_"..soundname,
            flyin = "dontstarve/birds/flyin",
        }

        inst.trappedbuild = "quagmire_pigeon_build"

        inst:AddComponent("locomotor") -- locomotor must be constructed before the stategraph
        inst.components.locomotor:EnableGroundSpeedMultiplier(false)
        inst.components.locomotor:SetTriggersCreep(false)
        inst:SetStateGraph("SGbird")

        inst:AddComponent("lootdropper")
        inst.components.lootdropper:AddRandomLoot("feather_robin_winter",0.33)
        inst.components.lootdropper:AddRandomLoot("spoiled_food",0.33)
        inst.components.lootdropper:AddRandomLoot("smallmeat",0.33)
        inst.components.lootdropper.numrandomloot = 1

        --inst:AddComponent("occupier")

        inst:AddComponent("eater")
        local diettable = {
        					FOODTYPE.SEEDS,
        					FOODTYPE.VEGGIE,
        					FOODTYPE.MEAT,
        					FOODTYPE.MONSTER,
        					FOODTYPE.GOODIES,
        					FOODTYPE.GENERIC,
        					}
        inst.components.eater:SetDiet(diettable, diettable)

        inst:AddComponent("sleeper")
        inst.components.sleeper:SetSleepTest(ShouldSleep)

        inst:AddComponent("inventoryitem")
        inst.components.inventoryitem.nobounce = true
        inst.components.inventoryitem.canbepickedup = false
        inst.components.inventoryitem.canbepickedupalive = true
        inst.components.inventoryitem.atlasname = "images/inventoryimages1.xml"
        inst.components.inventoryitem.imagename = "quagmire_pigeon"

        inst:AddComponent("health")
        inst.components.health:SetMaxHealth(TUNING.BIRD_HEALTH)
        inst.components.health.murdersound = "dontstarve/wilson/hit_animal"

        inst:AddComponent("inspectable")
        
        inst.flyawaydistance = 3

        if TheNet:GetServerGameMode() ~= "quagmire" then
            inst:AddComponent("combat")
            inst.components.combat.hiteffectsymbol = "crow_body"

            MakeSmallBurnableCharacter(inst, "crow_body")
            MakeTinyFreezableCharacter(inst, "crow_body")
        end

        inst:SetBrain(brain)

        inst:AddComponent("hauntable")
        inst.components.hauntable:SetHauntValue(TUNING.HAUNT_TINY)

		--[[
        if not GetGameModeProperty("disable_bird_mercy_items") then
            inst:AddComponent("periodicspawner")
            inst.components.periodicspawner:SetPrefab(SpawnPrefabChooser)
            inst.components.periodicspawner:SetDensityInRange(20, 2)
            inst.components.periodicspawner:SetMinimumSpacing(8)
        end
        ]]
        

        inst:ListenForEvent("ontrapped", OnTrapped)
        inst:ListenForEvent("attacked", OnAttacked)
        
        inst:AddComponent("pigeonspawner")
        inst.components.pigeonspawner:SetRadius(4)
        inst.components.pigeonspawner:SetRate(0.005, 0.01)

        MakeFeedableSmallLivestock(inst, TUNING.BIRD_PERISH_TIME, OnPutInInventory, OnDropped)

        if water_bank ~= nil then
            inst:ListenForEvent("floater_startfloating", function(inst) inst.AnimState:SetBank(water_bank) end)
            inst:ListenForEvent("floater_stopfloating", function(inst) inst.AnimState:SetBank(bank or "crow") end)
        end
        
        
        inst.haspoop = false
        inst._isupdating = inst:DoPeriodicTask(UPDATE_INTERVAL, DoUpdate, UPDATE_INTERVAL)

        STRINGS.NAMES.PIGEON = "Pigeon"
        STRINGS.CHARACTERS.GENERIC.DESCRIBE.PIGEON = "It's a pesky pigeon."
        STRINGS.CHARACTERS.LUKE.DESCRIBE.PIGEON = "AGHHHHHH PIGEON!"

        return inst
    end

    return Prefab(name, fn, assets, prefabs)
end


return makebird("pigeon", "pigeon", nil, nil, nil, nil, true)
    
