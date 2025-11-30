local assets=
{
    Asset("ANIM", "anim/cassette_player.zip"),
    Asset("ATLAS", "images/inventoryimages/cassette_player_empty.xml"),
    Asset("IMAGE", "images/inventoryimages/cassette_player_empty.tex"),
    Asset("ATLAS", "images/inventoryimages/cassette_player_inuse.xml"),
    Asset("IMAGE", "images/inventoryimages/cassette_player_inuse.tex")
}

local prefabs = 
{

}

STRINGS.CHARACTERS.GENERIC.HOLD_CASSETTE = "I should probably hold the cassette player."
STRINGS.CHARACTERS.GENERIC.NEED_CASSETTE = "I need a cassette player."

local CASSETTE_PLAYER_ISPLAYING_TAG = "playingCassette"
local CASSETTE_ISPLAYING_TAG = "isPlaying"
local AUDIO_CHANNEL = "cassette"
local CURRENT_CASSETTE = nil
local CURRENT_USER = nil

local TEMP_EFFICIENT_USER = "isTempEfficientUser"

local FARM_PLANT_TAGS = {"tendable_farmplant"}
local function song_tend_update(inst)
    local ix, iy, iz = inst.Transform:GetWorldPosition()
    local nearby_tendable_plants = TheSim:FindEntities(ix, iy, iz, CURRENT_CASSETTE.mixtape_data.effects.farming.tend_radius, FARM_PLANT_TAGS)
    for _, tendable_plant in pairs(nearby_tendable_plants) do
        tendable_plant.components.farmplanttendable:TendTo()
    end
end

local function HasItem(container, prefab)
  for _, item in pairs(container.slots) do
    if item and item == prefab then
      return true
    end
  end
  return false
end

local StopCassette = nil

local function OnItemGet(inst, data)
    --if data.item and data.item:HasTag(CASSETTE_ISPLAYING_TAG) then
    --    data.item is the cassette
    --end
end

local function OnItemLose(inst, data)
    -- Stop playing the cassette if it is removed from the cassette player
    if data.prev_item and data.prev_item:HasTag(CASSETTE_ISPLAYING_TAG) then
        StopCassette(inst, data.prev_item, CURRENT_USER)
    end
end

local function ForceInventoryIconRefresh(inst)
    if inst.components.inventoryitem and inst.components.inventoryitem.owner then
        local owner = inst.components.inventoryitem.owner

        if owner.components.inventory then
            -- Only continue if this is the local player
            if owner ~= ThePlayer then
                return
            end

            -- Save slot and item data
            local slot = owner.components.inventory:GetItemSlot(inst)
            if not slot then
                -- Item might be inside a container, or not actually in player's main inv
                return
            end

            inst:RemoveEventCallback("itemget", OnItemGet, inst)
            inst:RemoveEventCallback("itemlose", OnItemLose, inst)

            -- Remove and re‑add the item
            owner.components.inventory:RemoveItem(inst, true, true)
            owner.components.inventory:GiveItem(inst, slot)

            inst:ListenForEvent("itemget", OnItemGet, inst)
            inst:ListenForEvent("itemlose", OnItemLose, inst)

            print("ForceInventoryIconRefresh: removed & re‑added item in slot " .. tostring(slot))
            owner.components.talker:Say("Refreshed")
        end
    end
end

local function SetIconEmpty(inst)
    inst.components.inventoryitem:ChangeImageName("cassette_player_empty")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/cassette_player_empty.xml"
    ForceInventoryIconRefresh(inst)
end

local function SetIconInUse(inst)
    inst.components.inventoryitem:ChangeImageName("cassette_player_inuse")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/cassette_player_inuse.xml"
    ForceInventoryIconRefresh(inst)
end

