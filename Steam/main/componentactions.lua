
AddComponentAction("INVENTORY", "cassette",function(inst, doer, actions, right)
    --if not IsMadMita(doer) then return end
    
    if inst:HasTag("cassette") and inst:HasTag("enabled") then
        if inst:HasTag("isPlaying") then
            table.insert(actions, GLOBAL.ACTIONS.STOPCASSETTE)
        else
            table.insert(actions, GLOBAL.ACTIONS.PLAYCASSETTE)
        end
    end
end)