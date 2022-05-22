--[[ arena numbers ]]--
if IsActiveBattlefieldArena() then
for i=1,5 do
if UnitIsUnit(frame.unit,"arena"..i) then
frame.Name:SetText(i)
frame.Name:SetTextColor(1, 1, 0)
break
end
end
end