local function GetMixtape()
    return {
        title = "Spooky mixtape",

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
        }
    }
end

table.insert(TUNING.LUKE.Mixtapes, GetMixtape())
