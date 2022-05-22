--[[ Hide bind text/Скрыть название биндов ]] --
for i = 1, 12 do
    _G["ActionButton" .. i .. "HotKey"]:SetAlpha(0) -- main bar
    _G["MultiBarBottomRightButton" .. i .. "HotKey"]:SetAlpha(0) -- bottom right bar
    _G["MultiBarBottomLeftButton" .. i .. "HotKey"]:SetAlpha(0) -- bottom left bar
    _G["MultiBarRightButton" .. i .. "HotKey"]:SetAlpha(0) -- right bar
    _G["MultiBarLeftButton" .. i .. "HotKey"]:SetAlpha(0) -- left bar
end

print("Loaded HideBinds")
