--[[ Procent and numeric health/Сокращение значения здоровья ]]--
DEFAULT_CHAT_FRAME:AddMessage(" ")
PF=CreateFrame("Frame")
function sh(hp,hpm)
local a 
if hp == 0 then return "" end
if hp<10000 then a=hp end
if hp>10000 then a=(hp-mod(hp,100))/1000 a=a.."k" end
if hp>100000 then a=(hp-mod(hp,1000))/1000 a=a.."k" end
if hp>1000000 then a=(hp-mod(hp,10000))/1000000 a=a.."m" end
if hp>10000000 then a=(hp-mod(hp,1000000))/1000000 a=a.."m" end
if hp>1000000000 then a=(hp-mod(hp,1000000000))/1000000000 a=a.."b" end
a = a.." | "..format("%.0f", ((hp/hpm)*100)).."%"
return a end
pf2={"Player", "Target", "Focus"}
PF:SetScript("OnUpdate",
function()
for _,u in ipairs(pf2) do
_G[u.."FrameHealthBar"].TextString:SetText(sh(UnitHealth(u),UnitHealthMax(u))) 
_G[u.."FrameManaBar"].TextString:SetText(sh(UnitMana(u),UnitManaMax(u))) 
end 
end)
--
PlayerFrameManaBarText:Hide();
PlayerFrameManaBarText.Show = function() end