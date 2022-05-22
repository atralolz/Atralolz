--[[ BG or Arena proc song ]]--
hooksecurefunc("PVPReadyDialog_Showing",function(id)
if GetBattlefieldStatus(id)=="confirm"and GetBattlefieldPortExpiration(id)then 
PlaySoundFile("Sound\\Creature\\HeadlessHorseman\\Horseman_Special_01.wav","master")
end 
end)