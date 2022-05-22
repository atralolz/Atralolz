-----------------------------------------------------------------------------------------------------------------
-- Buff Frame Move
BuffFrame:SetScale(1.1);
-----------------------------------------------------------------------------------------------------------------
-- Pet Frame Move
PetFrame:Hide();
PetFrame.Show = function()
    return
end
-- Player Frame Move
PlayerFrame:SetScale(1)
PlayerFrame:ClearAllPoints()
PlayerFrame:SetPoint("TOPLEFT", 250, -250)
PlayerFrame.SetPoint = function()
end
-- Target Frame Move
TargetFrame:SetScale(1)
TargetFrame:ClearAllPoints()
TargetFrame:SetPoint("BOTTOMRIGHT", PlayerFrame, 100, -42)
TargetFrame.SetPoint = function()
end
-- Focus Frame Move	
FocusFrame:SetScale(1)
FocusFrame:ClearAllPoints()
FocusFrame:SetPoint("BOTTOMRIGHT", PlayerFrame, 100, -175)
FocusFrame.SetPoint = function()
end
-----------------------------------------------------------------------------------------------------------------
