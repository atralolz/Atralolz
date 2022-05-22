--[[ Hide frameflashred ]] --
--[[ Disable healing/damage spam over player/pet frame ]] --
PlayerHitIndicator:SetText(nil)
PlayerHitIndicator.SetText = function()
end

PetHitIndicator:SetText(nil)
PetHitIndicator.SetText = function()
end

local playerHides = {PlayerStatusTexture, PlayerRestIcon, PlayerRestGlow, PlayerStatusGlow, PlayerAttackGlow,
                     PlayerAttackBackground}

local hides = {PlayerFrameGroupIndicator, PlayerFrameFlash, PlayerFrameManaBar.FullPowerFrame, PlayerPVPIcon,
               PlayerPrestigePortrait, PlayerPrestigeBadge, -- Target
TargetFrameFlash, TargetFrameTextureFramePVPIcon, TargetFrameTextureFramePrestigePortrait,
               TargetFrameTextureFramePrestigeBadge, -- Focus
FocusFrameFlash, FocusFrameTextureFramePVPIcon, FocusFrameTextureFramePrestigePortrait,
               FocusFrameTextureFramePrestigeBadge, --
MicroButtonAndBagsBar.MicroBagBar, --
MainMenuBarArtFrameBackground.BackgroundLarge, MainMenuBarArtFrameBackground.BackgroundSmall, MainMenuBarTexture0,
               MainMenuBarTexture1, MainMenuBarTexture2, MainMenuBarTexture3, MainMenuBarArtFrame.LeftEndCap,
               MainMenuBarArtFrame.RightEndCap, ActionBarUpButton, ActionBarDownButton, ReputationWatchBar,
               MainMenuExpBar, ArtifactWatchBar, HonorWatchBar, MainMenuBarArtFrame.PageNumber, -- Arena
ArenaEnemyFrame1, ArenaEnemyFrame2, ArenaEnemyFrame1PetFrame, ArenaEnemyFrame2PetFrame, ArenaEnemyFrame1CastingBar,
               ArenaEnemyFrame2CastingBar, ArenaPrepFrame1, ArenaPrepFrame2, -- Misc
SubZoneTextFrame, ZoneTextFrame, WorldMapFrameTutorialButton, SpellBookFrameTutorialButton}

local invisible = CreateFrame("Frame", nil)
invisible:EnableMouse(false)
invisible:Hide()

local function HideElement(element)
    element:SetAlpha(0);
    element:Hide()
    element.Show = function()
    end
end

for _, val in pairs(playerHides) do
    if val ~= nil then
        HideElement(val)
    end
end

--[[ Hide superfluous from level frame ]] --
for _, val in pairs(hides) do
    if val ~= nil then
        val:SetParent(invisible)
        HideElement(val)
    end
end

local caps = {'k', 'M', 'B', 'T'}
hooksecurefunc('TextStatusBar_UpdateTextStringWithValues', function(f, text, value, _, maxValue)
    if f == PlayerFrameHealthBar or f == TargetFrameHealthBar or f == FocusFrameHealthBar then
        if value == 0 then
            return ""
        end
        local breaks = min(#caps, floor((strlen(value) - 1) / 3))
        text:SetFormattedText('%.0f%s / %.0f%s (%.0f%%)', value / 1000 ^ breaks, breaks > 0 and caps[breaks] or '',
            maxValue / 1000 ^ breaks, breaks > 0 and caps[breaks] or '', value / maxValue * 100)
    end
    if f == PlayerFrameManaBar or f == TargetFrameManaBar or f == FocusFrameManaBar then
        local breaks = min(#caps, floor((strlen(value) - 1) / 3))
        if maxValue > 999 then
            text:SetFormattedText('%.0f%s (%.0f%%)', value / 1000 ^ breaks, breaks > 0 and caps[breaks] or '',
                value / maxValue * 100)
        else
            text:SetFormattedText('%.0f%s', value / 1000 ^ breaks, breaks > 0 and caps[breaks] or '')
        end
    end
end)

print("Loaded UnitFrames")
