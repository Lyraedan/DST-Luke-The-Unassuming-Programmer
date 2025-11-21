local function GetMixtape()
    return {
        title = "Spooky mixtape",

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
                    GLOBAL.Ingredient("silk", 3),
                },
                tech_type = GLOBAL.TECH.NONE,
                crafting_icon = {
                    atlas = "images/inventoryimages/cassette.xml",
                    image = "cassette.tex",
                },
            }
        },

        songs = {
            "dontstarve/music/gramaphone_hallowednights"
        },

        strings = {
            name = "Cassette: \"Spooky mixtape\"",
            recipe_description = "A spooky mixtape made by Luke.",
            generic_describe = "This cassette makes me feel uneasy.", -- Generic character description
            luke_describe = "One of my more spookier tapes." -- Lukes unique description
        }
    }
end

table.insert(TUNING.LUKE.Mixtapes, GetMixtape())