local function ApplyCassetteEffects(listener_inst)
    local data = CURRENT_CASSETTE.mixtape_data
    if data.effects == nil then
        return -- No mixtape effects defined
    end

    local effects = data.effects

    if effects.farming then -- Has farming
        if effects.farming.makes_listener_tends_to_plants then
            listener_inst._tend_update_task = listener_inst:DoPeriodicTask(1, song_tend_update, 1)
        end
    end

    if effects.efficiency then -- Has efficiency 
        if effects.efficiency.makes_listener_efficient then
            if listener_inst.components.efficientuser == nil then
                listener_inst:AddComponent("efficientuser")
                listener_inst:AddTag(TEMP_EFFICIENT_USER)
            end

            local user = listener_inst.components.efficientuser

            -- Save the users multipliers to be restored when effect is removed
            user.saved_chop_multiplier = user:GetMultiplier(ACTIONS.CHOP)
            user.saved_mine_multiplier = user:GetMultiplier(ACTIONS.MINE)
            user.saved_hammer_multiplier = user:GetMultiplier(ACTIONS.HAMMER)
            user.saved_attack_multiplier = user:GetMultiplier(ACTIONS.ATTACK)

            user:AddMultiplier(ACTIONS.CHOP, user:GetMultiplier(ACTIONS.CHOP) * effects.efficiency.chop, listener_inst)
            user:AddMultiplier(ACTIONS.MINE, user:GetMultiplier(ACTIONS.MINE) * effects.efficiency.mine, listener_inst)
            user:AddMultiplier(ACTIONS.HAMMER, user:GetMultiplier(ACTIONS.HAMMER) * effects.efficiency.hammer, listener_inst)
            user:AddMultiplier(ACTIONS.ATTACK, user:GetMultiplier(ACTIONS.ATTACK) * effects.efficiency.attack, listener_inst)
        end
    end

    if effects.worker then -- Has worker
        if effects.worker.makes_listener_worker then
            -- Apply worker
            local worker = listener_inst.components.workmultiplier
            worker.saved_chop_multiplier = worker:GetMultiplier(ACTIONS.CHOP)
            worker.saved_mine_multiplier = worker:GetMultiplier(ACTIONS.MINE)
            worker.saved_hammer_multiplier = worker:GetMultiplier(ACTIONS.HAMMER)

            worker:AddMultiplier(ACTIONS.CHOP, worker:GetMultiplier(ACTIONS.CHOP) * effects.worker.chop, listener_inst)
            worker:AddMultiplier(ACTIONS.MINE, worker:GetMultiplier(ACTIONS.MINE) * effects.worker.mine, listener_inst)
            worker:AddMultiplier(ACTIONS.HAMMER, worker:GetMultiplier(ACTIONS.MINE) * effects.worker.hammer, listener_inst)
        end
    end
end

local function RemoveCassetteEffect(listener_inst)
    -- Remove / Restore efficiency
    if listener_inst.components.efficientuser then
        local user = listener_inst.components.efficientuser
        user:AddMultiplier(ACTIONS.CHOP, user.saved_chop_multiplier, listener_inst)
        user:AddMultiplier(ACTIONS.MINE, user.saved_mine_multiplier, listener_inst)
        user:AddMultiplier(ACTIONS.HAMMER, user.saved_hammer_multiplier, listener_inst)
        user:AddMultiplier(ACTIONS.ATTACK, user.saved_attack_multiplier, listener_inst)

        if listener_inst:HasTag(TEMP_EFFICIENT_USER) then
            listener_inst:RemoveComponent("efficientuser")
            listener_inst:RemoveTag(TEMP_EFFICIENT_USER)
        end
    end

    -- Restore worker multipliers
    if listener_inst.components.workmultiplier then
        local worker = listener_inst.components.workmultiplier
        worker:AddMultiplier(ACTIONS.CHOP, worker.saved_chop_multiplier, listener_inst)
        worker:AddMultiplier(ACTIONS.MINE, worker.saved_mine_multiplier, listener_inst)
        worker:AddMultiplier(ACTIONS.HAMMER, worker.saved_hammer_multiplier, listener_inst)
    end

end

StopCassette = function(inst, cassette, emitter)
    if not emitter then
        return
    end

    emitter.SoundEmitter:KillSound(AUDIO_CHANNEL)

    if cassette ~= nil then
        cassette:RemoveTag(CASSETTE_ISPLAYING_TAG)
    end
    
    if emitter._tend_update_task then
        emitter._tend_update_task:Cancel()
        emitter._tend_update_task = nil
    end
    
    RemoveCassetteEffect(emitter)
    emitter:PushEvent("on_cassette_stopped", { })
    emitter.currentCassette = nil
    CURRENT_CASSETTE = nil
    CURRENT_USER = nil

    SetIconEmpty(inst)

    emitter:RemoveTag(CASSETTE_PLAYER_ISPLAYING_TAG)
    
