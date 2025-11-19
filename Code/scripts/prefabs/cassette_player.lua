local assets=
{
    Asset("ANIM", "anim/cassette_player.zip"),
    Asset("ATLAS", "images/inventoryimages/cassette_player.xml"),
    Asset("IMAGE", "images/inventoryimages/cassette_player.tex"),
}

local prefabs = 
{

}

local function OnPlayerUseCassette(inst, data)
    
end
 
local function fn()
    local inst = CreateEntity()
 
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
     
    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("cassette_player")
    inst.AnimState:SetBuild("cassette_player")
    inst.AnimState:PlayAnimation("idle")
    inst.AnimState:SetScale(2, 2)

    inst:AddTag("cassette_player")

    MakeInventoryFloatable(inst, "med", 0.07, 0.72)

    inst.entity:SetPristine()
    if not TheWorld.ismastersim then
        inst.OnEntityReplicated = function(inst)
            inst.replica.container:WidgetSetup("cassette_player") 
        end
        return inst
    end

     	  
    inst:AddComponent("inspectable")
      
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "cassette_player"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/cassette_player.xml"
	inst.components.inventoryitem:SetSinks(true)

    inst:AddComponent("container")
    inst.components.container:WidgetSetup("cassette_player") -- Make our own cassette_player soon
    inst.components.container.skipclosesnd = true
    inst.components.container.skipopensnd = true
			 
    return inst
end

STRINGS.NAMES.CASSETTE_PLAYER = "Cassette Player"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CASSETTE_PLAYER = "Looks like a cassette player to me."
STRINGS.CHARACTERS.LUKE.DESCRIBE.CASSETTE_PLAYER = "A bangin stereo for me tunes!"

return  Prefab("common/inventory/cassette_player", fn, assets, prefabs) 