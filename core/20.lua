--[[ Raid Frame Twiks/Увеличиваем допустимые настройки изменения ширины и высоты в стандартном рейдовом интерфейсе ]]--
local n,w,h="CompactUnitFrameProfilesGeneralOptionsFrame" h,w = _G[n.."HeightSlider"], _G[n.."WidthSlider"] 
h:SetMinMaxValues(1,200) 
w:SetMinMaxValues(1,400)

-- Скрипт показывает фрейм рейда, даже если вы не в группе
--[[
local noop = function() end
for _, v in ipairs({CompactRaidFrameManager, CompactRaidFrameContainer}) do
 v.UnregisterAllEvents = noop
 v.UnregisterEvent = noop
 v.Hide = noop
 v:Show()
end
]]--