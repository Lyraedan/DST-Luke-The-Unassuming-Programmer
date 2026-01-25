local Entomophobia = Class(function(self, inst)
    self.inst = inst
    self.enabled = true
    self.beehat_block = false

    self.bugsData = {
        bee = { tag="bee", radius=8, sanityDrain=-TUNING.SANITYAURA_MED },
        killerbee = { tag="killerbee", radius=8, sanityDrain=-TUNING.SANITYAURA_MED },
        butterfly = { tag="butterfly", radius=8, sanityDrain=-TUNING.SANITYAURA_MED },
        beequeen = { tag="beequeen", radius=16, sanityDrain=-TUNING.SANITYAURA_MED },
        dragonfly = { tag="dragonfly", radius=16, sanityDrain=-TUNING.SANITYAURA_MED },
        fireflies = { tag="fireflies", radius=8, sanityDrain=-TUNING.SANITYAURA_MED },
        friendlyfruitfly = { tag="friendlyfruitfly", radius=8, sanityDrain=-TUNING.SANITYAURA_MED },
        glommer = { tag="glommer", radius=12, sanityDrain=-TUNING.SANITYAURA_MED },
        lordfruitfly = { tag="lordfruitfly", radius=12, sanityDrain=-TUNING.SANITYAURA_MED },
        fruitfly = { tag="fruitfly", radius=8, sanityDrain=-TUNING.SANITYAURA_MED },
        mosquito = { tag="mosquito", radius=8, sanityDrain=-TUNING.SANITYAURA_MED },
        beehive = { tag="beehive", radius=4, sanityDrain=-TUNING.SANITYAURA_MED },
        wasphive = { tag="wasphive", radius=4, sanityDrain=-TUNING.SANITYAURA_MED },
        beequeenhivegrown = { tag="beequeenhivegrown", radius=25, sanityDrain=-TUNING.SANITYAURA_MED },
    }

    self.generalRadius = 25

    inst:AddTag("entomophobia")
end)

function Entomophobia:SetBeehatBlock(state)
    self.beehat_block = state
end

function Entomophobia:GetSanityPenalty()
    if self.enabled == false then
        return 0
    end

    if self.beehat_block then
        return 0
    end

    local inst = self.inst
    local x,y,z = inst.Transform:GetWorldPosition()

    local ents = TheSim:FindEntities(x, y, z, self.generalRadius, nil, nil)

    local delta = 0

    for _, ent in ipairs(ents) do
        for _, info in pairs(self.bugsData) do
            if ent:HasTag(info.tag) then
                local distsq = inst:GetDistanceSqToInst(ent)
                local radiussq = info.radius * info.radius

                if distsq < radiussq then
                    local scaled = info.sanityDrain
                    delta = delta + scaled / math.max(1, distsq - 9)
                end
            end
        end
    end

    return delta
end

return Entomophobia
