	--[[ CombatChecker/иконка комбата для врагов ]]--
	LoadAddOn("Blizzard_ArenaUI")

	local CTT = CreateFrame("Frame", nil, TargetFrame) -- TargetFrame Combat Checker
	CTT:SetPoint("CENTER", TargetFrame, "CENTER", 40, -10)

	local CFT = CreateFrame("Frame", nil, FocusFrame) -- FocusFrame Combat Checker
	CFT:SetPoint("CENTER", FocusFrame, "CENTER", 40, -10)

--	local CFA = CreateFrame("Frame", nil, PartyMemberFrame1) -- PartyMemberFrame1 Combat Checker
--	CFA:SetPoint("CENTER", PartyMemberFrame1, "CENTER", -36, -12)

--	local CFB = CreateFrame("Frame", nil, PartyMemberFrame2) -- PartyMemberFrame2 Combat Checker
--	CFB:SetPoint("CENTER", PartyMemberFrame2, "CENTER", -36, -12)

--	local CFH = CreateFrame("Frame", nil, PartyMemberFrame3) -- PartyMemberFrame3 Combat Checker
--	CFH:SetPoint("CENTER", PartyMemberFrame3, "CENTER", -36, -12)

--	local CFG = CreateFrame("Frame", nil, PartyMemberFrame4) -- PartyMemberFrame4 Combat Checker
--	CFG:SetPoint("CENTER", PartyMemberFrame4, "CENTER", -36, -12)

--	local CFE = CreateFrame("Frame", nil, PartyMemberFrame5) -- PartyMemberFrame5 Combat Checker
--	CFE:SetPoint("CENTER", PartyMemberFrame5, "CENTER", -36, -12)

--	local CFF = CreateFrame("Frame", nil, ArenaEnemyFrame1) -- ArenaEnemyFrame1 Combat Checker
--	CFF:SetPoint("CENTER", ArenaEnemyFrame1, "CENTER", 38, -8)

--	local CFK = CreateFrame("Frame", nil, ArenaEnemyFrame2) -- ArenaEnemyFrame2 Combat Checker
--	CFK:SetPoint("CENTER", ArenaEnemyFrame2, "CENTER", 38, -8)

--	local CFC = CreateFrame("Frame", nil, ArenaEnemyFrame3) -- ArenaEnemyFrame3 Combat Checker
--	CFC:SetPoint("CENTER", ArenaEnemyFrame3, "CENTER", 38, -8)

--	local CFJ = CreateFrame("Frame", nil, ArenaEnemyFrame4) -- ArenaEnemyFrame4 Combat Checker
--	CFJ:SetPoint("CENTER", ArenaEnemyFrame4, "CENTER", 38, -8)

--	local CFD = CreateFrame("Frame", nil, ArenaEnemyFrame5) -- ArenaEnemyFrame5 Combat Checker
--	CFD:SetPoint("CENTER", ArenaEnemyFrame5, "CENTER", 38, -8)

local frames = {
	target = {CTT, "PLAYER_TARGET_CHANGED"},
	focus = {CFT, "PLAYER_FOCUS_CHANGED"},
	arena1 = {CFF},
	arena2 = {CFK},
	arena3 = {CFC},
	arena4 = {CFJ},
	arena5 = {CFD},
	party1 = {CFA},
	party2 = {CFB},
	party3 = {CFH},
	party4 = {CFG},
	party5 = {CFE}
}

for k, v in pairs(frames) do
	local f = v[1]
	f:SetSize(20, 20)
	f:SetScale(1.6)
	f.t = f:CreateTexture(nil, "BORDER")
	f.t:SetAllPoints()
	f.t:SetTexture("Interface\\CHARACTERFRAME\\UI-StateIcon.blp")
	f.t:SetTexCoord(0.5,1,0,0.49);
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
--