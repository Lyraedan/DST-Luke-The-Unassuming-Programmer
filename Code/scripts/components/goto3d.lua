-- Created by: Gleenus (Steam ID: STEAM_0:0:39402096; Klei ID: KU_tw1TiPxN)
-- First Version: 2020-09-11, for the mod "Collectherer (Work in progress)"
-- Orientate motion in 3d space

local GoTo3d = Class(function(self, inst)
    self.inst = inst
    self.delay=0
    self.delay_pos=0
    self.threshold=1
    self.target=nil
    self.point=nil
    self.speed=1
    self.onhittargetfn=nil
    self.onhitpointfn=nil
    self.onmisstargetfn=nil
    self.offset=Vector3(0,0,0)
    self.launch=nil
    self.velocity=Vector3(0,0,0)
    self.gravity=-9.81
    self.usehigharc = true
    
end)

function GoTo3d:SetDelay(num)
    self.delay=num
end

function GoTo3d:SetOffset(vec)
    self.offset=vec
end


function GoTo3d:SetSpeed(num)
    self.speed=num
end

function GoTo3d:SetThreshold(num)
    self.threshold=num
end

function GoTo3d:SetOnHitTargetFn(fn)
    self.onhittargetfn=fn
end

function GoTo3d:SetOnHitPointFn(fn)
    self.onhitpointfn=fn
end

function GoTo3d:UseHighArc(var)
    self.usehigharc=var
end

function GoTo3d:SetOnMissTargetFn(fn)
    self.onmisstargetfn=fn
end

function GoTo3d:SetGravity(g)
    self.gravity = g
end

function GoTo3d:CalculateTrajectory()
	-- from "ComplexProjectile"
	-- Maybe you will ask "Why you are doing this if complex projectile exist?"
	-- And the answer is: to allow the customization of the function without interfer with game files
	-- AND for the y component
	local pt
	local pos = self.inst:GetPosition()
	
	if self.target ~= nil then
		pt=self.target:GetPosition()
		pt=pt+self.offset
	else
		pt=self.point+self.offset
	end
	
	local speedSq = self.speed * self.speed
    local g = -self.gravity

    local dx = pt.x - pos.x
    local dy = pt.y - pos.y
    local dz = pt.z - pos.z
    

    local rangeSq = dx * dx + dz * dz
    local range = math.sqrt(rangeSq)
    local discriminant = speedSq * speedSq - g * (g * rangeSq + 2 * dy * speedSq)
    if discriminant < 0 then
    	speedSq = g*dy + math.sqrt(g*g*rangeSq + g*g*dy*dy)
    	self.speed= math.sqrt(speedSq)
    	discriminant = speedSq * speedSq - g * (g * rangeSq + 2 * dy * speedSq)
    end
    local angle
    local discriminantSqrt = math.sqrt(discriminant)
    local gXrange = g * range
    local angleA = math.atan((speedSq - discriminantSqrt) / gXrange)
    local angleB = math.atan((speedSq + discriminantSqrt) / gXrange)
    angle = self.usehigharc and math.max(angleA, angleB) or math.min(angleA, angleB)
    print(angleA, angleB, angle)

    local cosangleXspeed = math.cos(angle) * self.speed
    
    self.velocity.x = cosangleXspeed
    self.velocity.y = math.sin(angle) * self.speed
    self.velocity.z = 0.0
    
    self.inst:FacePoint(pt)
	
end

function GoTo3d:GoToTarget(target,launch)
    self.point=nil
    self.target=target
    self.launch=launch
    if self.launch == true then
    	self:CalculateTrajectory()
    end
    if self.target ~= nil then
		self.inst.Physics:ClearCollidesWith(COLLISION.LIMITS)
    	self.inst:StartUpdatingComponent(self)
    end
end

function GoTo3d:GoToPoint(point, launch)
    self.target=nil
    self.point=point
    self.launch=launch
    if self.launch == true then
    	self:CalculateTrajectory()
    end
    if self.point ~= nil then
    	self.inst.Physics:ClearCollidesWith(COLLISION.LIMITS)
    	self.inst:StartUpdatingComponent(self)
    end
