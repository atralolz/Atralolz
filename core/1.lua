print("----- |c00DC143CAtralolz Scripts|r |c000000FF(for 3.3.5a)|r loaded! -----\n")

local MacroHide = 0 -- Hide marco text/������ �������� ��������
local BindHide = 0 -- Hide bind text/������ �������� ������
local HitIndicator = 1 -- Disable healing/damage spam over player/pet frame
local ErrorFrame = 1 -- Disable Errors Frame
local HideStanceBar = 1 -- ������ ������ �����
local MoveAB = 1 -- Moving action bars/����������� ������ ����� ����
local MoveCB = 1 -- Moving cast bars
local MoveFrames = 1 -- Moving player, target and focus frames
local SellTrash = 1 -- Autorepair and sell trash/A���������� ����� ����� � ������
local CombatChecker = 1 -- CombatChecker/������ ������� ��� ������

-- Extra slash commands:
-- /clc - clear combat log
-- /gm - open a GM ticket
-- /rc - readycheck
-- /cr - check role 																		
SlashCmdList["CLCE"] = function()
    CombatLogClearEntries()
end
SLASH_CLCE1 = "/clc"

SlashCmdList["TICKET"] = function()
    ToggleHelpFrame()
end
SLASH_TICKET1 = "/gm"

SlashCmdList["READYCHECK"] = function()
    DoReadyCheck()
end
SLASH_READYCHECK1 = '/rc'

SlashCmdList["CHECKROLE"] = function()
    InitiateRolePoll()
end
SLASH_CHECKROLE1 = '/cr'
-----------------------------------------------------------------------------------------------------------------	
LARGE_NUMBER_SEPERATOR = "," -- ����������� �����
ITEM_CREATED_BY = "" -- ������ ��������� ��������

if (MacroHide == 1) then
    ---------------------Hide marco text/������ �������� ��������-----------------------------------------
    for i = 1, 12 do
        _G["ActionButton" .. i .. "Name"]:SetAlpha(0) -- main bar
        _G["MultiBarBottomRightButton" .. i .. "Name"]:SetAlpha(0) -- bottom right bar
        _G["MultiBarBottomLeftButton" .. i .. "Name"]:SetAlpha(0) -- bottom left bar
        _G["MultiBarRightButton" .. i .. "Name"]:SetAlpha(0) -- right bar
        _G["MultiBarLeftButton" .. i .. "Name"]:SetAlpha(0) -- left bar
    end
    -----------------------------------------------------------------------------------------------------------------
end
if (BindHide == 1) then
    ---------------------Hide bind text/������ �������� ������---------------------------------------------
    for i = 1, 12 do
        _G["ActionButton" .. i .. "HotKey"]:SetAlpha(0) -- main bar
        _G["MultiBarBottomRightButton" .. i .. "HotKey"]:SetAlpha(0) -- bottom right bar
        _G["MultiBarBottomLeftButton" .. i .. "HotKey"]:SetAlpha(0) -- bottom left bar
        _G["MultiBarRightButton" .. i .. "HotKey"]:SetAlpha(0) -- right bar
        _G["MultiBarLeftButton" .. i .. "HotKey"]:SetAlpha(0) -- left bar
    end
    -----------------------------------------------------------------------------------------------------------------
end
if (HitIndicator == 1) then
    ---------------------Disable healing/damage spam over player/pet frame-------------------------------
    PlayerHitIndicator:SetText(nil)
    PlayerHitIndicator.SetText = function()
    end

    PetHitIndicator:SetText(nil)
    PetHitIndicator.SetText = function()
    end
    -----------------------------------------------------------------------------------------------------------------
end
if (ErrorFrame == 1) then
    ---------------------Disable	Errors Frame-----------------------------------------------------------------
    UIErrorsFrame:SetAlpha(0)
    -----------------------------------------------------------------------------------------------------------------
end
---------------------�������� ��� ������ ������ ����������------------------------------------------
PlayerFrameGroupIndicator:Hide();
PlayerFrameGroupIndicator.Show = function()
    return
end
-----------------------------------------------------------------------------------------------------------------

---------------------PetActionBar Hide------------------------------------------------------------------------
PetActionBarFrame:Hide();
PetActionBarFrame.Show = function()
end
-----------------------------------------------------------------------------------------------------------------
---------------------C������� ������� �� �������� ������ ��� �������� � �������----------------
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

