DO(3,OFF)
DO(5,OFF)
MovL(InitialPose)
local Offset = {10, 10, 10, 0}
local Option={CP=1, SpeedL=50, AccL=20}
for i = 1,5 do 
RelMovL(Offset, Option)
DO(5,ON)
Wait(2000)
DO(5,OFF)
end



