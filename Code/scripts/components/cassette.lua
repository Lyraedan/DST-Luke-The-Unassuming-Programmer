local Cassette = Class(function(self, inst)
    self.inst = inst
end)

local mixtape = 
{
    "dontstarve/music/gramaphone_ragtime"
}

function Cassette:GetRandomTape(useNone)
    if useNone == true then
        return "none"
    end

    -- Eventually make this query a json
    return mixtape[1]
end

function Cassette:UseCassette(doer, mode)
    local tape = self:GetRandomTape(mode == "stop")

    TheWorld:PushEvent("ms_playerusedcassette", {
        cassette = self.inst,
        selected_tape = tape,
        player = doer,
        mode = mode
    })

    return true
end

function Cassette:OnSave()
    
end

function Cassette:OnLoad(data)
    
end

return Cassette
