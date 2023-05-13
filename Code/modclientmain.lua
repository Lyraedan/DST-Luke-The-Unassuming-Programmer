PrefabFiles = {
	"luke_skins"
}

Assets = {
    -- Skin assets
    Asset( "IMAGE", "bigportraits/luke_none.tex" ),
    Asset( "ATLAS", "bigportraits/luke_none.xml" ),
	Asset( "IMAGE", "bigportraits/ms_luke_summervibes.tex" ),
    Asset( "ATLAS", "bigportraits/ms_luke_summervibes.xml" ),
    Asset( "IMAGE", "bigportraits/ms_luke_egg.tex" ),
    Asset( "ATLAS", "bigportraits/ms_luke_egg.xml" ),
    Asset( "IMAGE", "bigportraits/ms_luke_hatless.tex" ),
    Asset( "ATLAS", "bigportraits/ms_luke_hatless.xml" ),

    Asset( "IMAGE", "images/saveslot_portraits/luke.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/luke.xml" ),

    Asset( "IMAGE", "images/names_gold_luke.tex" ),
    Asset( "ATLAS", "images/names_gold_luke.xml" ),

    Asset("IMAGE", "images/inventoryimages/knife.tex" ),
    Asset("ATLAS", "images/inventoryimages/knife.xml"), 
}

local STRINGS = GLOBAL.STRINGS

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

STRINGS.CHARACTER_TITLES.luke = "The Unassuming"
STRINGS.CHARACTER_NAMES.luke = "Luke"
STRINGS.CHARACTER_DESCRIPTIONS.luke = "*Unintimidating to animals (especially birds)\n*Used to eating in a dark, moldy flat\n*Dislikes bugs, sleeping and the sea" --"*Unintimidating to animals\n*Plays with knives\n*Not a picky eater\n*Scared of bugs\n*Has insomnia"
STRINGS.CHARACTER_QUOTES.luke = "\"Urgh.\""
STRINGS.CHARACTER_SURVIVABILITY.luke = "\"Guarenteed\""

-- Menu stuff?
STRINGS.CHARACTER_ABOUTME.luke = "A programmer that enjoys knife twirling and consistently has food poisoning. He is afraid of bugs and his appartment is often flooded with pidgeons in spite of his efforts to be rid of them."
STRINGS.CHARACTER_BIOS.luke = {
 { title = "Birthday", desc = "September 6" },
 { title = "Favorite Food", desc = "Meaty Stew" },
 { title = "His reasons", desc = "<redacted>"},
}

TUNING.LUKE_HEALTH = 150
TUNING.LUKE_HUNGER = 150
TUNING.LUKE_SANITY = 120

TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.LUKE = {
	"knife",
}

TUNING.STARTING_ITEM_IMAGE_OVERRIDE["knife"] = {
    atlas = "images/inventoryimages/knife.xml",
    image = "knife.tex"
}

AddModCharacter("luke", "MALE")