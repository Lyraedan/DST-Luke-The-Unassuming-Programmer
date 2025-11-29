local function GetMixtape()
    return {
        title = "A workers mixtape",
        id = "cassette_worker",

        prefab = {
            asset = {
                anim = "anim/cassette_worker.zip",
                atlas = "images/inventoryimages/cassette_worker.xml",
                image = "images/inventoryimages/cassette_worker.tex",
            },

            inventoryitem = {
                imagename = "cassette_worker",
                atlasname = "images/inventoryimages/cassette_worker.xml",
                sinks = true
            },

            animstate = {
                bank = "cassette_worker",
                build = "cassette_worker",
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
                    GLOBAL.Ingredient("pickaxe", 1),
                    GLOBAL.Ingredient("axe", 1),
                    GLOBAL.Ingredient("hammer", 1),
                    GLOBAL.Ingredient("silk", 1)
                },
                tech_type = GLOBAL.TECH.NONE
            },
            crafting_icon = {
                atlas = "images/inventoryimages/cassette_worker.xml",
                image = "cassette_worker.tex",
            }
        },

        songs = {
            "dontstarve/music/gramaphone_drstyle"
        },

        effects = {
            -- 10% increase
            worker = {
                makes_listener_worker = true,
                chop = 1.1,
                mine = 1.1,
                hammer = 1.1
            }
        },

        strings = {
            name = "Cassette: \"A workers mixtape\"",
            recipe_description = "A mixtape made by Luke that increases ones farming ability.",
            describe = {
                generic = "It looks beaten up.",
                luke = "This'll make me more productive."
            }
        }
    }
end

table.insert(TUNING.LUKE.Mixtapes, GetMixtape())
