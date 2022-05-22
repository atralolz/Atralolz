	--[[ Переместить каст бар игрока ]]--                              
	CastingBarFrame:ClearAllPoints()
	CastingBarFrame:SetPoint("CENTER", WorldFrame, "CENTER", 0, -140)
	CastingBarFrame.SetPoint = function() end
	CastingBarFrame:SetScale(1.5)

	--[[ Переместить каст бар цели ]]--
	TargetFrameSpellBar:ClearAllPoints()
	TargetFrameSpellBar:SetPoint("CENTER", UIParent, "CENTER", 0, 85)
	TargetFrameSpellBar.SetPoint = function() end
	TargetFrameSpellBar:SetScale(1.4)

	--[[ Переместить каст бар фокуса ]]--
	FocusFrameSpellBar:ClearAllPoints()
	FocusFrameSpellBar:SetPoint("CENTER", UIParent, "CENTER", 0, 125)
	FocusFrameSpellBar.SetPoint = function() end
	FocusFrameSpellBar:SetScale(1.4)
	
	FocusFrameSpellBar:SetStatusBarColor(0,0.45,0.9)  -- Casting bar color
	FocusFrameSpellBar.SetStatusBarColor = function() end

	--[[ Переместить фрейм игрока, цели и фокуса ]]--
local a = CreateFrame("Frame")
a:SetScript("OnEvent", function(self, event)
	if event == "PLAYER_ENTERING_WORLD" then

	PlayerFrame:ClearAllPoints() -- PlayerFrame move
	PlayerFrame:SetPoint("TOPLEFT",UIParent,"TOPLEFT", 250, -337)

	TargetFrame:ClearAllPoints() -- TargetFrame move
	TargetFrame:SetPoint("TOPLEFT",UIParent,"TOPLEFT", 350, -380)

	FocusFrame:ClearAllPoints() -- FocusFrame move
	FocusFrame:SetPoint("TOPLEFT",UIParent,"TOPLEFT", 900, -480)
	end
end)
a:RegisterEvent("PLAYER_ENTERING_WORLD")
--