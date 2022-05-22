﻿-----------------------------------------------------------------------------------------------------------------
--[[ Class colors in target name background ]] --
local frame = CreateFrame("FRAME")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("PARTY_MEMBERS_CHANGED")
frame:RegisterEvent("PLAYER_TARGET_CHANGED")
frame:RegisterEvent("PLAYER_FOCUS_CHANGED")
frame:RegisterEvent("UNIT_FACTION")
frame:RegisterEvent("ARENA_OPPONENT_UPDATE")

local function eventHandler(self, event, ...)
    local unitid = ...

    if (event == "UNIT_FACTION" and unitid ~= "target" and unitid ~= "focus") then
        return
    end

    if UnitIsPlayer("target") then
        _, class = UnitClass("target")
        c = RAID_CLASS_COLORS[class]
        TargetFrameNameBackground:SetVertexColor(c.r, c.g, c.b)
    end
    if UnitIsPlayer("focus") then
        _, class = UnitClass("focus")
        c = RAID_CLASS_COLORS[class]
        FocusFrameNameBackground:SetVertexColor(c.r, c.g, c.b)
    end
end

local bar, color
for i = 1, 5 do
    bar = _G["ArenaEnemyFrame" .. i .. "HealthBar"]
    color = RAID_CLASS_COLORS[select(2, UnitClass("arena" .. i))]
    if color then
        bar:SetStatusBarColor(color.r, color.g, color.b)
    end
end

frame:SetScript("OnEvent", eventHandler)

-- Brighter targetname and focusname textures (fix)

for _, BarTextures in pairs({TargetFrameNameBackground, FocusFrameNameBackground}) do
    BarTextures:SetTexture("Interface\\TargetingFrame\\UI-StatusBar")
end
-----------------------------------------------------------------------------------------------------------------	
