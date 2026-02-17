-- Version: Lua 5.3.5

c = -40

local Waypoint ={-25,70,50,0}
local Option={CP=1, SpeedL=50, AccL=20}
local fixedR = 0
local heightPerLayer = 50 
local offsetStep = 12.5 --[[ ความกว้างจากช่องกลาง]]


while(true)
do
MovL(InitialPose)
DO(1,OFF)
DO(2,OFF)
Sync()

for layer = 0,2,1
do
  local layer_box = 3 - layer 
  for i = 1,layer_box,1
  do
    z_offset = layer * heightPerLayer

    MovL(P3)
    MovL(P4)
    Wait(100)
    DO(1,OFF)
    DO(2,ON)
    MovL(P3)
    MovL(InitialPose, Optio0n)
    MovL(RelPoint(P5,{Waypoint[1]*i,0,z_offset,fixedR}))
    RelMovL({0,0,c,0}, Option)  
    Wait(1000)
    DO(1,ON)
    DO(2,OFF)
    Wait(100)
    DO(1,OFF)
    DO(2,OFF)

    DO(6,ON)
    Wait(480)
    DO(6,OFF)
    end
  end
end
