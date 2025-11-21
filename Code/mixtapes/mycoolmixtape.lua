local function GetMixtape()
    return {
        title = "Luke's cool mixtape",

        craftable = true,
        recipe = {
            ingredients = {
                GLOBAL.Ingredient("silk", 3),
            },
            tech_type = GLOBAL.TECH.NONE,
            inventory = {
                xml = "images/inventoryimages/cassette.xml",
                tex = "cassette.tex",
            },
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
