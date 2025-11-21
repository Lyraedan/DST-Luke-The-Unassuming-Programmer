-- Mixtape setup
local MIXTAPE_FILES = {
    "mixtapes/nightmaremixtape",
    "mixtapes/spookymixtape"
}

TUNING.LUKE = { Mixtapes = {} }

local function ImportMixtapes()
    for _, path in ipairs(MIXTAPE_FILES) do
        modimport(path)
    end
end

local function GenerateMixTapeRecipes(tab)
    for i, tape in ipairs(TUNING.LUKE.Mixtapes) do
        RegisterInventoryItemAtlas(tape.crafting.crafting_icon.atlas, tape.crafting.crafting_icon.image)
        if tape.crafting.craftable then
            AddRecipe(
                "cassette_" .. i,
                tape.crafting.recipe.ingredients,
                tab,
                tape.crafting.recipe.tech_type,
                nil, nil, nil, nil,
                "frisk_builder",
                tape.crafting.crafting_icon.atlas,
                tape.crafting.crafting_icon.image
            )
        end
    end
end

-- Prefabs
PrefabFiles = {
    "luke", "luke_skins", "knife", "golden_knife", "survival_knife", "shadow_knife",
    "pigeon", "cassette_player", "cassette_blank"
}

ImportMixtapes()
table.insert(PrefabFiles, "cassette")

-- Assets
Assets = {
    -- Save slot portraits
    Asset("IMAGE", "images/saveslot_portraits/luke.tex"),
    Asset("ATLAS", "images/saveslot_portraits/luke.xml"),

    -- Character select portraits
    Asset("IMAGE", "images/selectscreen_portraits/luke.tex"),
    Asset("ATLAS", "images/selectscreen_portraits/luke.xml"),
    Asset("IMAGE", "images/selectscreen_portraits/luke_silho.tex"),
    Asset("ATLAS", "images/selectscreen_portraits/luke_silho.xml"),

    -- Big portraits / skins
    Asset("IMAGE", "bigportraits/luke_none.tex"),
    Asset("ATLAS", "bigportraits/luke_none.xml"),
    Asset("IMAGE", "bigportraits/ms_luke_summervibes.tex"),
    Asset("ATLAS", "bigportraits/ms_luke_summervibes.xml"),
    Asset("IMAGE", "bigportraits/ms_luke_egg.tex"),
    Asset("ATLAS", "bigportraits/ms_luke_egg.xml"),
    Asset("IMAGE", "bigportraits/ms_luke_hatless.tex"),
    Asset("ATLAS", "bigportraits/ms_luke_hatless.xml"),

    -- Map icons
    Asset("IMAGE", "images/map_icons/luke.tex"),
    Asset("ATLAS", "images/map_icons/luke.xml"),

    -- Avatars
    Asset("IMAGE", "images/avatars/avatar_luke.tex"),
    Asset("ATLAS", "images/avatars/avatar_luke.xml"),
    Asset("IMAGE", "images/avatars/avatar_ghost_luke.tex"),
    Asset("ATLAS", "images/avatars/avatar_ghost_luke.xml"),
    Asset("IMAGE", "images/avatars/self_inspect_luke.tex"),
    Asset("ATLAS", "images/avatars/self_inspect_luke.xml"),

    -- Names
    Asset("IMAGE", "images/names_luke.tex"),
    Asset("ATLAS", "images/names_luke.xml"),
    Asset("IMAGE", "images/names_gold_luke.tex"),
    Asset("ATLAS", "images/names_gold_luke.xml"),

    -- Sounds
    Asset("SOUNDPACKAGE", "sound/luke.fev"),
    Asset("SOUND", "sound/luke.fsb"),

    -- Animations
    Asset("ANIM", "anim/status_fear.zip"),
    Asset("ANIM", "anim/status_meter_fear.zip"),

    -- Skilltree
    Asset("IMAGE", "images/luke_skilltree.tex"),
    Asset("ATLAS", "images/luke_skilltree.xml"),
    Asset("IMAGE", "images/skilltree_icons2.tex"),
    Asset("ATLAS", "images/skilltree_icons2.xml"),
}

-- Sound remapping
local sounds = {
    "dontstarve/characters/luke",
    "dontstarve/characters/luke/talk_LP",
    "dontstarve/characters/luke/ghost_LP",
    "dontstarve/characters/luke/hurt",
    "dontstarve/characters/luke/death_voice",
    "dontstarve/characters/luke/emote",
    "dontstarve/characters/luke/pose",
    "dontstarve/characters/luke/yawn"
}
for _, s in ipairs(sounds) do
    RemapSoundEvent(s, "luke/luke/" .. s:match("[^/]+$"))
end

AddMinimapAtlas("images/map_icons/luke.xml")

