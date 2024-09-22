local bots = workspace.bots
local botsPart = {
    ["bot"]="humanoid";
    ["HumanoidRootPart,collision,hitbox"]="part"
}

--PrimaryPart:HumanoidRootPart

local LPLR = game.Players.LocalPlayer
local Info = {}

local function waitForChild(parent,name)
    parent:waitForChild(name)
    return parent:FindFirstChild(name)
end

local function findFirstChild(parent, name)
    if parent:FindFirstChild(name) then
        return parent[name]
    else
        return nil
    end
end

local function getValueOf(obj)
    return tonumber(obj.Value)
end

local options = waitForChild(game.Players.LocalPlayer, "options")
local graphics, hud = waitForChild(options, "Graphics"), waitForChild(options, "HUD")
local graphs_stats = {
    ["bobbing"] = {
        ["value"] = getValueOf(waitForChild(graphics, "bobbing")),
        ["path"] = waitForChild(graphics, "bobbing")
    },
    ["disable_particles"] = {
        ["value"] = getValueOf(waitForChild(graphics, "disableparticles")),
        ["path"] = waitForChild(graphics, "disableparticles")
    },
    ["disable_sprays"] = {
        ["value"] = getValueOf(waitForChild(graphics, "disablesprays")),
        ["path"] = waitForChild(graphics, "disablesprays")
    },
    ["depth_of_field"] = {
        ["value"] = getValueOf(waitForChild(graphics, "dof")),
        ["path"] = waitForChild(graphics, "dof")
    },
    ["fov"] = {
        ["value"] = getValueOf(waitForChild(graphics, "fov")),
        ["path"] = waitForChild(graphics, "fov")
    },
    ["body"] = {
        ["firstperson"] = {
            ["value"] = getValueOf(waitForChild(graphics, "fp")),
            ["path"] = waitForChild(graphics, "fp")
        },
        ["firstpersonbody"] = {
            ["value"] = getValueOf(waitForChild(graphics, "fpbody")),
            ["path"] = waitForChild(graphics, "fpbody")
        }
    },
    ["shadow_textures"] = {
        ["value1"] = getValueOf(waitForChild(graphics, "shadows")),
        ["value2"] = getValueOf(waitForChild(graphics, "textures")),
        ["path1"] = waitForChild(graphics, "textures"),
        ["path2"] = getValueOf(waitForChild(graphics, "textures"))
    }
}

local hud_stats = {
    ["heartbeat"] = {
        ["value"] = getValueOf(waitForChild(hud, "heartbeat")),
        ["path"] = waitForChild(hud, "heartbeat")
    },
    ["hudscale"] = {
        ["value"] = getValueOf(waitForChild(hud, "hudscale")),
        ["path"] = waitForChild(hud, "hudscale")
    },
    ["killfeed"] = {
        ["value"] = getValueOf(waitForChild(hud, "killfeed")),
        ["path"] = waitForChild(hud, "killfeed")
    },
    ["static_chase"] = {
        ["value"] = getValueOf(waitForChild(hud, "scary")),
        ["path"] = waitForChild(hud, "scary")
    }
}



return {
    graphs_stats,
    hud_stats,
    extraFunctions = {
        waitForChild, findFirstChild, getValueOf, bots
    }
}
