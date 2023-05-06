local assets=
{
    Asset("ANIM", "anim/knife.zip"),
    Asset("ANIM", "anim/swap_knife.zip"),
  
    Asset("ATLAS", "images/inventoryimages/knife.xml"),
    Asset("IMAGE", "images/inventoryimages/knife.tex"),
}

local prefabs = 
{

}

local function OnEquip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_knife", "knife")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
	inst.components.fueled:StartConsuming()
end
  
local function OnUnequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
	inst.components.fueled:StopConsuming()
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
      
    inst.AnimState:SetBank("knife")
    inst.AnimState:SetBuild("knife")
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
    inst.components.inventoryitem.imagename = "knife"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/knife.xml"
	inst.components.inventoryitem:SetSinks(true)
      
    inst:AddComponent("equippable")
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_SMALL
    inst.components.equippable.restrictedtag = "knifeowner"
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
	
	inst:AddComponent("fueled")
    inst.components.fueled.fueltype = FUELTYPE.USAGE
    inst.components.fueled.rate = TUNING.BERNIE_FUEL_RATE/3
    inst.components.fueled:InitializeFuelLevel(TUNING.BERNIE_FUEL/3)
	inst.components.fueled:SetDepletedFn(onperish)
		     
	inst.components.equippable.walkspeedmult = TUNING.CANE_SPEED_MULT
			 
    return inst
end

STRINGS.NAMES.CHARAWORNDAGGER = "Butterfly Knife"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CHARAWORNDAGGER = "I'll run with it all I want."
STRINGS.CHARACTERS.LUKE.DESCRIBE.CHARAWORNDAGGER = "My trusty butterfly knife."

return  Prefab("common/inventory/charaworndagger", fn, assets, prefabs) 