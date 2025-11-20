local assets=
{
    Asset("ANIM", "anim/cassette_player.zip"),
    Asset("ATLAS", "images/inventoryimages/cassette_player.xml"),
    Asset("IMAGE", "images/inventoryimages/cassette_player.tex"),
}

local prefabs = 
{

}

local function HasItem(container, prefab)
  for _, item in pairs(container.slots) do
    if item and item == prefab then
      return true
    end
  end
  return false
end

local function PlayCassette(cassette, emitter, tape)
    if emitter:HasTag("playingCassette") then
        StopCassette(emitter.currentCassette, emitter)
    end
    
    if cassette ~= nil then
        cassette:AddTag("isPlaying")
    end

    emitter.SoundEmitter:PlaySound(tape, "cassette")
    emitter.currentCassette = cassette
    emitter:AddTag("playingCassette")
end

local function StopCassette(cassette, emitter)
    emitter.SoundEmitter:KillSound("cassette")

    if cassette ~= nil then
        cassette:RemoveTag("isPlaying")
    end
    
    emitter:RemoveTag("playingCassette")
end

local function OnPlayerUsedCassette(inst, data)
    if not data or not data.cassette then
        return
    end

    -- Only react if THIS cassette player contains the used cassette
    if not HasItem(inst.components.container, data.cassette) then
        return  -- cassette not inside this player, ignore event
    end

    if data.mode == "stop" then
        StopCassette(data.cassette, data.player)
    else
        PlayCassette(data.cassette, data.player, data.selected_tape)
    end
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
    inst.components.container:WidgetSetup("cassette_player")
    inst.components.container.skipclosesnd = true
    inst.components.container.skipopensnd = true

    inst:ListenForEvent("ms_playerusedcassette", function(world, data) OnPlayerUsedCassette(inst, data) end, TheWorld)
			 
    return inst
end

STRINGS.NAMES.CASSETTE_PLAYER = "Cassette Player"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CASSETTE_PLAYER = "Looks like a cassette player to me."
STRINGS.CHARACTERS.LUKE.DESCRIBE.CASSETTE_PLAYER = "A bangin stereo for me tunes!"

return  Prefab("common/inventory/cassette_player", fn, assets, prefabs) 