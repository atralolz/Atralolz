-----------------------------------------------------------------------------------------------------------------
-- Move Buffs and Debuffs Frames
-- SETTINGS
BuffDirectionX = "left"
-- "right" or "left"
BuffDirectionY = "down"
-- "up" or "down"
BuffPerRow = 8
-- if debuffPerRow is set below 3 it will automatically set to 3!
BuffScale = 1
xbpos = -180
ybpos = -15
----------------
----------------
local f = CreateFrame("Frame")
local function BuffsUpdate(self)
    db = "BuffButton"
    dpr = BuffPerRow
    dbs = BuffScale
    if (BuffDirectionX == "right") then
        ddx = 35
    elseif (BuffDirectionX == "left") then
        ddx = -35
    end
    if (BuffDirectionY == "down") then
        ddy = -45
    elseif (BuffDirectionY == "up") then
        ddy = 45
    end
    if BuffPerRow < 3 then
        BuffPerRow = 3
    end
    -- Row 1
    if _G[db .. 1] then
        _G[db .. 1]:ClearAllPoints()
        _G[db .. 1]:SetPoint("TOPRIGHT", "UIParent", xbpos, ybpos)
    end
    for i = 2, dpr do
        if _G[db .. i] then
            _G[db .. i]:ClearAllPoints()
            _G[db .. i]:SetPoint("CENTER", db .. i - 1, ddx, 0)
        end
    end
    -- Row 2
    if _G[db .. dpr + 1] then
        _G[db .. dpr + 1]:ClearAllPoints()
        _G[db .. dpr + 1]:SetPoint("CENTER", db .. 1, 0, ddy)
    end
    for i = dpr + 2, dpr * 2 do
        if _G[db .. i] then
            _G[db .. i]:ClearAllPoints()
            _G[db .. i]:SetPoint("CENTER", db .. i - 1, ddx, 0)
        end
    end
    -- Row 3
    if _G[db .. dpr * 2 + 1] then
        _G[db .. dpr * 2 + 1]:ClearAllPoints()
        _G[db .. dpr * 2 + 1]:SetPoint("CENTER", db .. dpr + 1, 0, ddy)
    end
    for i = dpr * 2 + 2, dpr * 3 do
        if _G[db .. i] then
            _G[db .. i]:ClearAllPoints()
            _G[db .. i]:SetPoint("CENTER", db .. i - 1, ddx, 0)
        end
    end
    -- Row 4
    if _G[db .. dpr * 3 + 1] then
        _G[db .. dpr * 3 + 1]:ClearAllPoints()
        _G[db .. dpr * 3 + 1]:SetPoint("CENTER", db .. dpr * 2 + 1, 0, ddy)
    end
    for i = dpr * 3 + 2, dpr * 4 do
        if _G[db .. i] then
            _G[db .. i]:ClearAllPoints()
            _G[db .. i]:SetPoint("CENTER", db .. i - 1, ddx, 0)
        end
    end
    -- Row 5
    if _G[db .. dpr * 4 + 1] then
        _G[db .. dpr * 4 + 1]:ClearAllPoints()
        _G[db .. dpr * 4 + 1]:SetPoint("CENTER", db .. dpr * 3 + 1, 0, ddy)
    end
    for i = dpr * 4 + 2, dpr * 5 do
        if _G[db .. i] then
            _G[db .. i]:ClearAllPoints()
            _G[db .. i]:SetPoint("CENTER", db .. i - 1, ddx, 0)
        end
    end
    for i = 1, 25 do
        if _G[db .. i] then
            _G[db .. i]:SetScale(dbs)
        end
    end
end
f:SetScript("OnUpdate", BuffsUpdate)
-- SETTINGS
debuffDirectionX = "left"
-- "right" or "left"
debuffDirectionY = "down"
-- "up" or "down"
debuffPerRow = 8
-- if debuffPerRow is set below 3 it will automatically set to 3!
debuffScale = 1
xdpos = -180
ydpos = -115
----------------
----------------
hooksecurefunc("DebuffButton_UpdateAnchors", function()
    db = "DebuffButton"
    dpr = debuffPerRow
    dbs = debuffScale
    if (debuffDirectionX == "right") then
        ddx = 35
    elseif (debuffDirectionX == "left") then
        ddx = -35
    end
    if (debuffDirectionY == "down") then
        ddy = -45
    elseif (debuffDirectionY == "up") then
        ddy = 45
    end
    if debuffPerRow < 3 then
        debuffPerRow = 3
    end
    -- Row 1
    if _G[db .. 1] then
        _G[db .. 1]:ClearAllPoints()
        _G[db .. 1]:SetPoint("TOPRIGHT", "UIParent", xdpos, ydpos)
    end
    for i = 2, dpr do
        if _G[db .. i] then
            _G[db .. i]:ClearAllPoints()
            _G[db .. i]:SetPoint("CENTER", db .. i - 1, ddx, 0)
        end
    end
    -- Row 2
    if _G[db .. dpr + 1] then
        _G[db .. dpr + 1]:ClearAllPoints()
        _G[db .. dpr + 1]:SetPoint("CENTER", db .. 1, 0, ddy)
    end
    for i = dpr + 2, dpr * 2 do
        if _G[db .. i] then
            _G[db .. i]:ClearAllPoints()
            _G[db .. i]:SetPoint("CENTER", db .. i - 1, ddx, 0)
        end
    end
    -- Row 3
    if _G[db .. dpr * 2 + 1] then
        _G[db .. dpr * 2 + 1]:ClearAllPoints()
        _G[db .. dpr * 2 + 1]:SetPoint("CENTER", db .. dpr + 1, 0, ddy)
    end
    for i = dpr * 2 + 2, dpr * 3 do
        if _G[db .. i] then
            _G[db .. i]:ClearAllPoints()
            _G[db .. i]:SetPoint("CENTER", db .. i - 1, ddx, 0)
        end
    end
    -- Row 4
    if _G[db .. dpr * 3 + 1] then
        _G[db .. dpr * 3 + 1]:ClearAllPoints()
        _G[db .. dpr * 3 + 1]:SetPoint("CENTER", db .. dpr * 2 + 1, 0, ddy)
    end
    for i = dpr * 3 + 2, dpr * 4 do
        if _G[db .. i] then
            _G[db .. i]:ClearAllPoints()
            _G[db .. i]:SetPoint("CENTER", db .. i - 1, ddx, 0)
        end
    end
    -- Row 5
    if _G[db .. dpr * 4 + 1] then
        _G[db .. dpr * 4 + 1]:ClearAllPoints()
        _G[db .. dpr * 4 + 1]:SetPoint("CENTER", db .. dpr * 3 + 1, 0, ddy)
    end
    for i = dpr * 4 + 2, dpr * 5 do
        if _G[db .. i] then
            _G[db .. i]:ClearAllPoints()
            _G[db .. i]:SetPoint("CENTER", db .. i - 1, ddx, 0)
        end
    end
    for i = 1, 25 do
        if _G[db .. i] then
            _G[db .. i]:SetScale(dbs)
        end
    end
end)
