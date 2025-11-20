local assets=
{
    Asset("ANIM", "anim/cassette.zip"),
    Asset("ATLAS", "images/inventoryimages/cassette.xml"),
    Asset("IMAGE", "images/inventoryimages/cassette.tex"),
}

local prefabs = 
{

}

local function fn()
    local inst = CreateEntity()
 
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
     
    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("cassette")
    inst.AnimState:SetBuild("cassette")
    inst.AnimState:PlayAnimation("idle")
    inst.AnimState:SetScale(2, 2)

    inst:AddTag("cassette")
    inst:AddTag("enabled")

    MakeInventoryFloatable(inst, "med", 0.07, 0.72)

    inst.entity:SetPristine()
    if not TheWorld.ismastersim then
        return inst
    end

     	  
    inst:AddComponent("inspectable")
      
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "cassette"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/cassette.xml"
	inst.components.inventoryitem:SetSinks(true)

    inst:AddComponent("cassette")

    return inst
end

STRINGS.NAMES.CASSETTE = "Cassette"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CASSETTE = "Looks like a cassette to me."
STRINGS.CHARACTERS.LUKE.DESCRIBE.CASSETTE = "I should put this in a cassette player!"

return  Prefab("common/inventory/cassette", fn, assets, prefabs) 