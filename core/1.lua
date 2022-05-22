local a = CreateFrame("Frame")
a:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" then
        -----------------------------------------------------------------------------------------------------------------	
        LARGE_NUMBER_SEPERATOR = "," -- Разделитель тысяч
        ITEM_CREATED_BY = "" -- Скрыть создателя предмета
        -----------------------------------------------------------------------------------------------------------------

        SetCVar("assistAttack", 1); -- Whether to start attacking after an assist
        SetCVar("autoClearAFK", 1); -- Automatically clear AFK when moving or chatting
        SetCVar("autoInteract", 0); -- Toggles auto-move to interact target
        SetCVar("autoLootDefault", 1); -- Automatically loot items when the loot window opens

        SetCVar("chatBubbles", 1); -- Whether to show in-game chat bubbles
        SetCVar("chatBubblesParty", 1); -- Whether to show in-game chat bubbles for party chat
        SetCVar("chatMouseScroll", 1); -- Whether the user can use the mouse wheel to scroll through chat
        SetCVar("chatStyle", "classic"); -- The style of Edit Boxes for the ChatFrame. Valid values: "classic", "im"

        SetCVar("displayFreeBagSlots", 1); -- Whether or not the backpack button should indicate how many inventory slots you've got free
        SetCVar("displayWorldPVPObjectives", 1); -- Whether to show world PvP objectives

        SetCVar("buffDurations", 1); -- Whether to show buff durations
        SetCVar("fullSizeFocusFrame", 1); -- Increases the size of the focus frame to that of the target frame

        SetCVar("autoDismount", 1); -- Dismount when trying to use an ability
        SetCVar("autoDismountFlying", 0); -- Dismount when trying to use an ability even when flying

        SetCVar("threatWarning", 0); -- Enable Auto-Dismounting 

        SetCVar("ffxDeath", 0); -- full screen death desat effect
        SetCVar("ffxGlow", 0); -- full screen glow effect
        SetCVar("screenshotQuality", 10); -- Pimp Screenshot Quality

        -----------------------------------------------------------------------------------------------------------------
    end
end)
a:RegisterEvent("PLAYER_ENTERING_WORLD")
