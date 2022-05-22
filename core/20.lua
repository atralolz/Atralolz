--[[ Raid Frame Twiks/����������� ���������� ��������� ��������� ������ � ������ � ����������� �������� ���������� ]] --
local n, w, h = "CompactUnitFrameProfilesGeneralOptionsFrame"
h, w = _G[n .. "HeightSlider"], _G[n .. "WidthSlider"]
h:SetMinMaxValues(1, 200)
w:SetMinMaxValues(1, 400)

-- ������ ���������� ����� �����, ���� ���� �� �� � ������
--[[
local noop = function() end
for _, v in ipairs({CompactRaidFrameManager, CompactRaidFrameContainer}) do
 v.UnregisterAllEvents = noop
 v.UnregisterEvent = noop
 v.Hide = noop
 v:Show()
end
]] -- 
