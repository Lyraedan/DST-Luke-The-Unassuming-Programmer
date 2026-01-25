local function GetMixtape()
    return {
        title = "A gamblers mixtape",
        id = "cassette_balatro",

        prefab = {
            asset = {
                anim = "anim/cassette_balatro.zip",
                atlas = "images/inventoryimages/cassette_balatro.xml",
                image = "images/inventoryimages/cassette_balatro.tex",
            },

            inventoryitem = {
                imagename = "cassette_balatro",
                atlasname = "images/inventoryimages/cassette_balatro.xml",
                sinks = true
            },

            animstate = {
                bank = "cassette_balatro",
                build = "cassette_balatro",
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
                    GLOBAL.Ingredient("goldnugget", 1),
                    GLOBAL.Ingredient("silk", 1)
                },
                tech_type = GLOBAL.TECH.NONE
            },
            crafting_icon = {
                atlas = "images/inventoryimages/cassette_balatro.xml",
                image = "cassette_balatro.tex",
            }
        },

        songs = {
            "dontstarve/music/music_FE_balatro"
        },

        effects = { },

        strings = {
            name = "Cassette: \"A gamblers mixtape\"",
            recipe_description = "A mixtape made by Luke. It's oddly familiar.",
            describe = {
                generic = "It has a picture of a jester hat on it?",
                luke = "It's like gambling but not really."
            }
        }
    }
end

table.insert(TUNING.LUKE.Mixtapes, GetMixtape())
