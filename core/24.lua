-- Auto switching blizzard default raid frames
local ProfileSwitcher = 0

if (ProfileSwitcher == 1) then

local ARENA_PROFILE = "Arena";
local BG_PROFILE = "Battleground";
local PARTY_PROFILE = "Party"
local RAID_25_PROFILE = "Raid25";
local RAID_40_PROFILE = "Raid40";

function switchProfile()
	if InCombatLockdown() == false then --This should fix in-combat issues.
		isArena, _ = IsActiveBattlefieldArena(); 
		if isArena == true then --**IN ARENA**.
			if GetActiveRaidProfile() ~= ARENA_PROFILE then --if arena profile is not active
				CompactUnitFrameProfiles_ActivateRaidProfile(ARENA_PROFILE); --...set arena profile.
				print("Activated RaidProfile: "..ARENA_PROFILE)
			end
		elseif InActiveBattlefield() then --**IN BG**.
			if GetActiveRaidProfile() ~= BG_PROFILE then --if battleground profile is not active
				CompactUnitFrameProfiles_ActivateRaidProfile(BG_PROFILE); --...set battleground profile.
				print("Activated RaidProfile: "..BG_PROFILE)
			end
		elseif GetNumGroupMembers(LE_PARTY_CATEGORY_INSTANCE) > 0 then --**IN INSTANCE GROUP**
			if GetNumGroupMembers(LE_PARTY_CATEGORY_INSTANCE) > 25 then
				if GetActiveRaidProfile() ~= RAID_40_PROFILE then -- if Raid40 profile is not active
					CompactUnitFrameProfiles_ActivateRaidProfile(RAID_40_PROFILE); --...set raid40 profile.
					print("Activated RaidProfile: "..RAID_40_PROFILE)
				end
			elseif GetNumGroupMembers(LE_PARTY_CATEGORY_INSTANCE) > 5 then
				if GetActiveRaidProfile() ~= RAID_25_PROFILE then --if Raid25 profile is not active
					CompactUnitFrameProfiles_ActivateRaidProfile(RAID_25_PROFILE); --...set raid25 profile.
					print("Activated RaidProfile: "..RAID_25_PROFILE)
				end
			else
				if GetActiveRaidProfile() ~= PARTY_PROFILE then --if Party profile is not active
					CompactUnitFrameProfiles_ActivateRaidProfile(PARTY_PROFILE); --...set Party profile.
					print("Activated RaidProfile: "..PARTY_PROFILE)
				end
			end
		elseif GetNumGroupMembers(LE_PARTY_CATEGORY_HOME) > 0 then --**IN MANUAL GROUP**
			if GetNumGroupMembers(LE_PARTY_CATEGORY_HOME) > 25 then
				if GetActiveRaidProfile() ~= RAID_40_PROFILE then -- if Raid40 profile is not active
					CompactUnitFrameProfiles_ActivateRaidProfile(RAID_40_PROFILE); --...set raid40 profile.
					print("Activated RaidProfile: "..RAID_40_PROFILE)
				end
			elseif GetNumGroupMembers(LE_PARTY_CATEGORY_HOME) > 5 then
				if GetActiveRaidProfile() ~= RAID_25_PROFILE then --if Raid25 profile is not active
					CompactUnitFrameProfiles_ActivateRaidProfile(RAID_25_PROFILE); --...set raid25 profile.
					print("Activated RaidProfile: "..RAID_25_PROFILE)
				end
			else
				if GetActiveRaidProfile() ~= PARTY_PROFILE then --if Party profile is not active
					CompactUnitFrameProfiles_ActivateRaidProfile(PARTY_PROFILE); --...set Party profile.
					print("Activated RaidProfile: "..PARTY_PROFILE)
				end
			end
		end
	end
end

local f = CreateFrame("Frame")
f:RegisterEvent("GROUP_ROSTER_UPDATE") --fires when player joins or leaves group
f:RegisterEvent("PLAYER_REGEN_ENABLED") --fires when leaving combat
f:SetScript("OnEvent",switchProfile);
end 