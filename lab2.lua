-- Version: Lua 5.3.5
MovL(InitialPose)
DO(3,OFF)
DO(5,OFF)
Wait(2000)

MovL(P1)
MovL(P5)
DO(3,OFF)
DO(5,ON)
Wait(1000)
DO(5,OFF)
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


