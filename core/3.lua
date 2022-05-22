-- Out of range
hooksecurefunc("ActionButton_OnEvent", function(self, event, ...)
    if (event == "PLAYER_TARGET_CHANGED") then
        self.newTimer = self.rangeTimer
    end
end)

hooksecurefunc("ActionButton_UpdateUsable", function(self)
    local icon = _G[self:GetName() .. "Icon"]
    local valid = IsActionInRange(self.action)

    if (valid == 0) then
        icon:SetVertexColor(1.0, 0.1, 0.1)
    end
end)

hooksecurefunc("ActionButton_OnUpdate", function(self, elapsed)
    local rangeTimer = self.newTimer

    if (rangeTimer) then
        rangeTimer = rangeTimer - elapsed

        if (rangeTimer <= 0) then
            ActionButton_UpdateUsable(self)
            rangeTimer = TOOLTIP_UPDATE_TIME
        end

        self.newTimer = rangeTimer
    end
end)
--
--[[ Procent and numeric health/���������� ������� �������� ]] --
DEFAULT_CHAT_FRAME:AddMessage(" ")
PF = CreateFrame("Frame")
function sh(hp, hpm)
    local a
    if hp == 0 then
        return ""
    end
    if hp < 10000 then
        a = hp
    end
    if hp > 10000 then
        a = (hp - mod(hp, 100)) / 1000
        a = a .. "k"
    end
    if hp > 100000 then
        a = (hp - mod(hp, 1000)) / 1000
        a = a .. "k"
    end
    if hp > 1000000 then
        a = (hp - mod(hp, 10000)) / 1000000
        a = a .. "m"
    end
    if hp > 10000000 then
        a = (hp - mod(hp, 1000000)) / 1000000
        a = a .. "m"
    end
    if hp > 1000000000 then
        a = (hp - mod(hp, 1000000000)) / 1000000000
        a = a .. "b"
    end
    a = a .. " | " .. format("%.0f", ((hp / hpm) * 100)) .. "%"
    return a
end
pf2 = {"Player", "Target", "Focus"}
PF:SetScript("OnUpdate", function()
    for _, u in ipairs(pf2) do
        _G[u .. "FrameHealthBar"].TextString:SetText(sh(UnitHealth(u), UnitHealthMax(u)))
        _G[u .. "FrameManaBar"].TextString:SetText(sh(UnitMana(u), UnitManaMax(u)))
    end
end)
--
-- target buffs --
hooksecurefunc("TargetFrame_UpdateAuraPositions",
    function(self, auraName, numAuras, numOppositeAuras, largeAuraList, updateFunc, maxRowWidth, offsetX)
        local AURA_OFFSET_Y = 3
        local LARGE_AURA_SIZE = 27 -- ������ ����� ������/��������.
        local SMALL_AURA_SIZE = 20 -- ������ ����� ������/��������.
        local size
        local offsetY = AURA_OFFSET_Y
        local rowWidth = 0
        local firstBuffOnRow = 1
        for i = 1, numAuras do
            if (largeAuraList[i]) then
                size = LARGE_AURA_SIZE
                offsetY = AURA_OFFSET_Y + AURA_OFFSET_Y
            else
                size = SMALL_AURA_SIZE
            end
            if (i == 1) then
                rowWidth = size
                self.auraRows = self.auraRows + 1
            else
                rowWidth = rowWidth + size + offsetX
            end
            if (rowWidth > maxRowWidth) then
                updateFunc(self, auraName, i, numOppositeAuras, firstBuffOnRow, size, offsetX, offsetY)
                rowWidth = size
                self.auraRows = self.auraRows + 1
                firstBuffOnRow = i
                offsetY = AURA_OFFSET_Y
            else
                updateFunc(self, auraName, i, numOppositeAuras, i - 1, size, offsetX, offsetY)
            end
        end
    end)
-- 
