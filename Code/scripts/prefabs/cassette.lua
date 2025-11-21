local function MakeCassettePrefab(mixtape_id)
    local function fn()
        local cassette_data = TUNING.LUKE.Mixtapes[mixtape_id]

        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddNetwork()
        MakeInventoryPhysics(inst)

        inst.AnimState:SetBank(cassette_data.prefab.animstate.bank)
        inst.AnimState:SetBuild(cassette_data.prefab.animstate.build)
        inst.AnimState:PlayAnimation(cassette_data.prefab.animstate.animation)
        inst.AnimState:SetScale(cassette_data.prefab.animstate.scale.x, cassette_data.prefab.animstate.scale.y)

        inst:AddTag("cassette")
        inst:AddTag("enabled")
        MakeInventoryFloatable(inst, "med", 0.07, 0.72)

        inst.entity:SetPristine()
        if not TheWorld.ismastersim then
            return inst
        end

        inst:AddComponent("inspectable")
        inst:AddComponent("inventoryitem")
        inst.components.inventoryitem.imagename = cassette_data.prefab.inventoryitem.imagename
        inst.components.inventoryitem.atlasname = cassette_data.prefab.inventoryitem.atlasname
        inst.components.inventoryitem:SetSinks(cassette_data.prefab.inventoryitem.sinks)

        inst:AddComponent("cassette")
        inst.components.cassette.mixtape_id = mixtape_id
        inst.components.cassette.mixtape_data = cassette_data
        inst.mixtape_id = mixtape_id
        inst.mixtape_data = cassette_data

        return inst
    end

    local data = TUNING.LUKE.Mixtapes[mixtape_id]
    local assets = {
        Asset("ANIM", data.prefab.asset.anim),
        Asset("ATLAS", data.prefab.asset.atlas),
        Asset("IMAGE", data.prefab.asset.image),
    }

    return Prefab("common/inventory/cassette_" .. mixtape_id, fn, assets)
end

for i, tape in ipairs(TUNING.LUKE.Mixtapes) do
    local name = "cassette_" .. i
    local key = string.upper(name)
    STRINGS.NAMES[key] = tape.strings.name
    STRINGS.RECIPE_DESC[key] = tape.strings.recipe_description

    for character_name, description in pairs(tape.strings.describe) do
        local character_key = string.upper(character_name)
        if STRINGS.CHARACTERS[character_key] then
            STRINGS.CHARACTERS[character_key].DESCRIBE[key] = description
        end
    end
end

-- Create prefabs for each mixtape
local prefabs = {}
for i, tape in ipairs(TUNING.LUKE.Mixtapes) do
    table.insert(prefabs, MakeCassettePrefab(i))
end

return unpack(prefabs)