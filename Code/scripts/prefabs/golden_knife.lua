local assets=
{
    Asset("ANIM", "anim/golden_knife.zip"),
    Asset("ANIM", "anim/swap_golden_knife.zip"),
  
    Asset("ATLAS", "images/inventoryimages/golden_knife.xml"),
    Asset("IMAGE", "images/inventoryimages/golden_knife.tex"),
}

local prefabs = 
{

}

local function OnEquip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_golden_knife", "golden_knife")
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
      
    inst.AnimState:SetBank("golden_knife")
    inst.AnimState:SetBuild("golden_knife")
    inst.AnimState:PlayAnimation("idle")
 
    inst:AddTag("sharp")
 
    if not TheWorld.ismastersim then
        return inst
    end
 
    inst.entity:SetPristine()
     
    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(40)
	  
    inst:AddComponent("inspectable")
      
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "golden_knife"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/golden_knife.xml"
	inst.components.inventoryitem:SetSinks(true)
      
    inst:AddComponent("equippable")
	inst.components.equippable.dapperness = TUNING.DAPPERNESS_MED_LARGE
    inst.components.equippable.restrictedtag = "knifeowner"
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )
		     
	inst.components.equippable.walkspeedmult = 1.5;
			 
    return inst
end

STRINGS.NAMES.GOLDEN_KNIFE = "Golden Butterfly Knife"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.GOLDEN_KNIFE = "It's shiny and sharp!"
STRINGS.CHARACTERS.LUKE.DESCRIBE.GOLDEN_KNIFE = "It's like mine... but better!"

return  Prefab("common/inventory/golden_knife", fn, assets, prefabs) 