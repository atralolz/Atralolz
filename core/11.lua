--[[
	Trinket Viewer

Alience Trinket : trt=GetItemIcon(37864)
Horde Trinket  :  trt=GetItemIcon(70395)
	
rc : trinket icon size

]]--

rc=40;
rfc=CooldownFrame_SetTimer;
aef="ArenaEnemyFrame";
hb="HealthBar";
trt=GetItemIcon(37864)
ctf = CreateFrame;
oe="ARENA_OPPONENT_UPDATE"
ve="PLAYER_ENTERING_WORLD"
tr="RIGHT"
LoadAddOn("Blizzard_ArenaUI")
----------------------------------------------:: 1
function Cr(i)
	local f=ctf("Frame",nil,UIParent)
	f:SetPoint(tr,_G[aef..i..hb],tr,100,0)
	f:SetSize(rc,rc)
	f.t=f:CreateTexture(nil,"BORDER")
	f.t:SetAllPoints(true)
	f.t:SetTexture(trt)
	f.c=CreateFrame("Cooldown",nil,f)
	f.c:SetAllPoints(f)
	return f;
end
----------------------------------------------:: 2
function ur(f,i)
	f:SetScript("OnEvent",
	function(_,e,u,_,_,_,s)
		if(u=="arena"..i)then
			if(s==42292 or s==59752)then
				rfc(f.c,GetTime(),120,1)
			elseif(s==7744)then
				rfc(f.c,GetTime(),30,1)
			end
		end
	end)
	f:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
end
----------------------------------------------:: 3
for i=1,5 do
	_G["rf"..i]=Cr(i)
	local f=_G["rf"..i]
	ur(f,i)
	f:Hide()	
end

function str(o,m)
	for i=1, m do
		local f=_G["rf"..i]
		if o then
			f:Show()
		else
			f:Hide()
			f.c:Hide()		
		end
	end
end
----------------------------------------------:: 4
tk=ctf("Frame")
tk:SetScript("OnEvent",
function(_,e)
	if e==oe then
		str(1,GetNumArenaOpponents())
	else
		str(nil,5)
	end
end)
tk:RegisterEvent(oe)
tk:RegisterEvent(ve)
----------------------------------------------:: 5