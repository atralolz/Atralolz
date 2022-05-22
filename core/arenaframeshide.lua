--------------------------------------------------------------------------------
-- arenaframeshide
--------------------------------------------------------------------------------
--[[ Hide new location text ]] --
ZoneTextFrame:UnregisterAllEvents()
ZoneTextFrame:SetScript("OnShow", function()
    this:Hide()
end)
ZoneTextFrame:Hide()
SubZoneTextFrame:UnregisterAllEvents()
SubZoneTextFrame:SetScript("OnShow", function()
    this:Hide()
end)
SubZoneTextFrame:Hide()

local size = 38
local spacing = 5

local holder = CreateFrame("Frame", "MainMenuBarHolderFrame", UIParent, "SecureHandlerStateTemplate")
holder:SetSize(size * 12 + spacing * 11, size)
holder:SetPoint("BOTTOM", UIParent, 0, 22)
holder:RegisterEvent("PLAYER_ENTERING_WORLD")
holder:SetScript("OnEvent", function()
    ActionButton1:ClearAllPoints()
    ActionButton1:SetPoint("BOTTOMLEFT", holder, -5, 0)

    MultiBarBottomLeftButton1:ClearAllPoints()
    MultiBarBottomLeftButton1:SetPoint("BOTTOMLEFT", ActionButton1, "TOPLEFT", 0, 5)

    MultiBarBottomRightButton1:ClearAllPoints()
    MultiBarBottomRightButton1:SetPoint("BOTTOMLEFT", MultiBarBottomLeftButton1, "TOPLEFT", 0, 6)

    MultiBarBottomRightButton7:ClearAllPoints()
    MultiBarBottomRightButton7:SetPoint("BOTTOMLEFT", MultiBarBottomLeftButton7, "TOPLEFT", 0, 6)

    StanceBarFrame:ClearAllPoints();
    StanceBarFrame:SetMovable(true);
    StanceBarFrame:SetUserPlaced(true);
    StanceBarFrame:SetPoint("BOTTOMLEFT", MultiBarBottomRightButton1, "TOPLEFT", 10, 6);

    PetActionButton1:ClearAllPoints()
    PetActionButton1:SetPoint("BOTTOMLEFT", MultiBarBottomRightButton1, "TOPLEFT", 25, 6)

    PossessButton1:ClearAllPoints()
    PossessButton1:SetPoint("BOTTOMLEFT", MultiBarBottomRightButton1, "TOPLEFT", 25, 30)
end)

-- print("test")
