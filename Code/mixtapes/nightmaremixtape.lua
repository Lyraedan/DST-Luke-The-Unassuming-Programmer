local function GetMixtape()
    return {
        title = "Nightmare mixtape",

        prefab = {
            asset = {
                anim = "anim/cassette.zip",
                atlas = "images/inventoryimages/cassette.xml",
                image = "images/inventoryimages/cassette.tex",
            },

            inventoryitem = {
                imagename = "cassette",
                atlasname = "images/inventoryimages/cassette.xml",
                sinks = true
            },

            animstate = {
                bank = "cassette",
                build = "cassette",
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
                    GLOBAL.Ingredient("gramaphone", 1)
                },
                tech_type = GLOBAL.TECH.NONE,
                crafting_icon = {
                    atlas = "images/inventoryimages/cassette.xml",
                    image = "cassette.tex",
                },
            }
        },

        songs = {
            "dontstarve/music/gramaphone_ragtime",
            "dontstarve/music/gramaphone_drstyle",
            "dontstarve/music/gramaphone_efs",
            "dontstarve/music/gramaphone_creepyforest"
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
