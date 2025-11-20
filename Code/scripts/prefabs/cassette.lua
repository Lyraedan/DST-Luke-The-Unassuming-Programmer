local assets=
{
    Asset("ANIM", "anim/cassette.zip"),
    Asset("ATLAS", "images/inventoryimages/cassette.xml"),
    Asset("IMAGE", "images/inventoryimages/cassette.tex"),
}

local prefabs = 
{

}

local mixtape = 
{
    "dontstarve/music/gramaphone_ragtime"
}

local function GetRandomTape(useNone)
    if useNone == true then
        return "none"
    end

    -- Eventually make this query a json
    return mixtape[1]
end

-- UseCassette(inst, "play"), UseCassette(inst, "stop")

local function UseCassette(inst, useage_mode)
    if useage_mode == "stop" then
        inst:RemoveTag("isPlaying")
    else
        inst:AddTag("isPlaying")
    end
    
    local tape = GetRandomTape(useage_mode == "stop")
    local using_player = ThePlayer
    if using_player == nil then
        return false
    end
    TheWorld:PushEvent("ms_playerusedcassette", {
            cassette = inst,
            selected_tape = tape,
            player = using_player,
            mode = useage_mode
    })
    return true
end

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