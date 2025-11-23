local function GetMixtape()
    return {
        title = "A big bad mixtape",
        id = "cassette_boss",

        prefab = {
            asset = {
                anim = "anim/cassette_boss.zip",
                atlas = "images/inventoryimages/cassette_boss.xml",
                image = "images/inventoryimages/cassette_boss.tex",
            },

            inventoryitem = {
                imagename = "cassette_boss",
                atlasname = "images/inventoryimages/cassette_boss.xml",
                sinks = true
            },

            animstate = {
                bank = "cassette_boss",
                build = "cassette_boss",
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
                    GLOBAL.Ingredient("deerclops_eyeball", 1),
                    GLOBAL.Ingredient("silk", 1)
                },
                tech_type = GLOBAL.TECH.NONE
            },
            crafting_icon = {
                atlas = "images/inventoryimages/cassette_boss.xml",
                image = "cassette_boss.tex",
            }
        },

        songs = {
            "dontstarve/music/gramaphone_efs"
        },

        effects = {
            efficiency = {
                makes_listener_efficient = true,
                chop = 1,
                mine = 1,
                hammer = 1,
                attack = 2 -- Double your attack efficiency
            }
        },

        strings = {
            name = "Cassette: \"A big bad mixtape\"",
            recipe_description = "A mixtape made by Luke it was forged from bosses",
            describe = {
                generic = "Its a little bit slimy.",
                luke = "I feel its power already!"
            }
        }
    }
end

table.insert(TUNING.LUKE.Mixtapes, GetMixtape())
