-----------------------------------------------------------------------------------------------------------------
--[[ CombatChecker/иконка комбата для врагов ]] --
LoadAddOn("Blizzard_ArenaUI")

local CTT = CreateFrame("Frame", nil, TargetFrame) -- TargetFrame Combat Checker
CTT:SetPoint("CENTER", TargetFrame, "CENTER", 40, -10)

local CFT = CreateFrame("Frame", nil, FocusFrame) -- FocusFrame Combat Checker
CFT:SetPoint("CENTER", FocusFrame, "CENTER", 40, -10)

local frames = {
    target = {CTT, "PLAYER_TARGET_CHANGED"},
    focus = {CFT, "PLAYER_FOCUS_CHANGED"}
}

for k, v in pairs(frames) do
    local f = v[1]
    f:SetSize(20, 20)
    f:SetScale(1.6)
    f.t = f:CreateTexture(nil, "BORDER")
    f.t:SetAllPoints()
    f.t:SetTexture("Interface\\CHARACTERFRAME\\UI-StateIcon.blp")
    f.t:SetTexCoord(0.5, 1, 0, 0.49);
    f:Hide()

    f:SetScript("OnEvent", function(self, event, unit)
        if unit == k or event == v[2] then
            self[UnitAffectingCombat(k) and "Show" or "Hide"](self)
        end
    end)

    f:RegisterEvent("UNIT_FLAGS")
    f:RegisterEvent("PLAYER_TARGET_CHANGED")
    f:RegisterEvent("PLAYER_FOCUS_CHANGED")
end
-----------------------------------------------------------------------------------------------------------------
