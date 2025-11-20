local function GetMixtape()
    return {
        mixtape_name = "My cool mixtape",

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

        id = 0
    }
end

table.insert(TUNING.LUKE.Mixtapes, GetMixtape())
