	--[[ Moving action bars/Переместить панели экшен бара ]]--
	local a = CreateFrame("Frame")
	a:SetScript("OnEvent", function(self, event)
	if event == "PLAYER_ENTERING_WORLD" then
	
		MultiBarBottomLeft:ClearAllPoints()
		MultiBarBottomLeft:SetPoint("BOTTOMLEFT", ActionButton1, "TOPLEFT", 0, 6)
		MultiBarBottomLeft.SetPoint = function() end

		MainMenuBar:ClearAllPoints()
		MainMenuBar:SetPoint("BOTTOM",255,10)
		MainMenuBar.SetPoint = function() end

	--[[ Exp bar ]]--
		for i = 1, 19 do
			if i%2 == 0 then
				_G["MainMenuXPBarDiv"..i]:ClearAllPoints();
				_G["MainMenuXPBarDiv"..i]:SetPoint("LEFT", MainMenuExpBar, "LEFT", (25*i)-4, 0);
			else
				_G["MainMenuXPBarDiv"..i]:Hide();
			end
		end
			ExhaustionLevelFillBar:Hide()
			MainMenuExpBar:SetMovable(true)
			MainMenuExpBar:SetUserPlaced(true)
			MainMenuExpBar:SetWidth(500)
			MainMenuExpBar:SetAlpha(0.5)
			MainMenuExpBar:ClearAllPoints()
		--MainMenuXPBarTextureMid:SetHeight(25)
			MainMenuExpBar:SetPoint("BOTTOM", MainMenuBar, "TOP", -256, -63)
			
			MultiBarBottomRight:ClearAllPoints()
			MultiBarBottomRight:SetPoint("CENTER",MultiBarBottomLeft,"TOP",0,20)
			MultiBarBottomRight.SetPoint = function() end

			CharacterMicroButton:ClearAllPoints()
			CharacterMicroButton:SetPoint("BOTTOMRIGHT",UIParent,-255,0)
			CharacterMicroButton.SetPoint = function() end

			MainMenuBarBackpackButton:ClearAllPoints()
			MainMenuBarBackpackButton:SetScale(1.2)
			MainMenuBarBackpackButton:SetPoint("CENTER",270,20)
			MainMenuBarBackpackButton.SetPoint = function() end

			for i=0, 3 do
			_G["CharacterBag"..i.."Slot"]:SetScale(1.2) -- Size bags
			end

			MainMenuBarTexture0:Hide() 
			MainMenuBarTexture1:Hide() 
			MainMenuBarTexture2:Hide() 
			MainMenuBarTexture3:Hide()

			MainMenuBarMaxLevelBar:SetAlpha(0)
			MainMenuBarLeftEndCap:Hide() 
			MainMenuBarRightEndCap:Hide() 
			MainMenuMaxLevelBar0:Hide() 
			MainMenuMaxLevelBar1:Hide() 
			MainMenuMaxLevelBar2:Hide() 
			MainMenuMaxLevelBar3:Hide() 

			ActionBarUpButton:Hide();
			ActionBarDownButton:Hide();
			MainMenuBarPageNumber:Hide();
			MainMenuBarBackpackButton:SetPoint("BOTTOMRIGHT",UIParent,0,35)
			MainMenuBarBackpackButton.SetPoint = function() end

			TimeManagerClockButton:ClearAllPoints()
			TimeManagerClockButton:SetPoint("CENTER",0,-80)
			TimeManagerClockButton.SetPoint = function() end

			MultiBarRight:ClearAllPoints()
			MultiBarRight:SetPoint("CENTER",MultiBarBottomLeft,"TOP",660,200)
			MultiBarRight.SetPoint = function() end

	end
end)
a:RegisterEvent("PLAYER_ENTERING_WORLD")
--