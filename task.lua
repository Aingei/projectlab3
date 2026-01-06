-- Version: Lua 5.3.5
for i= 0,5
do
local a = 0;

DO(3,OFF)
DO(5,OFF)
MovL(InitialPose)
MovL(P1)
MovL(P2)
DO(3,OFF)
DO(5,ON)
MovL(P1)
MovL(P3)
MovL(P4)
DO(3,ON)
DO(5,OFF)
Wait(1000)
DO(3,OFF)
DO(5,OFF)
MovL(P3)
MovL(InitialPose)
Wait(1000)
--a = 1
Sleep(15000)
--if( a == 1) then
if (DI(7) == ON) then
  MovL(P3)
  MovL(P4)
  DO(3,OFF)
  DO(5,ON)
  MovL(P3)
  MovL(InitialPose)
  MovL(P5)
  MovL(P6)
  DO(3,ON)
  DO(5,OFF)
  Wait(1000)
  DO(3,OFF)
  DO(5,OFF)
--end
end
end
