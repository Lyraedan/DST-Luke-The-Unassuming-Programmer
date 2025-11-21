local function GetMixtape()
    return {
        title = "Nightmare mixtape",

        prefab = {
            asset = {
                anim = "anim/cassette_nightmare.zip",
                atlas = "images/inventoryimages/cassette_nightmare.xml",
                image = "images/inventoryimages/cassette_nightmare.tex",
            },

            inventoryitem = {
                imagename = "cassette_nightmare",
                atlasname = "images/inventoryimages/cassette_nightmare.xml",
                sinks = true
            },

            animstate = {
                bank = "cassette_nightmare",
                build = "cassette_nightmare",
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
                    GLOBAL.Ingredient("nightmarefuel", 4),
                    GLOBAL.Ingredient("phonograph", 1),
                    GLOBAL.Ingredient("silk", 1)
                },
                tech_type = GLOBAL.TECH.NONE
            },
            crafting_icon = {
                atlas = "images/inventoryimages/cassette_nightmare.xml",
                image = "cassette_nightmare.tex",
            }
        },

        songs = {
            "dontstarve/music/gramaphone_ragtime",
            "dontstarve/music/gramaphone_drstyle",
            "dontstarve/music/gramaphone_efs",
            "dontstarve/music/gramaphone_creepyforest"
        },

        effects = {
            farming = {
                tends_to_plants = true,
                tend_radius = 8
            }
        },

        strings = {
            name = "Cassette: \"Nightmare mixtape\"",
            recipe_description = "A mixtape of nightmares!",
            describe = {
                generic = "It has a picture of a Gramophone on it.",
                luke = "Ahhh the mixtape of nightmares."
            }
        }
    }
end

table.insert(TUNING.LUKE.Mixtapes, GetMixtape())
