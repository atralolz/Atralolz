-----------------------------------------------------------------------------------------------------------------
-- Player Cast Bar Move                              
CastingBarFrame:ClearAllPoints()
CastingBarFrame:SetPoint("CENTER", WorldFrame, "CENTER", 0, -200)
CastingBarFrame.SetPoint = function()
end
CastingBarFrame:SetScale(1.1)
-- Player Cast Bar Timer and Icon add
local CASTBAR_ICON = true -- show ico and time of cast bar
local CAST_SHOW = CASTBAR_ICON
if CAST_SHOW == true then
    -- player casting bar
    CastingBarFrameIcon:Show()
    CastingBarFrameIcon:SetHeight(25)
    CastingBarFrameIcon:SetWidth(25)
    CastingBarFrameIcon:ClearAllPoints()
    CastingBarFrameIcon:SetPoint("RIGHT", CastingBarFrame, "LEFT", -10, 2.5)
    -- CastingBarFrameBorder:SetTexture(nil) --("Interface\\CastingBar\\UI-CastingBar-Border-Small")
    -- CastingBarFrameFlash:SetTexture("Interface\\CastingBar\\UI-CastingBar-Flash-Small")
    -- Castbar timer from thek 
    CastingBarFrame.timer = CastingBarFrame:CreateFontString(nil)
    CastingBarFrame.timer:SetFont("Fonts\\ARIALN.ttf", 18, "THINOUTLINE")
    CastingBarFrame.timer:SetPoint("LEFT", CastingBarFrame, "RIGHT", 10, 2.5)
    CastingBarFrame.update = .1
    CastingBarFrame:HookScript("OnUpdate", function(self, elapsed)
        if not self.timer then
            return
        end
        if self.update and self.update < elapsed then
            if self.casting then
                self.timer:SetText(format("%.1f", max(self.maxValue - self.value, 0)))
            elseif self.channeling then
                self.timer:SetText(format("%.1f", max(self.value, 0)))
            else
                self.timer:SetText("")
            end
            self.update = .1
        else
            self.update = self.update - elapsed
        end
    end)
end
-----------------------------------------------------------------------------------------------------------------
-- Target Cast Bar Move
TargetFrameSpellBar:ClearAllPoints()
TargetFrameSpellBar:SetPoint("CENTER", UIParent, "CENTER", 0, 85)
TargetFrameSpellBar.SetPoint = function()
end
TargetFrameSpellBar:SetScale(1.5)
-----------------------------------------------------------------------------------------------------------------
-- Focus Cast Bar Move
FocusFrameSpellBar:ClearAllPoints()
FocusFrameSpellBar:SetPoint("CENTER", UIParent, "CENTER", 0, 125)
FocusFrameSpellBar.SetPoint = function()
end
FocusFrameSpellBar:SetScale(1.5)
-- Focus Casting bar color	
FocusFrameSpellBar:SetStatusBarColor(0, 0.45, 0.9)
FocusFrameSpellBar.SetStatusBarColor = function()
end
