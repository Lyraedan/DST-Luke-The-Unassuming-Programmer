local function GetMixtape()
    return {
        title = "Luke's cool mixtape",

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
            "dontstarve/music/gramaphone_ragtime"
        },

        strings = {
            name = "Cassette: \"Luke's cool mixtape\"",
            recipe_description = "A cool mixtape made by Luke.",
            generic_describe = "It doesn't look all too fancy.", -- Generic character description
            luke_describe = "This is one of my cool mixtapes." -- Lukes unique description
        }
    }
end

table.insert(TUNING.LUKE.Mixtapes, GetMixtape())
