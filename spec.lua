		--[[ Target spec portrait ]]--
	local SpecTextures = {}

	for i = 1, GetNumClasses() do
		local _, classTag, classID = GetClassInfo(i)

		SpecTextures[classTag] = {}

		for specID = 1, GetNumSpecializationsForClassID(classID) do
			local _, specName, _, specIcon = GetSpecializationInfoForClassID(classID,specID)

			SpecTextures[classTag][specName] = specIcon
		end
	end

	local TargetFrameSpec = CreateFrame("Frame")
		TargetFrameSpec:RegisterEvent("PARTY_MEMBERS_CHANGED")
		TargetFrameSpec:RegisterEvent("PLAYER_TARGET_CHANGED")
		TargetFrameSpec:RegisterEvent("PLAYER_FOCUS_CHANGED")
		TargetFrameSpec:RegisterEvent("UNIT_FACTION")
		TargetFrameSpec:RegisterEvent("ARENA_OPPONENT_UPDATE")
		TargetFrameSpec:SetScript("OnEvent", function() 
		if not UnitExists("target") then
			return
		end

		local _, instanceType = IsInInstance()

		if instanceType == "arena" then
			for i = 1, 5 do
				if UnitIsUnit("target","arena"..i) then
					local icon = (select(4,GetSpecializationInfoByID(GetArenaOpponentSpec(i))))
					if icon then SetPortraitToTexture(TargetFrame.portrait,icon)
						return
					end
				end
			end
		elseif instanceType == "pvp" then
			for scoreIndex = 1, GetNumBattlefieldScores() do
				local name, _, _, _, _, _, _, _, classTag, _, _, _, _, _, _, specName = GetBattlefieldScore(scoreIndex)
				if GetUnitName("target",true) == name then
					local icon = SpecTextures[classTag][specName]
					if icon then SetPortraitToTexture(TargetFrame.portrait,icon)
						return
					end
				end
			end
		end
	end)