-- Inventory icons
local inventory_items = {
    {atlas="images/inventoryimages/knife.xml", image="knife.tex"},
    {atlas="images/inventoryimages/golden_knife.xml", image="golden_knife.tex"},
    {atlas="images/inventoryimages/survival_knife.xml", image="survival_knife.tex"},
    {atlas="images/inventoryimages/shadow_knife.xml", image="shadow_knife.tex"},
    {atlas="images/inventoryimages/cassette_player.xml", image="cassette_player.tex"},
    {atlas="images/inventoryimages/cassette_blank.xml", image="cassette_blank.tex"}
}
for _, item in ipairs(inventory_items) do
    RegisterInventoryItemAtlas(item.atlas, item.image)
end

-- Globals
local STRINGS = GLOBAL.STRINGS
local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH

-- Import scripts
modimport("main/containers")
modimport("main/actions")
modimport("main/componentactions")
modimport("main/ui")

-- Skilltree
--local SkillTreeDefs = require("prefabs/skilltree_defs")

-- Replace "luke" with your character prefab name

--[[
local OldGetSkilltreeBG = GLOBAL.GetSkilltreeBG
function GLOBAL.GetSkilltreeBG(imagename, ...)
    if imagename == "luke_background.tex" then
        return "images/luke_skilltree.xml"
    else
		GLOBAL.ATLAS_ICONS = OldSkillTreeIcons
        return OldGetSkilltreeBG(imagename, ...)
    end
end

local CreateSkillTree = function()
	print("Creating a skilltree for Luke")
	local BuildSkillsData = require("prefabs/skilltree_luke") -- Load in the skilltree

    if BuildSkillsData then
        local data = BuildSkillsData(SkillTreeDefs.FN)

        if data then
            SkillTreeDefs.CreateSkillTreeFor("luke", data.SKILLS)
            SkillTreeDefs.SKILLTREE_ORDERS["luke"] = data.ORDERS
			print("Created Lukes skilltree")
        end
    end
end
CreateSkillTree();
]]
-- Skilltree end

-- Fear Badge
local function OnFearUpdate(inst)
    local maxVal = inst.components.fear.maxfear
    local current = inst.components.fear.fearfactor
    inst.fear_percent:set(current)
    inst.fear_maxval:set(maxVal)
    inst.fear_numstore:set(current)
    inst.fear_pulse:set(
        (current >= inst.components.fear.scareplayers or inst.components.fear.timesincelastkill == 0)
        and not inst.components.health:IsDead()
    )
end

local function onfearisdirty(inst)
    if GLOBAL.ThePlayer and GLOBAL.ThePlayer.UpdateFearBadge then
        GLOBAL.ThePlayer.UpdateFearBadge()
    end
end

local function PlayerPostConstruct(inst)
    if inst.prefab ~= "luke" then return end

    inst.fear_percent = GLOBAL.net_int(inst.GUID, "fear.percent", "luke_fearisdirty")
    inst.fear_maxval = GLOBAL.net_int(inst.GUID, "fear.maxval", "luke_fearisdirty")
    inst.fear_numstore = GLOBAL.net_int(inst.GUID, "fear.numstore", "luke_fearisdirty")
    inst.fear_pulse = GLOBAL.net_bool(inst.GUID, "fear.pulse", "luke_fearisdirty")

    if GLOBAL.TheWorld.ismastersim then
        inst:ListenForEvent("luke_fearupdate", OnFearUpdate)
        inst:DoTaskInTime(0, function()
            inst:PushEvent("luke_fearupdate", {currenttick=0})
        end)
    end

    if not GLOBAL.TheNet:IsDedicated() then
        inst:ListenForEvent("luke_fearisdirty", onfearisdirty)
    end
end

AddPlayerPostInit(PlayerPostConstruct)

-- Recipes
local frisktab = AddRecipeTab("Luke's Tab", 997, "images/saveslot_portraits/luke_silho.xml", "luke_silho.tex", "frisk_builder")

local function AddCustomRecipe(name, ingredients, product, tech, atlas, image)
    local recipe = AddRecipe(name, ingredients, frisktab, tech, nil, nil, nil, nil, "frisk_builder", atlas, image)
    recipe.product = product
    recipe.image = image or (product .. ".tex")
end

-- Weapons
AddCustomRecipe("knifeLuke", {Ingredient("flint",1), Ingredient("butterflywings",2), Ingredient("twigs",1)}, "knife", TECH.NONE, "images/inventoryimages/knife.xml", "knife.tex")
AddCustomRecipe("goldenKnifeLuke", {Ingredient("knife",1), Ingredient("goldnugget",2)}, "golden_knife", TECH.SCIENCE_ONE, "images/inventoryimages/golden_knife.xml", "golden_knife.tex")
AddCustomRecipe("survivalKnifeLuke", {Ingredient("golden_knife",1), Ingredient("marble",2), Ingredient("walrus_tusk",1)}, "survival_knife", TECH.SCIENCE_TWO, "images/inventoryimages/survival_knife.xml", "survival_knife.tex")
AddCustomRecipe("shadowKnifeLuke", {Ingredient("survival_knife",1), Ingredient("purplegem",1), Ingredient("thulecite",2)}, "shadow_knife", TECH.MAGIC_THREE, "images/inventoryimages/shadow_knife.xml", "shadow_knife.tex")

