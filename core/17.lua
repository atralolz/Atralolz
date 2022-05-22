local a = CreateFrame("Frame")
a:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" then
        -----------------------------------------------------------------------------------------------------------------
        -- Main Bar Move
        MainMenuBar:ClearAllPoints()
        MainMenuBar:SetPoint("BOTTOMRIGHT", 0, 10)
        MainMenuBar.SetPoint = function()
        end
        -- Left Bottom Bar Move 		
        MultiBarBottomLeft:ClearAllPoints()
        MultiBarBottomLeft:SetPoint("BOTTOMLEFT", ActionButton1, "TOPLEFT", 0, 6)
        MultiBarBottomLeft.SetPoint = function()
        end
        -- Right Bottom Bar Move		
        MultiBarBottomRight:ClearAllPoints()
        MultiBarBottomRight:SetPoint("BOTTOMLEFT", MultiBarBottomLeftButton1, "TOPLEFT", 0, 6)
        MultiBarBottomRight.SetPoint = function()
        end
        -----------------------------------------------------------------------------------------------------------------
        -- Меню персонажа
        CharacterMicroButton:ClearAllPoints()
        CharacterMicroButton:SetPoint("BOTTOMRIGHT", UIParent, -200, 0)
        CharacterMicroButton.SetPoint = function()
        end
        -----------------------------------------------------------------------------------------------------------------
        -- Рюкзак
        MainMenuBarBackpackButton:ClearAllPoints()
        MainMenuBarBackpackButton:SetScale(1.2)
        MainMenuBarBackpackButton:SetPoint("BOTTOMRIGHT", 0, 25)
        MainMenuBarBackpackButton.SetPoint = function()
        end
        -- Size bags			
        for i = 0, 3 do
            _G["CharacterBag" .. i .. "Slot"]:SetScale(1.3);
        end
        -----------------------------------------------------------------------------------------------------------------
        -- Arrows Hide
        ActionBarUpButton:Hide();
        ActionBarUpButton.Show = function()
            return
        end
        ActionBarDownButton:Hide();
        ActionBarDownButton.Show = function()
            return
        end
        MainMenuBarPageNumber:Hide();
        MainMenuBarPageNumber.Show = function()
            return
        end
        -----------------------------------------------------------------------------------------------------------------
        -- Hide BlizzardArt
        MainMenuBarTexture0:Hide();
        MainMenuBarTexture1:Hide();
        MainMenuBarTexture2:Hide();
        MainMenuBarTexture3:Hide();
        -- Hide Gryphons	
        MainMenuBarLeftEndCap:Hide();
        MainMenuBarRightEndCap:Hide();
        -- Hide Max Level Bar
        MainMenuMaxLevelBar0:Hide();
        MainMenuMaxLevelBar1:Hide();
        MainMenuMaxLevelBar2:Hide();
        MainMenuMaxLevelBar3:Hide();
        -----------------------------------------------------------------------------------------------------------------
        -- Hide Pet Action Bar	
        PetActionBarFrame:SetScale(0.9);
        PetActionBarFrame:ClearAllPoints()
        PetActionBarFrame:SetPoint("CENTER", UIParent, 115, -295)
        PetActionBarFrame.SetPoint = function()
        end
        -----------------------------------------------------------------------------------------------------------------
        -- Stance Bar Hide
        ShapeshiftBarFrame:Hide();
        ShapeshiftBarFrame.Show = function()
            return
        end
        -----------------------------------------------------------------------------------------------------------------
        -- Exp Bar Change
        ExhaustionLevelFillBar:Hide();
        ExhaustionLevelFillBar.Show = function()
            return
        end
        ExhaustionTick:Hide();
        ExhaustionTick.Show = function()
            return
        end
        MainMenuExpBar:SetAlpha(0.5);
        MainMenuExpBar:ClearAllPoints();
        MainMenuExpBar:SetPoint("BOTTOMLEFT", UIParent, 0, 0);
        MainMenuExpBar.SetPoint = function()
        end
        -----------------------------------------------------------------------------------------------------------------
    end
end)
a:RegisterEvent("PLAYER_ENTERING_WORLD")