end


--[[
function Holder:OnEntityWake()
    if self.target ~= nil and self.holding then
        self.inst:StartUpdatingComponent(self)
    else
        self.inst:StopUpdatingComponent(self)
    end
end
]]

function GoTo3d:OnEntitySleep()
	self.inst.Physics:Stop()
    self.inst:StopUpdatingComponent(self)
end

function GoTo3d:GoTo3d()
	local pt
	local pos = self.inst:GetPosition()
	if pos.y < 0 then
		local parent = self.inst.entity:GetParent()
		if parent ~= nil then
			local parent_pos=parent:GetPosition()
			self.inst.Transform:SetPosition(pos.x-parent_pos.x,0,pos.z-parent_pos.z)
		else
			self.inst.Transform:SetPosition(pos.x,0,pos.z)
		end
		pos = self.inst:GetPosition()
	end
	if self.target ~= nil then
		pt=self.target:GetPosition()
		pt=pt+self.offset
	else
		pt=self.point+self.offset
	end
	
	local dest = pt-pos
	local dist = dest:Length()
	
	self.inst:AddTag("noclick")
	
	if dist < self.threshold then
		self.inst:StopUpdatingComponent(self)
		self.inst.Physics:Stop()
		self.inst.Physics:CollidesWith(COLLISION.LIMITS)
		self.inst:RemoveTag("noclick")
		if self.target ~= nil and self.onhittargetfn ~= nil then
			self.onhittargetfn(self.inst)
			return
		end
		if self.target == nil and self.onhitpointfn ~= nil then
			self.onhitpointfn(self.inst)
			return
		end
	else
		local xzc = math.sqrt(dest.x*dest.x+dest.z*dest.z)/dist
		local yc = dest.y/dist

	
		self.inst:FacePoint(pt)
		self.inst.Physics:SetMotorVel(xzc*self.speed, yc*self.speed,0)
	end
end

function GoTo3d:LaunchOn3d(dt)
	self.inst:AddTag("noclick")
	
    self.velocity.y = self.velocity.y + (self.gravity * dt)
	self.inst.Physics:SetMotorVel(self.velocity:Get())
    
	local pt
	local pos = self.inst:GetPosition()
	
	if self.target ~= nil then
		pt=self.target:GetPosition()
		pt=pt+self.offset
	else
		pt=self.point+self.offset
	end
	
	local dest = pt-pos
	local dist = dest:Length()
	
	if dist < self.threshold then
		self.inst:StopUpdatingComponent(self)
		self.inst.Physics:Stop()
		self.inst.Physics:CollidesWith(COLLISION.LIMITS)
		self.inst:RemoveTag("noclick")
		if self.target ~= nil and self.onhittargetfn ~= nil then
			self.onhittargetfn(self.inst)
			return
		end
		if self.target == nil and self.onhitpointfn ~= nil then
			self.onhitpointfn(self.inst)
			return
		end
	elseif pos.y < 0.02 and self.velocity.y < 0 then
		self.inst:StopUpdatingComponent(self)
		self.inst.Physics:Stop()
		self.inst.Physics:CollidesWith(COLLISION.LIMITS)
		self.inst:RemoveTag("noclick")
		if self.onmisstargetfn ~= nil then
			self.onmisstargetfn(self.inst)
		end
        return
	end
	
end

function GoTo3d:OnUpdate(dt)
    if self.target ~= nil and not self.target:IsValid() then
        self:SetTarget(nil)
		self.inst:StopUpdatingComponent(self)
		self.inst.Physics:Stop()
		self.inst.Physics:CollidesWith(COLLISION.LIMITS)
		if self.onmisstargetfn ~= nil then
			self.onmisstargetfn(self.inst)
		end
        return
    end
    
    if self.inst.Physics ~= nil then
    	TemporarilyRemovePhysics(self.inst, dt)
    end
    
    if self.launch == true then
		self:LaunchOn3d(dt)
	else
		self:GoTo3d()
	end
end

return GoTo3d