---------------------C����� ����� �� ������ ������-----------------------------------------------------
hooksecurefunc("PlayerFrame_UpdateStatus", function()
    PlayerStatusTexture:Hide()
    PlayerRestIcon:Hide()
    PlayerRestGlow:Hide()
    PlayerStatusGlow:Hide()
    PlayerAttackGlow:Hide()
    PlayerAttackBackground:Hide()
end)
-----------------------------------------------------------------------------------------------------------------	
if (HideStanceBar == 1) then
    ---------------------������ ������ �����-------------------------------------------------------------------
    for i = 1, 9 do
        _G["ShapeshiftButton" .. i]:SetAlpha(0)
    end

    ShapeshiftBarFrame:Hide()
    ShapeshiftBarFrame.Show = function()
        return
    end
    -----------------------------------------------------------------------------------------------------------------		
end
---------------------Hide all unwanted things--------------------------------------------------------------
MinimapZoomIn:Hide()
MinimapZoomIn:UnregisterAllEvents()

MinimapZoomOut:Hide()
MinimapZoomOut:UnregisterAllEvents()
-----------------------------------------------------------------------------------------------------------------

---------------------Hide PvP icon/������ ������ PvP-----------------------------------------------------	
PlayerPVPIcon:SetAlpha(0)
TargetFrameTextureFramePVPIcon:SetAlpha(0)
FocusFrameTextureFramePVPIcon:SetAlpha(0)
-----------------------------------------------------------------------------------------------------------------
if (MoveAB == 1) then
    ---------------------Moving action bars/����������� ������ ����� ����------------------------------
    local a = CreateFrame("Frame")
    a:SetScript("OnEvent", function(self, event)
        if event == "PLAYER_ENTERING_WORLD" then

            MultiBarBottomLeft:ClearAllPoints()
            MultiBarBottomLeft:SetPoint("BOTTOMLEFT", ActionButton1, "TOPLEFT", 0, 6)
            MultiBarBottomLeft.SetPoint = function()
            end

            MultiBarBottomRight:ClearAllPoints()
            MultiBarBottomRight:SetPoint("CENTER", MultiBarBottomLeft, "TOP", 0, 20)
            MultiBarBottomRight.SetPoint = function()
            end

            MainMenuBar:ClearAllPoints()
            MainMenuBar:SetPoint("BOTTOM", 255, 10)
            MainMenuBar.SetPoint = function()
            end

            -- Hide BlizzardArt
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

            -- ������ �����			
            ExhaustionLevelFillBar:Hide()
            MainMenuExpBar:SetMovable(true)
            MainMenuExpBar:SetUserPlaced(true)
            MainMenuExpBar:SetWidth(500)
            MainMenuExpBar:SetAlpha(0.5)
            MainMenuExpBar:ClearAllPoints()
            -- MainMenuXPBarTextureMid:SetHeight(25)
            MainMenuExpBar:SetPoint("BOTTOM", MainMenuBar, "TOP", -256, -63)

            -- ���� ���������
            CharacterMicroButton:ClearAllPoints()
            CharacterMicroButton:SetPoint("BOTTOMRIGHT", UIParent, -200, 0)
            CharacterMicroButton.SetPoint = function()
            end

            -- ������
            MainMenuBarBackpackButton:ClearAllPoints()
            MainMenuBarBackpackButton:SetScale(1.2)
            MainMenuBarBackpackButton:SetPoint("CENTER", 338, 20)
            MainMenuBarBackpackButton.SetPoint = function()
            end

            for i = 0, 3 do
                _G["CharacterBag" .. i .. "Slot"]:SetScale(1.5) -- Size bags
            end
        end
    end)
    a:RegisterEvent("PLAYER_ENTERING_WORLD")
    -----------------------------------------------------------------------------------------------------------------	
end
if (MoveCB == 1) then
    -----------------------------------------------------------------------------------------------------------------
    --[[ ����������� ���� ��� ������ ]] --                              
    CastingBarFrame:ClearAllPoints()
    CastingBarFrame:SetPoint("CENTER", WorldFrame, "CENTER", 0, -140)
    CastingBarFrame.SetPoint = function()
    end
    CastingBarFrame:SetScale(1.5)

    --[[ ����������� ���� ��� ���� ]] --
    TargetFrameSpellBar:ClearAllPoints()
    TargetFrameSpellBar:SetPoint("CENTER", UIParent, "CENTER", 0, 85)
    TargetFrameSpellBar.SetPoint = function()
    end
    TargetFrameSpellBar:SetScale(1.4)

    --[[ ����������� ���� ��� ������ ]] --
    FocusFrameSpellBar:ClearAllPoints()
    FocusFrameSpellBar:SetPoint("CENTER", UIParent, "CENTER", 0, 125)
    FocusFrameSpellBar.SetPoint = function()
    end
    FocusFrameSpellBar:SetScale(1.4)

    FocusFrameSpellBar:SetStatusBarColor(0, 0.45, 0.9) -- Casting bar color
    FocusFrameSpellBar.SetStatusBarColor = function()
    end
    -----------------------------------------------------------------------------------------------------------------
