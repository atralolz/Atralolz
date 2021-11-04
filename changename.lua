--Change player name
local frame = CreateFrame("FRAME", "NameChangeScripts")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
local function eventHandler(self, event, ...)
NewName = "Atralolz"
PN = GetUnitName("player")
PFNC = CreateFrame("Frame", "PlayerFrameNameChange")
local function ChangePlayerName(self)
PlayerFrame.name:SetText(NewName)
end
PFNC:SetScript("OnUpdate", ChangePlayerName)
TFNC = CreateFrame("Frame", "TargetFrameNameChange")
local function ChangeTargetName(self)
local TN = GetUnitName("target")
if PN == TN then
TargetFrame.name:SetText(NewName)
end
end
TFNC:SetScript("OnUpdate", ChangeTargetName)
TFTNC = CreateFrame("Frame", "TargetFrameTargetNameChange")
local function ChangeTargetofTargetName(self)
local TTN = GetUnitName("targettarget")
if PN == TTN then
TargetFrameToT.name:SetText(NewName)
end
end
TFTNC:SetScript("OnUpdate", ChangeTargetofTargetName)
FFNC = CreateFrame("Frame", "FocusFrameNameChange")
local function ChangeFocusName(self)
local FN = GetUnitName("focus")
if PN == FN then
FocusFrame.name:SetText(NewName)
end
end
FFNC:SetScript("OnUpdate", ChangeFocusName)
FFTNC = CreateFrame("Frame", "FocusFrameTargetNameChange")
local function ChangeFocusTargetName(self)
local FTN = GetUnitName("focustarget")
if PN == FTN then
FocusFrameToT.name:SetText(NewName)
end
end
FFTNC:SetScript("OnUpdate", ChangeFocusTargetName)
end
frame:SetScript("OnEvent", eventHandler)
