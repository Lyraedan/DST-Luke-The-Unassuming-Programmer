local assets=
{
    Asset("ANIM", "anim/shadow_knife.zip"),
    Asset("ANIM", "anim/swap_shadow_knife.zip"),
  
    Asset("ATLAS", "images/inventoryimages/shadow_knife.xml"),
    Asset("IMAGE", "images/inventoryimages/shadow_knife.tex"),
}

local prefabs = 
{

}

local function OnEquip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_shadow_knife", "shadow_knife")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end
  
local function OnUnequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function fn()
  
    local inst = CreateEntity()
 
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
     
    MakeInventoryPhysics(inst)   
      
    inst.AnimState:SetBank("shadow_knife")
    inst.AnimState:SetBuild("shadow_knife")
    inst.AnimState:PlayAnimation("idle")
 
    inst:AddTag("sharp")
 
    if not TheWorld.ismastersim then
        return inst
    end
 
    inst.entity:SetPristine()
     
    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(42.4)
	  
    inst:AddComponent("inspectable")
      
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "shadow_knife"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/shadow_knife.xml"
	inst.components.inventoryitem:SetSinks(true)
      
    inst:AddComponent("equippable")
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_SMALL
    inst.components.equippable.restrictedtag = "knifeowner"
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
		     
	inst.components.equippable.walkspeedmult = 1.6
			 
    return inst
end

STRINGS.NAMES.SHADOW_KNIFE = "Shadow Butterfly Knife"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.SHADOW_KNIFE = "What powers does it contain?"
STRINGS.CHARACTERS.LUKE.DESCRIBE.SHADOW_KNIFE = "It's a spooky knife!"

return  Prefab("common/inventory/shadow_knife", fn, assets, prefabs) 