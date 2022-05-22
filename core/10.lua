--[[
ArenaEnemyFrames:Show() 
ArenaEnemyFrame1:Show() 
ArenaEnemyFrame2:Show() 
ArenaEnemyFrame3:Show() 
ArenaEnemyFrame1CastingBar:Show() 
ArenaEnemyFrame2CastingBar:Show() 
ArenaEnemyFrame3CastingBar:Show()
 ]]--

	--[[ Arena Frames moving and scaling ]]--
	LoadAddOn("Blizzard_ArenaUI") 
	
AEF="ArenaEnemyFrame";
C="CENTER";
Ui=UIParent;
R="RIGHT";
CB="CastingBar";
N="Name";
CBI="CastingBarIcon";
PF="PetFrame"; 

ArenaEnemyFrames:SetScale(1.3)

for i=1,3 do 
_G[AEF..i..PF]:Hide();
_G[AEF..i..N]:Hide();
_G[AEF..i..CB]:SetWidth(71);
_G[AEF..i..CB]:SetStatusBarColor(0,0.45,0.9); 
end
_G[AEF.."1"]:SetPoint(C,Ui,C,150,-17);
_G[AEF.."2"]:SetPoint(C,Ui,C,150,18);
_G[AEF.."3"]:SetPoint(C,Ui,C,150,53); 
for i=1,3 do 
_G[AEF..i].SetPoint = function() end; 
_G[AEF..i..CB].SetStatusBarcolor = function() end 
end
ArenaEnemyFrame1CastingBar:SetPoint(R,-30,-20.5);
ArenaEnemyFrame2CastingBar:SetPoint(R,-30,-20);
ArenaEnemyFrame3CastingBar:SetPoint(R,-30,-19.5);
for i=1,3 do _G[AEF..i..PF].Show = function() end 
end
for i=1,3 do 
_G[AEF..i..PF].Show = function() end 
_G[AEF..i.."ManaBarText"]:Hide();
_G[AEF..i.."HealthBarText"]:Hide() 
_G[AEF..i.."ManaBarText"].Show = function() end 
_G[AEF..i.."HealthBarText"].Show = function() end 
end 