end
if (MoveFrames == 1) then
    -----------------------------------------------------------------------------------------------------------------	
    --[[ ����������� ����� ������, ���� � ������ ]] --
    local a = CreateFrame("Frame")
    a:SetScript("OnEvent", function(self, event)
        if event == "PLAYER_ENTERING_WORLD" then

            PlayerFrame:ClearAllPoints() -- PlayerFrame move
            PlayerFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 250, -337)

            TargetFrame:ClearAllPoints() -- TargetFrame move
            TargetFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 350, -380)

            FocusFrame:ClearAllPoints() -- FocusFrame move
            FocusFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 900, -480)
        end
    end)
    a:RegisterEvent("PLAYER_ENTERING_WORLD")
    -----------------------------------------------------------------------------------------------------------------
end
if (SellTrash == 1) then
    -----------------------------------------------------------------------------------------------------------------
    --[[ Autorepair and sell trash/A���������� ����� ����� � ������ ]] --
    local g = CreateFrame("Frame")
    g:RegisterEvent("MERCHANT_SHOW")

    g:SetScript("OnEvent", function()
        local bag, slot
        for bag = 0, 4 do
            for slot = 0, GetContainerNumSlots(bag) do
                local link = GetContainerItemLink(bag, slot)
                if link and (select(3, GetItemInfo(link)) == 0) then
                    UseContainerItem(bag, slot)
                end
            end
        end

        if (CanMerchantRepair()) then
            local cost = GetRepairAllCost()
            if cost > 0 then
                local money = GetMoney()
                if IsInGuild() then
                    local guildMoney = GetGuildBankWithdrawMoney()
                    if guildMoney > GetGuildBankMoney() then
                        guildMoney = GetGuildBankMoney()
                    end
                    if guildMoney > cost and CanGuildBankRepair() then
                        RepairAllItems(1)
                        print(format("|cfff07100Repair cost covered by G-Bank: %.1fg|r", cost * 0.0001))
                        return
                    end
                end
                if money > cost then
                    RepairAllItems()
                    print(format("|cffead000Repair cost: %.1fg|r", cost * 0.0001))
                else
                    print("Not enough gold to cover the repair cost.")
                end
            end
        end
    end)
    -----------------------------------------------------------------------------------------------------------------	
end
if (MoveFrames == 1) then
    -----------------------------------------------------------------------------------------------------------------
    --[[ Class colors in target name background ]] --
    local frame = CreateFrame("FRAME")
    frame:RegisterEvent("PLAYER_ENTERING_WORLD")
    frame:RegisterEvent("PARTY_MEMBERS_CHANGED")
    frame:RegisterEvent("PLAYER_TARGET_CHANGED")
    frame:RegisterEvent("PLAYER_FOCUS_CHANGED")
    frame:RegisterEvent("UNIT_FACTION")
    frame:RegisterEvent("ARENA_OPPONENT_UPDATE")

    local function eventHandler(self, event, ...)
        local unitid = ...

        if (event == "UNIT_FACTION" and unitid ~= "target" and unitid ~= "focus") then
            return
        end

        if UnitIsPlayer("target") then
            _, class = UnitClass("target")
            c = RAID_CLASS_COLORS[class]
            TargetFrameNameBackground:SetVertexColor(c.r, c.g, c.b)
        end
        if UnitIsPlayer("focus") then
            _, class = UnitClass("focus")
            c = RAID_CLASS_COLORS[class]
            FocusFrameNameBackground:SetVertexColor(c.r, c.g, c.b)
        end
    end

    local bar, color
    for i = 1, 5 do
        bar = _G["ArenaEnemyFrame" .. i .. "HealthBar"]
        color = RAID_CLASS_COLORS[select(2, UnitClass("arena" .. i))]
        if color then
            bar:SetStatusBarColor(color.r, color.g, color.b)
        end
    end

    frame:SetScript("OnEvent", eventHandler)

    -- Brighter targetname and focusname textures (fix)

    for _, BarTextures in pairs({TargetFrameNameBackground, FocusFrameNameBackground}) do
        BarTextures:SetTexture("Interface\\TargetingFrame\\UI-StatusBar")
    end
    -----------------------------------------------------------------------------------------------------------------	
