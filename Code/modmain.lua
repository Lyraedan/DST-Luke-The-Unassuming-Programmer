PrefabFiles = {
	"luke",
	"luke_skins",
	"knife",
    "golden_knife",
    "survival_knife",
    "shadow_knife"
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/luke.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/luke.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/luke.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/luke.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/luke_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/luke_silho.xml" ),

    -- Skin assets
    Asset( "IMAGE", "bigportraits/luke_none.tex" ),
    Asset( "ATLAS", "bigportraits/luke_none.xml" ),
	Asset( "IMAGE", "bigportraits/ms_luke_summervibes.tex" ),
    Asset( "ATLAS", "bigportraits/ms_luke_summervibes.xml" ),
    Asset( "IMAGE", "bigportraits/ms_luke_egg.tex" ),
    Asset( "ATLAS", "bigportraits/ms_luke_egg.xml" ),
    Asset( "IMAGE", "bigportraits/ms_luke_hatless.tex" ),
    Asset( "ATLAS", "bigportraits/ms_luke_hatless.xml" ),

	Asset( "IMAGE", "images/map_icons/luke.tex" ),
	Asset( "ATLAS", "images/map_icons/luke.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_luke.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_luke.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_luke.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_luke.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_luke.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_luke.xml" ),
	
	Asset( "IMAGE", "images/names_luke.tex" ),
    Asset( "ATLAS", "images/names_luke.xml" ),
	
	Asset( "IMAGE", "images/names_gold_luke.tex" ),
    Asset( "ATLAS", "images/names_gold_luke.xml" ),

    Asset("SOUNDPACKAGE", "sound/luke.fev"),
    Asset("SOUND", "sound/luke.fsb")
}

RemapSoundEvent("dontstarve/characters/luke", "luke/luke")
RemapSoundEvent("dontstarve/characters/luke/talk_LP", "luke/luke/talk_LP")
RemapSoundEvent("dontstarve/characters/luke/ghost_LP", "luke/luke/ghost_LP")
RemapSoundEvent("dontstarve/characters/luke/hurt", "luke/luke/hurt")
RemapSoundEvent("dontstarve/characters/luke/death_voice", "luke/luke/death_voice")
RemapSoundEvent("dontstarve/characters/luke/emote", "luke/luke/emote")
RemapSoundEvent("dontstarve/characters/luke/pose", "luke/luke/pose")
RemapSoundEvent("dontstarve/characters/luke/yawn", "luke/luke/yawn")

AddMinimapAtlas("images/map_icons/luke.xml")

RegisterInventoryItemAtlas("images/inventoryimages/knife.xml", "knife.tex")
RegisterInventoryItemAtlas("images/inventoryimages/golden_knife.xml", "golden_knife.tex")
RegisterInventoryItemAtlas("images/inventoryimages/survival_knife.xml", "survival_knife.tex")
RegisterInventoryItemAtlas("images/inventoryimages/shadow_knife.xml", "shadow_knife.tex")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local ModIndex = GLOBAL.KnownModIndex

local Ingredient = GLOBAL.Ingredient
local RECIPETABS = GLOBAL.RECIPETABS
local Recipe = GLOBAL.Recipe
local AllRecipes = GLOBAL.AllRecipes
local TECH = GLOBAL.TECH

-- Setup rest of character
local frisktab = AddRecipeTab( "Luke's Tab", 997, "images/saveslot_portraits/luke_silho.xml", "luke_silho.tex", "frisk_builder")