end

local function PlayCassette(inst, cassette, emitter, tape)
    if not emitter then
        return
    end

    if emitter:HasTag(CASSETTE_PLAYER_ISPLAYING_TAG) then
        -- Stop previous cassette
        StopCassette(inst, emitter.currentCassette, emitter)
    end
    
    -- Check if we still have the tag
    if emitter:HasTag(CASSETTE_PLAYER_ISPLAYING_TAG) then
        -- Stopping previous failed
        return
    end

    if cassette ~= nil then
        cassette:AddTag(CASSETTE_ISPLAYING_TAG)
    end

    emitter.SoundEmitter:PlaySound(tape, AUDIO_CHANNEL)
    emitter.currentCassette = cassette
    CURRENT_CASSETTE = cassette
    CURRENT_USER = emitter

    SetIconInUse(inst)

    ApplyCassetteEffects(emitter)

    emitter:AddTag(CASSETTE_PLAYER_ISPLAYING_TAG)
    emitter:PushEvent("on_cassette_played", { })
end

local function OnDroppedCassettePlayer(inst)
    -- Automatically close the cassette container if its open
    if inst.components.container:IsOpen() then
        inst.components.container:Close()
    end

    -- If the cassette player has a current user and is playing, stop it
    if CURRENT_USER then
        if CURRENT_USER:HasTag(CASSETTE_PLAYER_ISPLAYING_TAG) then
            StopCassette(inst, CURRENT_CASSETTE, CURRENT_USER)
        end
    end
end

local function OnPlayerUsedCassette(inst, data)
    if not data or not data.cassette then
        return
    end

    if not inst.components.inventoryitem:IsHeld() then
        if STRINGS.CHARACTERS[string.upper(data.player.prefab)].HOLD_CASSETTE then
            data.player.components.talker:Say(STRINGS.CHARACTERS[string.upper(data.player.prefab)].HOLD_CASSETTE)
        else
            data.player.components.talker:Say(STRINGS.CHARACTERS.GENERIC.HOLD_CASSETTE)
        end 
        return
    end

    if not HasItem(inst.components.container, data.cassette) then
        -- Why does this trigger when it also has the cassette?
        --[[if STRINGS.CHARACTERS[string.upper(data.player.prefab)].NEED_CASSETTE then
            data.player.components.talker:Say(STRINGS.CHARACTERS[string.upper(data.player.prefab)].NEED_CASSETTE)
        else
            data.player.components.talker:Say(STRINGS.CHARACTERS.GENERIC.NEED_CASSETTE)
        end]]--
        return  -- cassette not inside this player, ignore event
    end

    if data.mode == "stop" then
        StopCassette(inst, data.cassette, data.player)
    else
        PlayCassette(inst, data.cassette, data.player, data.selected_tape)
    end
end

local function ContainerCanOpen(inst)
    return inst.components.inventoryitem:IsHeld()
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
            --inst.replica.inventoryitem:SerializeForClient()
        end
        return inst
    end

     	  
    inst:AddComponent("inspectable")
      
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "cassette_player_empty"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/cassette_player_empty.xml"
	inst.components.inventoryitem:SetSinks(true)

    inst.components.inventoryitem:SetOnDroppedFn(OnDroppedCassettePlayer)

    inst:AddComponent("container")
    inst.components.container:WidgetSetup("cassette_player")
    inst.components.container.skipclosesnd = true
    inst.components.container.skipopensnd = true
    inst.components.container.canopenfn = ContainerCanOpen

    inst:ListenForEvent("itemget", OnItemGet)
    inst:ListenForEvent("itemlose", OnItemLose)
    
    inst:ListenForEvent("ms_playerusedcassette", function(world, data) OnPlayerUsedCassette(inst, data) end, TheWorld)

    MakeHauntable(inst)
    return inst
end

STRINGS.NAMES.CASSETTE_PLAYER = "Cassette Player"
STRINGS.RECIPE_DESC.CASSETTE_PLAYER = "A cassette player."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.CASSETTE_PLAYER = "Looks like a cassette player to me."
STRINGS.CHARACTERS.LUKE.DESCRIBE.CASSETTE_PLAYER = "A bangin stereo for me tunes!"

return  Prefab("common/inventory/cassette_player", fn, assets, prefabs) 