end
if (CombatChecker == 1) then
    -----------------------------------------------------------------------------------------------------------------	
    --[[ CombatChecker/������ ������� ��� ������ ]] --
    LoadAddOn("Blizzard_ArenaUI")

    local CTT = CreateFrame("Frame", nil, TargetFrame) -- TargetFrame Combat Checker
    CTT:SetPoint("CENTER", TargetFrame, "CENTER", 40, -10)

    local CFT = CreateFrame("Frame", nil, FocusFrame) -- FocusFrame Combat Checker
    CFT:SetPoint("CENTER", FocusFrame, "CENTER", 40, -10)

    local frames = {
        target = {CTT, "PLAYER_TARGET_CHANGED"},
        focus = {CFT, "PLAYER_FOCUS_CHANGED"}
    }

    for k, v in pairs(frames) do
        local f = v[1]
        f:SetSize(20, 20)
        f:SetScale(1.6)
        f.t = f:CreateTexture(nil, "BORDER")
        f.t:SetAllPoints()
        f.t:SetTexture("Interface\\CHARACTERFRAME\\UI-StateIcon.blp")
        f.t:SetTexCoord(0.5, 1, 0, 0.49);
        f:Hide()

        f:SetScript("OnEvent", function(self, event, unit)
            if unit == k or event == v[2] then
                self[UnitAffectingCombat(k) and "Show" or "Hide"](self)
            end
        end)

        f:RegisterEvent("UNIT_FLAGS")
        f:RegisterEvent("PLAYER_TARGET_CHANGED")
        f:RegisterEvent("PLAYER_FOCUS_CHANGED")
    end
    -----------------------------------------------------------------------------------------------------------------
end

-----------------------------------------------------------------------------------------------------------------	
--[[
/script ArenaEnemyFrames:Show() 
ArenaEnemyFrame1:Show() 
ArenaEnemyFrame2:Show() 
ArenaEnemyFrame3:Show() 
ArenaEnemyFrame1CastingBar:Show() 
ArenaEnemyFrame2CastingBar:Show() 
ArenaEnemyFrame3CastingBar:Show()
 ]] --

--[[ Arena Frames moving and scaling ]] --
LoadAddOn("Blizzard_ArenaUI")

AEF = "ArenaEnemyFrame";
C = "CENTER";
Ui = UIParent;
R = "RIGHT";
CB = "CastingBar";
N = "Name";
CBI = "CastingBarIcon";
PF = "PetFrame";

ArenaEnemyFrames:SetScale(2)

for i = 1, 3 do
    _G[AEF .. i .. PF]:Hide();
    _G[AEF .. i .. N]:Hide();
    _G[AEF .. i .. CB]:SetWidth(71);
    _G[AEF .. i .. CB]:SetStatusBarColor(0, 0.45, 0.9);
end
_G[AEF .. "1"]:SetPoint(C, Ui, C, 150, -17);
_G[AEF .. "2"]:SetPoint(C, Ui, C, 150, 18);
_G[AEF .. "3"]:SetPoint(C, Ui, C, 150, 53);
for i = 1, 3 do
    _G[AEF .. i].SetPoint = function()
    end;
    _G[AEF .. i .. CB].SetStatusBarcolor = function()
    end
end
ArenaEnemyFrame1CastingBar:SetPoint(R, -30, -20.5);
ArenaEnemyFrame2CastingBar:SetPoint(R, -30, -20);
ArenaEnemyFrame3CastingBar:SetPoint(R, -30, -19.5);
for i = 1, 3 do
    _G[AEF .. i .. PF].Show = function()
    end
end
for i = 1, 3 do
    _G[AEF .. i .. PF].Show = function()
    end
    _G[AEF .. i .. "ManaBarText"]:Hide();
    _G[AEF .. i .. "HealthBarText"]:Hide()
    _G[AEF .. i .. "ManaBarText"].Show = function()
    end
    _G[AEF .. i .. "HealthBarText"].Show = function()
    end
end
-----------------------------------------------------------------------------------------------------------------	
--[[ BG or Arena proc song ]] --
hooksecurefunc("PVPReadyDialog_Showing", function(id)
    if GetBattlefieldStatus(id) == "confirm" and GetBattlefieldPortExpiration(id) then
        PlaySoundFile("Sound\\Creature\\HeadlessHorseman\\Horseman_Special_01.wav", "master")
    end
end)
-----------------------------------------------------------------------------------------------------------------
-- Disable group number frame
PlayerFrameGroupIndicator.Show = function()
    return
end
-- Hide pvp timer
PlayerPVPTimerText:SetAlpha(0)

