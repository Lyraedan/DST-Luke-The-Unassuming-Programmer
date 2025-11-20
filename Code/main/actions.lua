local STRINGS = GLOBAL.STRINGS
local ACTIONS = GLOBAL.ACTIONS

---Actions
---@param data table|nil
---@param id string
---@param str string|function
---@param fn function
---@param wilsonAction string|nil
---@param wilsonClientAction string|nil
local function AddAction(data, id, str, fn, wilsonAction, wilsonClientAction)
    local action = GLOBAL.Action(data)
    action.id = id
    local oldActionStr
    if type(str) == "function" then
        -- action.stroverridefn = str
        action.strfn = str
        oldActionStr = STRINGS.ACTIONS[string.upper(id)]
    else
        action.str = str
    end

    action.fn = fn
    env.AddAction(action)
    STRINGS.ACTIONS[string.upper(id)] = oldActionStr or STRINGS.ACTIONS[string.upper(id)]

    if wilsonAction then
        env.AddStategraphActionHandler("wilson", ActionHandler(action, wilsonAction))
    end
    wilsonClientAction = wilsonClientAction or wilsonAction
    if wilsonClientAction then
        env.AddStategraphActionHandler("wilson_client", ActionHandler(action, wilsonClientAction))
    end
    return action
end

AddAction(
    {instant = true, invalid_hold_action = true},
    "PLAYCASSETTE",
    STRINGS.ACTIONS.PLAYCASSETTE,
    function(act)
        --if not IsMadMita(act.doer) then return end
        local cassette = act.target or act.invobject
        if cassette and cassette:HasTag("cassette") and cassette:HasTag("enabled") then
            cassette:UseCassette(cassette, "play")
            return true
        end
    end
)

AddAction(
    {instant = true, invalid_hold_action = true},
    "STOPCASSETTE",
    STRINGS.ACTIONS.REMOVERECORD,
    function(act)
        --if not IsMadMita(act.doer) then return end
        local cassette = act.target or act.invobject
        if cassette and cassette:HasTag("cassette") and cassette:HasTag("enabled") then
            cassette:UseCassette(cassette, "stop")
            return true
        end
    end
)