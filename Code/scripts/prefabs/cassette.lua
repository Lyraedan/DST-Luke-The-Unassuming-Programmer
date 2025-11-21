local assets = {
    Asset("ANIM", "anim/cassette.zip"),
    Asset("ATLAS", "images/inventoryimages/cassette.xml"),
    Asset("IMAGE", "images/inventoryimages/cassette.tex"),
}

local function MakeCassettePrefab(mixtape_id)
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
        inst.components.cassette.mixtape_id = mixtape_id
        inst.components.cassette.mixtape_data = TUNING.LUKE.Mixtapes[mixtape_id]
        inst.mixtape_id = mixtape_id
        inst.mixtape_data = TUNING.LUKE.Mixtapes[mixtape_id]

        return inst
    end

    return Prefab("common/inventory/cassette_" .. mixtape_id, fn, assets)
end

for i, tape in ipairs(TUNING.LUKE.Mixtapes) do
    local name = "cassette_" .. i
    local key = string.upper(name)
    STRINGS.NAMES[key] = tape.strings.name
    STRINGS.RECIPE_DESC[key] = tape.strings.recipe_description
    STRINGS.CHARACTERS.GENERIC.DESCRIBE[key] = tape.strings.generic_describe
    STRINGS.CHARACTERS.LUKE.DESCRIBE[key] = tape.strings.luke_describe
end

-- Create prefabs for each mixtape
local prefabs = {}
for i, tape in ipairs(TUNING.LUKE.Mixtapes) do
    table.insert(prefabs, MakeCassettePrefab(i))
end

return unpack(prefabs)