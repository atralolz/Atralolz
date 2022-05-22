--------------------------------------------------------------------------------
-- Casting bars
--------------------------------------------------------------------------------
TargetFrameSpellBar:SetScale(1.1)
TargetFrameSpellBar:SetStatusBarColor(1, 0, 0)
TargetFrameSpellBar.SetStatusBarColor = function()
end

FocusFrameSpellBar:SetScale(1.1)
FocusFrameSpellBar:SetStatusBarColor(0, 0.45, 0.9) -- Casting bar color
FocusFrameSpellBar.SetStatusBarColor = function()
end

--[[ Combat text commas ]] --
LARGE_NUMBER_SEPERATOR = ","
ITEM_CREATED_BY = ""

print("Loaded CastingBars")
