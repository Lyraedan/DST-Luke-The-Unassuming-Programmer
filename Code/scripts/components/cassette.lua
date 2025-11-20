local Cassette = Class(function(self, inst)
    self.inst = inst
    self.mixtape_id = nil
    self.mixtape_data = nil
end)

function Cassette:GetRandomTape(useNone)
    if useNone then 
        return "none" 
    end

    local mixtape = self.mixtape_data
    if mixtape and mixtape.songs then
        return mixtape.songs[math.random(#mixtape.songs)]
    end

    return "none"
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
    local data = {}
    data.mixtape_id = self.mixtape_id
    return data
end

function Cassette:OnLoad(data)
    if data and data.mixtape_id then
        self.mixtape_id = data.mixtape_id
        self.mixtape_data = GLOBAL.LUKE.Mixtapes[self.mixtape_id]
        self.inst.mixtape_id = data.mixtape_id
        self.inst.mixtape_data = self.mixtape_data
    end
end

return Cassette
