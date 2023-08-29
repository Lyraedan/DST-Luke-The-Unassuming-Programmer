local intimidating_x = -215
local intimidating_y = 176
local unintimidating_x = -120
local unintimidating_y = 176
local affinity_x = 225
local affinity_y = 176
local affinity_x = 0
local affinity_y = 0

local ORDERS =
{
    {"intimidating",           { -215+18   , 176 + 30 }},
    {"unintimidating",         { -62       , 176 + 30 }},
    -- {"grime",                  { -62       , 176 + 30 }},
}

--------------------------------------------------------------------------------------------------

local function BuildSkillsData(SkillTreeFns)
    local skills = 
    {
        -- Intimidating
        luke_intimidating_1 = {
            title = "Intimidating I",
            desc = "You gain sanity at maximum fear.",
            icon = "skill_intimidating_1",
            pos = {intimidating_x, intimidating_y},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                    
            end,
            root = true,
            connects = {
                "luke_intimidating_2",
            },
        },

        luke_intimidating_2 = {
            title = "Intimidating II",
            desc = "You deal much more damage at maximum fear",
            icon = "skill_intimidating_1",
            pos = {intimidating_x+60, intimidating_y},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "luke_intimidating_3"
            }
        },

        luke_intimidating_3 = {
            title = "Intimidating III",
            desc = "You gain a small amount of fear when you deal damage",
            icon = "skill_intimidating_1",
            pos = {intimidating_x+60, intimidating_y-40},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end
        },

        luke_intimidating_lock = {
            pos = {intimidating_x+10, intimidating_y-40},
            group = "intimidating",
            tags = {"intimidating"},
            lock_open = function(prefabname, activatedskills, readonly)
                return SkillTreeFns.CountTags(prefabname, "unintimidating", activatedskills) < 4 and SkillTreeFns.CountTags(prefabname, "intimidating", activatedskills) == 3
            end,
            connects = {
                "luke_intimidating_4"
            }
        },

        luke_intimidating_4 = {
            title = "Intimidating IV",
            desc = "You gain a small amount of fear when you deal damage",
            icon = "skill_intimidating_1",
            pos = {intimidating_x, intimidating_y-80},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "luke_intimidating_5"
            }
        },

        luke_intimidating_5 = {
            title = "Intimidating V",
            desc = "Fear drains slower",
            icon = "skill_intimidating_1",
            pos = {intimidating_x+60, intimidating_y-80},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "luke_intimidating_6"
            }
        },

        luke_intimidating_6 = {
            title = "Intimidating VI",
            desc = "Charlie will not attack you at maximum fear",
            icon = "skill_intimidating_1",
            pos = {intimidating_x+60, intimidating_y-120},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "luke_master_intimidating_1"
            }
        },

        luke_master_intimidating_1 = {
            title = "Intimidating Mastery I",
            desc = "You do not lose fear while scaring nearby survivors",
            icon = "skill_intimidating_1",
            pos = {intimidating_x, intimidating_y-120},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "luke_master_intimidating_1"
            }
        },

        luke_master_intimidating_2 = {
            title = "Intimidating Mastery II",
            desc = "You scare nearby creatures",
            icon = "skill_intimidating_1",
            pos = {intimidating_x, intimidating_y-160},
            group = "intimidating",
            tags = {"intimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "luke_master_intimidating_1"
            }
        },

        -- Unintimidating
        luke_unintimidating_lock = {
            pos = {unintimidating_x, unintimidating_y},
            group = "unintimidating",
            tags = {"unintimidating"},
            lock_open = function(prefabname, activatedskills, readonly)
                return SkillTreeFns.CountTags(prefabname, "intimidating", activatedskills) < 4
            end,
            root = true,
            connects = {
                "luke_unintimidating_1",
            }
        },

        -- Row 1
        luke_unintimidating_1 = {
            title = "Unintimidating",
            desc = "Makes Luke even less intimidating",
            icon = "wilson_torch_time_1",
            pos = {unintimidating_x, unintimidating_y-52},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
            connects = {
                "luke_unintimidating_2",
            }
        },

        luke_unintimidating_2 = {
            title = "Safe Aura",
            desc = "Luke gains reduced fear from kills",
            icon = "wilson_torch_time_2",
            pos = {unintimidating_x, unintimidating_y-104},
            group = "unintimidating",
            tags = {"unintimidating"},
            onactivate = function(inst, fromload)
                
            end,
        },

    }

    return {
        SKILLS = skills,
        ORDERS = ORDERS,
    }
end

--------------------------------------------------------------------------------------------------

return BuildSkillsData