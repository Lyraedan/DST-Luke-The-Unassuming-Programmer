local assets=
{
    Asset("ANIM", "anim/cassette_blank.zip"),
    Asset("ATLAS", "images/inventoryimages/cassette_blank.xml"),
    Asset("IMAGE", "images/inventoryimages/cassette_blank.tex"),
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
	 
    return inst
end

STRINGS.NAMES.CASSETTE_BLANK = "Blank Cassette"
STRINGS.RECIPE_DESC.CASSETTE_BLANK = "A blank cassette."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CASSETTE_BLANK = "Looks like a blank cassette to me."
STRINGS.CHARACTERS.LUKE.DESCRIBE.CASSETTE_BLANK = "Ohhh! I can make music with this."

return  Prefab("common/inventory/cassette_blank", fn, assets, prefabs) 