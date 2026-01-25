local function GetMixtape()
    return {
        title = "A hoes mixtape",
        id = "cassette_farm",

        prefab = {
            asset = {
                anim = "anim/cassette_hoe.zip",
                atlas = "images/inventoryimages/cassette_hoe.xml",
                image = "images/inventoryimages/cassette_hoe.tex",
            },

            inventoryitem = {
                imagename = "cassette_hoe",
                atlasname = "images/inventoryimages/cassette_hoe.xml",
                sinks = true
            },

            animstate = {
                bank = "cassette_hoe",
                build = "cassette_hoe",
                animation = "idle",
                scale = {
                    x = 2,
                    y = 2
                }
            }
        },

        crafting = {
            craftable = true,
            recipe = {
                ingredients = {
                    GLOBAL.Ingredient("cassette_blank", 1),
                    GLOBAL.Ingredient("farm_hoe", 1),
                    GLOBAL.Ingredient("silk", 1)
                },
                tech_type = GLOBAL.TECH.NONE
            },
            crafting_icon = {
                atlas = "images/inventoryimages/cassette_hoe.xml",
                image = "cassette_hoe.tex",
            }
        },

        songs = {
            "dontstarve/music/gramaphone_creepyforest"
        },

        effects = {
            farming = {
                makes_listener_tends_to_plants = true,
                tend_radius = 16
            }
        },

        strings = {
            name = "Cassette: \"A hoes mixtape\"",
            recipe_description = "A mixtape made by Luke that increases ones farming ability.",
            describe = {
                generic = "Its covered in dirt.",
                luke = "I don't farm much but if I did I'd use this."
            }
        }
    }
end

table.insert(TUNING.LUKE.Mixtapes, GetMixtape())
