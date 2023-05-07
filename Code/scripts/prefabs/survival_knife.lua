local assets=
{
    Asset("ANIM", "anim/survival_knife.zip"),
    Asset("ANIM", "anim/swap_survival_knife.zip"),
  
    Asset("ATLAS", "images/inventoryimages/survival_knife.xml"),
    Asset("IMAGE", "images/inventoryimages/survival_knife.tex"),
}

local prefabs = 
{

}

local function OnEquip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_survival_knife", "survival_knife")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end
  
local function OnUnequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end
 
 local function onperish(inst)
    inst:Remove()
end
 
local function fn()
  
    local inst = CreateEntity()
 
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
     
    MakeInventoryPhysics(inst)   
      
    inst.AnimState:SetBank("survival_knife")
    inst.AnimState:SetBuild("survival_knife")
    inst.AnimState:PlayAnimation("idle")
 
    inst:AddTag("sharp")
 
    if not TheWorld.ismastersim then
        return inst
    end
 
    inst.entity:SetPristine()
     
    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(34)
	  
    inst:AddComponent("inspectable")
      
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "survival_knife"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/survival_knife.xml"
	inst.components.inventoryitem:SetSinks(true)
      
    inst:AddComponent("equippable")
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_SMALL
    inst.components.equippable.restrictedtag = "knifeowner"
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
		     
	inst.components.equippable.walkspeedmult = 1.5
			 
    return inst
end

STRINGS.NAMES.SURVIVAL_KNIFE = "Survival Butterfly Knife"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.SURVIVAL_KNIFE = "It's a well used blade."
STRINGS.CHARACTERS.LUKE.DESCRIBE.SURVIVAL_KNIFE = "A trustworthy knife!"

return  Prefab("common/inventory/survival_knife", fn, assets, prefabs) 