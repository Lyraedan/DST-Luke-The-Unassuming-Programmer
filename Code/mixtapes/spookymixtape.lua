local function GetMixtape()
    return {
        title = "Spooky mixtape",

        prefab = {
            asset = {
                anim = "anim/cassette_spooky.zip",
                atlas = "images/inventoryimages/cassette_spooky.xml",
                image = "images/inventoryimages/cassette_spooky.tex",
            },

            inventoryitem = {
                imagename = "cassette_spooky",
                atlasname = "images/inventoryimages/cassette_spooky.xml",
                sinks = true
            },

            animstate = {
                bank = "cassette_spooky",
                build = "cassette_spooky",
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
                atlas = "images/inventoryimages/cassette_spooky.xml",
                image = "cassette_spooky.tex",
            }
        },

        songs = {
            "dontstarve/music/gramaphone_hallowednights"
        },

        effects = {
            farming = {
                tends_to_plants = true,
                tend_radius = 8
            }
        },

        strings = {
            name = "Cassette: \"Spooky mixtape\"",
            recipe_description = "A spooky mixtape made by Luke.",
            describe = {
                generic = "This cassette makes me feel uneasy.",
                luke = "One of my more spookier tapes."
            }
        }
    }
end

table.insert(TUNING.LUKE.Mixtapes, GetMixtape())
