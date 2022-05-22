	--[[ Запятые в комбат-тексте и скрытие создателя на предмете ]]--
	LARGE_NUMBER_SEPERATOR = ","
	ITEM_CREATED_BY = "" 
 
	--[[ Hide frameflashred ]]--
	PlayerFrameFlash:Hide(); 	
	PlayerFrameFlash.Show = function() end
	
	TargetFrameFlash:Hide(); 	
	TargetFrameFlash.Show = function() end
	
	FocusFrameFlash:Hide(); 	
	FocusFrameFlash.Show = function() end

	--[[ Disable healing/damage spam over player/pet frame ]]--
	PlayerHitIndicator:SetText(nil)
	PlayerHitIndicator.SetText = function() end

	PetHitIndicator:SetText(nil)
	PetHitIndicator.SetText = function() end

	--
	UIErrorsFrame:SetAlpha(0)
	--

	--[[ honorbar ]]--
	local b=HonorWatchBar b:UnregisterAllEvents() b:Hide() b.Show=b.Hide

	--[[ artibar ]]--
	local b=ArtifactWatchBar b:UnregisterAllEvents() b:Hide() b.Show=b.Hide

	--[[ raidframerealmnamehide ]]--
	local known = {}
	local function update()
	local i, button = 1
	repeat
	button = _G["CompactRaidFrame"..i]
	if button and not known[button] then
	known[button] = true
	button.name:SetHeight(6)
	end
	i=i+1
	until not button
	end
	local f = CreateFrame("Frame")
	f:SetScript("OnEvent",update)
	f:RegisterEvent("PLAYER_LOGIN")
	hooksecurefunc("CompactUnitFrame_SetUnit",function(frame, unit)
	frame.name:SetHeight(6)
	end)

	--[[ Скрывает имя группы сверху плеернейма ]]--
	PlayerFrameGroupIndicator:Hide();	
	PlayerFrameGroupIndicator.Show = function() return end

	--[[ PetActionBar Hide ]]--
	PetActionBarFrame:Hide();	
	PetActionBarFrame.Show = function() end

	--[[ Cкрывает надпись по середине экрана при переходе в локацию ]]--
	ZoneTextFrame:UnregisterAllEvents()
	ZoneTextFrame:SetScript("OnShow", function() this:Hide() end)
	ZoneTextFrame:Hide()
	SubZoneTextFrame:UnregisterAllEvents()
	SubZoneTextFrame:SetScript("OnShow", function() this:Hide() end)
	SubZoneTextFrame:Hide()

	--[[ Cкрыть фигню со значка уровня ]]--
	hooksecurefunc("PlayerFrame_UpdateStatus", function() 
		PlayerStatusTexture:Hide()
		PlayerRestIcon:Hide()
		PlayerRestGlow:Hide()
		PlayerStatusGlow:Hide() 
		PlayerAttackGlow:Hide()
		PlayerAttackBackground:Hide() 	
	end)

	--[[ Скрыть панель стоек ]]--
	StanceBarFrame:Hide();	
	StanceBarFrame.Show = function() end


	--[[ hide tutorial buttons ]]--
	WorldMapFrameTutorialButton:Hide();
	WorldMapFrameTutorialButton.Show = function() end

	SpellBookFrameTutorialButton:Hide();	
	SpellBookFrameTutorialButton.Show = function() end
	
	--[[ Hide all unwanted things ]]--
	MinimapZoomIn:Hide()	
	MinimapZoomIn:UnregisterAllEvents()

	MinimapZoomOut:Hide()	
	MinimapZoomOut:UnregisterAllEvents()

	--[[ Hide PvP icon/Скрыть иконку PvP ]]--
	PlayerPVPIcon:SetAlpha(0)                      
	TargetFrameTextureFramePVPIcon:SetAlpha(0)
	FocusFrameTextureFramePVPIcon:SetAlpha(0)
	
	--[[ Extra slash commands:
	- /clc - clear combat log
	- /gm - open a GM ticket
	- /rc - readycheck
	- /cr - check role 																		]]--
	SlashCmdList["CLCE"] = function() CombatLogClearEntries() end
	SLASH_CLCE1 = "/clc"

	SlashCmdList["TICKET"] = function() ToggleHelpFrame() end
	SLASH_TICKET1 = "/gm"

	SlashCmdList["READYCHECK"] = function() DoReadyCheck() end
	SLASH_READYCHECK1 = '/rc'

	SlashCmdList["CHECKROLE"] = function() InitiateRolePoll() end
	SLASH_CHECKROLE1 = '/cr'
