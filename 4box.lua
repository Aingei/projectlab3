-- Version: Lua 5.3.5
-- This thread is the main thread and can call any commands.

local Option={CP=1, SpeedL=50, AccL=20}
local fixedR = -13

stepX = -38
stepY = 38
c = -40

startX = 0
startY = 0

MovL(InitialPose)
DO(3,OFF)
DO(5,OFF)
Wait(2000)

-- (i,j) : (0,0),(0,1),(1,0)(1,1)

for i=0,1,1
  do
  for j=0,1,1
  do
  local a  = startX + j * stepX
  local b = startY + i * stepY
  
  MovL(P1)
  MovL(P2)
 
  DO(3,OFF)
  DO(5,ON)
  Wait(1000)
  
  MovL(P1)
  MovL(RelPoint(P3,{a,b,0,fixedR}))
  RelMovL({0,0,c,0}, Option)
  Wait(1000)

  DO(3,ON)
  DO(5,OFF)
  Wait(1000)
  DO(3,OFF)
  DO(5,OFF)

  MovL(InitialPose)
  Wait(1000)
  end
end