-- Tools & utility
AddCustomRecipe("birdtrapLuke", {Ingredient("twigs",1), Ingredient("silk",2)}, "birdtrap", TECH.NONE)
AddCustomRecipe("blowdart_pipeLuke", {Ingredient("houndstooth",1), Ingredient("feather_robin_winter",1)}, "blowdart_pipe", TECH.NONE)
AddCustomRecipe("blowdart_fireLuke", {Ingredient("charcoal",1), Ingredient("feather_robin",1)}, "blowdart_fire", TECH.NONE)
AddCustomRecipe("blowdart_sleepLuke", {Ingredient("stinger",1), Ingredient("feather_crow",1)}, "blowdart_sleep", TECH.NONE)
AddCustomRecipe("blowdart_yellowLuke", {Ingredient("goldnugget",1), Ingredient("feather_canary",1)}, "blowdart_yellow", TECH.NONE)
AddCustomRecipe("birdcageLuke", {Ingredient("papyrus",1), Ingredient("goldnugget",3), Ingredient("seeds",1)}, "birdcage", TECH.SCIENCE_ONE)
AddCustomRecipe("beehatLuke", {Ingredient("silk",2), Ingredient("cutgrass",2)}, "beehat", TECH.SCIENCE_ONE)
AddCustomRecipe("polly_rogershatLuke", {Ingredient("strawhat",1), Ingredient("feather_crow",1), Ingredient("pigskin",1)}, "polly_rogershat", TECH.SCIENCE_TWO)
AddCustomRecipe("cassette_player", {Ingredient("silk",2)}, "cassette_player", TECH.NONE)
AddCustomRecipe("cassette_blank", {Ingredient("silk",2)}, "cassette_blank", TECH.NONE, "images/inventoryimages/cassette_blank.xml", "cassette_blank.tex")

GenerateMixTapeRecipes(frisktab)

-- Recipe descriptions
STRINGS.RECIPE_DESC.KNIFE = "A butterfly knife."
STRINGS.RECIPE_DESC.GOLDEN_KNIFE = "A golden butterfly knife."
STRINGS.RECIPE_DESC.SURVIVAL_KNIFE = "A sturdy survival butterfly knife."
STRINGS.RECIPE_DESC.SHADOW_KNIFE = "A magical butterfly knife."

-- Character info
STRINGS.CHARACTER_TITLES.luke = "The Unassuming"
STRINGS.CHARACTER_NAMES.luke = "Luke"
STRINGS.CHARACTER_DESCRIPTIONS.luke = "*Unintimidating to animals (especially birds)\n*Used to eating in a dark, moldy flat\n*Dislikes bugs, sleeping and the sea"
STRINGS.CHARACTER_QUOTES.luke = "\"Urgh.\""
STRINGS.CHARACTER_SURVIVABILITY.luke = "\"Guaranteed\""

TUNING.STARTING_ITEM_IMAGE_OVERRIDE.knife = { atlas = "images/inventoryimages/knife.xml", image = "knife.tex" }

-- Custom speech
STRINGS.CHARACTERS.LUKE = require "speech_luke"
STRINGS.CHARACTERS.LUKE.playFearGainSfx = GetModConfigData("luke_playfeargainsfx")

-- Skins
STRINGS.NAMES.LUKE = "Luke"
GLOBAL.PREFAB_SKINS["luke"] = {"luke_none"}

STRINGS.SKIN_NAMES.luke_none = "Luke"
STRINGS.SKIN_DESCRIPTIONS.luke_none = "Rocking a black hat, black top and fingerless gloves!"
STRINGS.SKIN_QUOTES.luke_none = "It's my general attire."

STRINGS.SKIN_NAMES.ms_luke_summervibes = "Summervibes"
STRINGS.SKIN_DESCRIPTIONS.ms_luke_summervibes = "Rocking the summer palette!"
STRINGS.SKIN_QUOTES.ms_luke_summervibes = "Let's go get sum!"

STRINGS.SKIN_NAMES.ms_luke_egg = "Bald"
STRINGS.SKIN_DESCRIPTIONS.ms_luke_egg = "A tragedy."
STRINGS.SKIN_QUOTES.ms_luke_egg = "Egg."

STRINGS.SKIN_NAMES.ms_luke_hatless = "Hatless"
STRINGS.SKIN_DESCRIPTIONS.ms_luke_hatless = "I don't look like a pineapple... I just can't draw."
STRINGS.SKIN_QUOTES.ms_luke_hatless = "I've lost my hat!"

-- Actions
STRINGS.ACTIONS.PLAYCASSETTE = "Play Cassette"
STRINGS.ACTIONS.STOPCASSETTE = "Stop Playing"

-- Add character
AddModCharacter("luke", "MALE")