local birdtrap = AddRecipe("birdtrapLuke", {GLOBAL.Ingredient("twigs", 1), GLOBAL.Ingredient("silk", 2)}, frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", nil, nil )
birdtrap.product = "birdtrap"
birdtrap.image = "birdtrap.tex"
--STRINGS.NAMES.BIRDTRAPLUKE = "Birdtrap"
--STRINGS.RECIPE_DESC.BIRDTRAPLUKE = "Catch birds!"

local blowdartPipe = AddRecipe("blowdart_pipeLuke", {GLOBAL.Ingredient("houndstooth", 1), GLOBAL.Ingredient("feather_robin_winter", 1)}, frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", nil, nil )
blowdartPipe.product = "blowdart_pipe"
blowdartPipe.image = "blowdart_pipe.tex"

local blowdartFire = AddRecipe("blowdart_fireLuke", {GLOBAL.Ingredient("charcoal", 1), GLOBAL.Ingredient("feather_robin", 1)}, frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", nil, nil )
blowdartFire.product = "blowdart_fire"
blowdartFire.image = "blowdart_fire.tex"

local blowdartSleep = AddRecipe("blowdart_sleepLuke", {GLOBAL.Ingredient("stinger", 1), GLOBAL.Ingredient("feather_crow", 1)}, frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", nil, nil )
blowdartSleep.product = "blowdart_sleep"
blowdartSleep.image = "blowdart_sleep.tex"

local blowdartYellow = AddRecipe("blowdart_yellowLuke", {GLOBAL.Ingredient("goldnugget", 1), GLOBAL.Ingredient("feather_canary", 1)}, frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", nil, nil )
blowdartYellow.product = "blowdart_yellow"
blowdartYellow.image = "blowdart_yellow.tex"

local knife = AddRecipe("knifeLuke", {GLOBAL.Ingredient("flint", 1), GLOBAL.Ingredient("butterflywings", 2), GLOBAL.Ingredient("twigs", 1)}, frisktab, TECH.NONE, nil, nil, nil, nil, "frisk_builder", "images/inventoryimages/knife.xml", "knife.tex" )
knife.product = "knife"
knife.image = "knife.tex"

local golden_knife = AddRecipe("goldenKnifeLuke", {GLOBAL.Ingredient("knife", 1), GLOBAL.Ingredient("goldnugget", 2)}, frisktab, TECH.SCIENCE_ONE, nil, nil, nil, nil, "frisk_builder", "images/inventoryimages/golden_knife.xml", "golden_knife.tex" )
golden_knife.product = "golden_knife"
golden_knife.image = "golden_knife.tex"

local survival_knife = AddRecipe("survivalKnifeLuke", {GLOBAL.Ingredient("golden_knife", 1), GLOBAL.Ingredient("marble", 2), GLOBAL.Ingredient("walrus_tusk", 1)}, frisktab, TECH.SCIENCE_TWO, nil, nil, nil, nil, "frisk_builder", "images/inventoryimages/survival_knife.xml", "survival_knife.tex" )
survival_knife.product = "survival_knife"
survival_knife.image = "survival_knife.tex"

local shadow_knife = AddRecipe("shadowKnifeLuke", {GLOBAL.Ingredient("survival_knife", 1), GLOBAL.Ingredient("purplegem", 1), GLOBAL.Ingredient("thulecite", 2)}, frisktab, TECH.MAGIC_THREE, nil, nil, nil, nil, "frisk_builder", "images/inventoryimages/shadow_knife.xml", "shadow_knife.tex" )
shadow_knife.product = "shadow_knife"
shadow_knife.image = "shadow_knife.tex"

local birdcage = AddRecipe("birdcageLuke", {GLOBAL.Ingredient("papyrus", 1), GLOBAL.Ingredient("goldnugget", 3), GLOBAL.Ingredient("seeds", 1)}, frisktab, TECH.SCIENCE_ONE, nil, nil, nil, nil, "frisk_builder", nil, nil )
birdcage.product = "birdcage"
birdcage.image = "birdcage.tex"

local beehat = AddRecipe("beehatLuke", {GLOBAL.Ingredient("silk", 2), GLOBAL.Ingredient("cutgrass", 2)}, frisktab, TECH.SCIENCE_ONE, nil, nil, nil, nil, "frisk_builder", nil, nil )
beehat.product = "beehat"
beehat.image = "beehat.tex"

local pirateHat = AddRecipe("polly_rogershatLuke", {GLOBAL.Ingredient("strawhat", 1), GLOBAL.Ingredient("feather_crow", 1), GLOBAL.Ingredient("pigskin", 1)}, frisktab, TECH.SCIENCE_TWO, nil, nil, nil, nil, "frisk_builder", nil, nil )
pirateHat.product = "polly_rogershat"
pirateHat.image = "polly_rogershat.tex"

STRINGS.RECIPE_DESC.KNIFE = "A butterfly knife."
STRINGS.RECIPE_DESC.GOLDEN_KNIFE = "A golden butterfly knife."
STRINGS.RECIPE_DESC.SURVIVAL_KNIFE = "A sturdy survival butterfly knife."
STRINGS.RECIPE_DESC.SHADOW_KNIFE = "A magical butterfly knife."

-- The character select screen lines
STRINGS.CHARACTER_TITLES.luke = "The Unassuming"
STRINGS.CHARACTER_NAMES.luke = "Luke"
STRINGS.CHARACTER_DESCRIPTIONS.luke = "*Unintimidating to animals (especially birds)\n*Used to eating in a dark, moldy flat\n*Dislikes bugs, sleeping and the sea" --"*Unintimidating to animals\n*Plays with knives\n*Not a picky eater\n*Scared of bugs\n*Has insomnia"
STRINGS.CHARACTER_QUOTES.luke = "\"Urgh.\""
STRINGS.CHARACTER_SURVIVABILITY.luke = "\"Guarenteed\""

TUNING.STARTING_ITEM_IMAGE_OVERRIDE.knife = {
    atlas = "images/inventoryimages/knife.xml",
    image = "knife.tex"
 }

-- Custom speech strings
STRINGS.CHARACTERS.LUKE = require "speech_luke"

-- Skins
-- The character's name as appears in-game 
STRINGS.NAMES.LUKE = "Luke"
GLOBAL.PREFAB_SKINS["luke"] = {"luke_none"}

STRINGS.SKIN_NAMES.luke_none = "Luke"
STRINGS.SKIN_DESCRIPTIONS.luke_none = "Rocking a black hat, black top and fingerless gloves!"
STRINGS.SKIN_QUOTES.luke_none = "It's my general attire."

STRINGS.SKIN_NAMES.ms_luke_summervibes = "Summervibes"
STRINGS.SKIN_DESCRIPTIONS.ms_luke_summervibes = "Rocking the summer pallet!"
STRINGS.SKIN_QUOTES.ms_luke_summervibes = "Lets go get sum!"

STRINGS.SKIN_NAMES.ms_luke_egg = "Bald"
STRINGS.SKIN_DESCRIPTIONS.ms_luke_egg = "A tragedy."
STRINGS.SKIN_QUOTES.ms_luke_egg = "Egg."

STRINGS.SKIN_NAMES.ms_luke_hatless = "Hatless"
STRINGS.SKIN_DESCRIPTIONS.ms_luke_hatless = "I don't look like a pineapple... I just can't draw."
STRINGS.SKIN_QUOTES.ms_luke_hatless = "I've lost my hat!"

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("luke", "MALE")
