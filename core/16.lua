-----------------------------------------------------------------------------------------------------------------
-- Cкрывает надпись по середине экрана при переходе в локацию
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
-----------------------------------------------------------------------------------------------------------------
-- PvP Icon Hide
PlayerPVPIcon:SetAlpha(0)
TargetFrameTextureFramePVPIcon:SetAlpha(0)
FocusFrameTextureFramePVPIcon:SetAlpha(0)
-----------------------------------------------------------------------------------------------------------------
-- Errors Frame Hide
-- UIErrorsFrame:SetAlpha(0)
-----------------------------------------------------------------------------------------------------------------
-- Glow Effect on Player Frame Hide
PlayerStatusTexture:Hide();
PlayerStatusTexture.Show = function()
    return
end
PlayerRestIcon:Hide();
PlayerRestIcon.Show = function()
    return
end
PlayerRestGlow:Hide();
PlayerRestGlow.Show = function()
    return
end
-----------------------------------------------------------------------------------------------------------------	
-- Hits on Player Frame	Hide
PlayerHitIndicator:SetText(nil)
PlayerHitIndicator.SetText = function()
end
-- Hits on Pet Frame Hide
PetHitIndicator:SetText(nil)
PetHitIndicator.SetText = function()
end
-----------------------------------------------------------------------------------------------------------------	
-- Hide Group Number	
PlayerFrameGroupIndicator:Hide();
PlayerFrameGroupIndicator.Show = function()
    return
end
-----------------------------------------------------------------------------------------------------------------	
