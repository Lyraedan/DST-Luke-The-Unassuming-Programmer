local params = require("containers").params
local Vector3 = GLOBAL.Vector3
local STRINGS = GLOBAL.STRINGS
local ACTIONS = GLOBAL.ACTIONS

params.cassette_player =
{
    widget =
    {
        -- slotpos = {Vector3(0, 75 * 2, 0)},
        slotpos = {},
        animbank = "ui_chest_3x3",
        animbuild = "ui_chest_3x3",
        pos = Vector3(0, -150, 0),
        side_align_tip = 160
    },
    type = "cassette_player",
}

for y = 2, 0, -1 do
    for x = 0, 2 do
        table.insert(params.cassette_player.widget.slotpos, Vector3(75 * (x-1), 75 * (y-1), 0))
    end
end

function params.cassette_player.itemtestfn(container, item, slot)
    return item:HasTag("cassette")
end