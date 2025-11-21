local function GetMixtape()
    return {
        title = "Spooky mixtape",

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
