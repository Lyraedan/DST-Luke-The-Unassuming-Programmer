local function GetMixtape()
    return {
        title = "Ragtime mixtape",
        id = "cassette_nightmare",

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
                    GLOBAL.Ingredient("nightmarefuel", 1),
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
            "dontstarve/music/gramaphone_ragtime"
        },

        effects = { },

        strings = {
            name = "Cassette: \"Ragtime mixtape\"",
            recipe_description = "A mixtape of raggest of times!",
            describe = {
                generic = "It has a picture of a Gramophone on it.",
                luke = "Poor Wilson."
            }
        }
    }
end

table.insert(TUNING.LUKE.Mixtapes, GetMixtape())
