-- Version: Lua 5.3.5

c = -40
local Waypoint ={-25,28,36,0}
local Option={CP=1, SpeedL=50, AccL=20}
local fixedR = 0

while(true)
do
MovL(InitialPose)
DO(1,OFF)
DO(2,OFF)
Sync()
--[[MovL(InitialPose)]]

  for j=0,3,1
  do
  if (DI(6) == ON)
  then
  MovL(P3)
  MovL(P4)
  Wait(100)
  DO(1,OFF)
  DO(2,ON)
  MovL(P3)
  MovL(InitialPose, Option)
  MovL(RelPoint(P5,{Waypoint[1]*j,0,0,fixedR}))
  RelMovL({0,0,c,0}, Option)  
  Wait(1000)
  DO(1,ON)
  DO(2,OFF)
  Wait(100)
  DO(1,OFF)
  DO(2,OFF)
  
  else
  MovL(P1)
  MovL(P2)
  Wait(100)
  DO(1,OFF)
  DO(2,ON)
  MovL(P1)
  MovL(InitialPose)
  MovL(P3)
  MovL(P4)
  DO(1,ON)
  DO(2,OFF)
  Wait(100)
  DO(1,OFF)
  DO(2,OFF)
  MovL(P3)
  MovL(InitialPose)
  Wait(1500)
  end
  
  DO(9,ON)
  Wait(480)
  DO(9,OFF)
  end

--[[
MovL(P5)
MovL(P6)
DO(1,ON)
DO(2,OFF)
Wait(100)
DO(1,OFF)
DO(2,OFF)
MovL(InitialPose)]]

end
