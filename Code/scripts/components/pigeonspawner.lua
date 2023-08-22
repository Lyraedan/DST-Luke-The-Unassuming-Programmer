local diettable = {
					FOODTYPE.SEEDS,
					FOODTYPE.VEGGIE,
					FOODTYPE.MEAT,
					FOODTYPE.MONSTER,
					FOODTYPE.GOODIES,
					FOODTYPE.GENERIC,
					}
					
function TestFood(food, testvalues)
    if food ~= nil and food.components.edible ~= nil then
        for i, v in ipairs(testvalues) do
            if type(v) == "table" then
                for i2, v2 in ipairs(v.types) do
                    if food:HasTag("edible_"..v2) then
                        return true
                    end
                end
            elseif food:HasTag("edible_"..v) then
                return true
            end
        end
    end
end

local SCARYTOPREY_TAGS = { "scarytoprey" }  
local function IsDangerNearby(x, y, z)
    local ents = TheSim:FindEntities(x, y, z, 8, SCARYTOPREY_TAGS)
    return next(ents) ~= nil
end


local BIRDBLOCKER_TAGS = {"birdblocker"}
local _map = TheWorld.Map
local _groundcreep = TheWorld.GroundCreep


local function TestSpawnPoint(spawnpoint_x,spawnpoint_y,spawnpoint_z)
        local allow_water = false
        return _map:IsPassableAtPoint(spawnpoint_x, spawnpoint_y, spawnpoint_z, allow_water) and
               _map:GetTileAtPoint(spawnpoint_x, spawnpoint_y, spawnpoint_z) ~= GROUND.OCEAN_COASTAL_SHORE and
               not _groundcreep:OnCreep(spawnpoint_x, spawnpoint_y, spawnpoint_z) and
               #(TheSim:FindEntities(spawnpoint_x, 0, spawnpoint_z, 4, BIRDBLOCKER_TAGS)) == 0
    end

local PigeonSpawner = Class(function(self, inst)
    self.inst = inst
    self.radius = 3
    self.density_radius = 50
    self.density_max = 20
    self.base_rate = 0.05
    self.spawn_rate = 0.05
    self.search_radius=3
    self.inst:StartUpdatingComponent(self)
    self.wait = false
    self.wait_time = 0
    self.wait_timer = 0
end)

function PigeonSpawner:SetRadius(radius)
    self.radius = radius
end

function PigeonSpawner:SetSearchRadius(radius)
    self.search_radius = radius
end

function PigeonSpawner:SetRate(rate, srate)
    self.base_rate = rate
    self.spawn_rate = srate
end

function PigeonSpawner:SetDensityRadius(radius)
    self.densoty_radius = radius
end

function PigeonSpawner:SetDensityMax(num)
    self.density_max = num
end

function PigeonSpawner:Wait(len)
    self.wait_timer = 0
    self.wait_time = len
    self.wait = true
end

function PigeonSpawner:SpawnPigeon(spawnpoint, ignorebait)

    local prefab = "pigeon"

    local bird = SpawnPrefab(prefab)
    if math.random() < .5 then
        bird.Transform:SetRotation(180)
    end
    if bird:HasTag("bird") then
        spawnpoint.y = 15
    end

    --see if there's bait nearby that we might spawn into
    if bird.components.eater and not ignorebait then
        local bait = TheSim:FindEntities(spawnpoint.x, 0, spawnpoint.z, self.search_radius)
        for k, v in pairs(bait) do
            local x, y, z = v.Transform:GetWorldPosition()
            if bird.components.eater:CanEat(v) and not v:IsInLimbo() and
                v.components.bait and
                not (v.components.inventoryitem and v.components.inventoryitem:IsHeld()) and
                (bird.components.floater ~= nil or _map:IsPassableAtPoint(x, y, z)) then
                spawnpoint.x, spawnpoint.z = x, z
                bird.bufferedaction = BufferedAction(bird, v, ACTIONS.EAT)
                break
            elseif v.prefab=="cookpot" and v.components.stewer and v.components.stewer:IsDone() and
                (bird.components.floater ~= nil or _map:IsPassableAtPoint(x, y, z)) then
                spawnpoint.x, spawnpoint.z = x, z
                bird.bufferedaction = BufferedAction(bird, v, ACTIONS.HARVEST)
                break
            elseif v.components.trap and
                v.components.trap.isset and
                (not v.components.trap.targettag or bird:HasTag(v.components.trap.targettag)) and
                not v.components.trap.issprung and
                math.random() < TUNING.BIRD_TRAP_CHANCE then
                spawnpoint.x, spawnpoint.z = x, z
                break
            end
        end
    end

    bird.Physics:Teleport(spawnpoint:Get())

    return bird
end

function PigeonSpawner:OnEntitySleep()
	self.inst:StopUpdatingComponent(self)
end

function PigeonSpawner:OnEntityWake()
	self.inst:StartUpdatingComponent(self)
end

function PigeonSpawner:GetSpawnRate(pos)
    local rate=self.spawn_rate
    local ent = TheSim:FindEntities(pos.x, 0, pos.z, self.search_radius)
    for k, v in pairs(ent) do
        if TestFood(v,diettable) and not v:IsInLimbo() then
            rate=math.sqrt(rate)
        end
        if v:HasTag("structure") then
            rate=math.sqrt(rate)
        end
        if v.prefab=="cookpot" then
            rate=math.sqrt(rate)
        end
        if v.prefab=="luke" then
            rate=math.sqrt(rate)
        end
    end
    if _map:GetTileAtPoint(pos.x, 0, pos.z) == GROUND.ROAD then
        rate=math.sqrt(rate)
    end
    return rate
end


function PigeonSpawner:OnUpdate(dt)
	local xc, zc = 2 * self.radius * (math.random() - 0.5), 2 * self.radius * (math.random() - 0.5)

    if TheWorld:HasTag("cave") or not TheWorld.ismastersim or TheWorld.state.isnight then
        return
    end

    if(self.wait) then
        self.wait_timer = self.wait_timer + 1 * dt
	
        if(self.wait_timer >= self.wait_time) then
            self.wait = false
            self.wait_timer = 0
        end
        return
    end

	if xc * xc + zc * zc < self.radius * self.radius and math.random(math.random(2, 8)) == 1 then --and math.random() < self.base_rate * frequency / math.pi then
		local pos=self.inst:GetPosition()
		local birds = TheSim:FindEntities(pos.x,pos.y,pos.z, self.density_radius, {"bird"})
		if #birds < self.density_max then
			pos.x=pos.x+xc
			pos.z=pos.z+zc
			if TestSpawnPoint(pos.x,0,pos.z) then
			    if math.random() < self:GetSpawnRate(pos) then
				    self:SpawnPigeon(pos, false)
			    end
			end
		end
	end
end

return PigeonSpawner
