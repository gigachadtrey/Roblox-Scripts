--[[
________  ________  ___  ___  ________  _______   ________  ___  __    ________  _________  _______      
|\   ____\|\   __  \|\  \|\  \|\   ____\|\  ___ \ |\   ____\|\  \|\  \ |\   __  \|\___   ___\\  ___ \    
\ \  \___|\ \  \|\  \ \  \\\  \ \  \___|\ \   __/|\ \  \___|\ \  \/  /|\ \  \|\  \|___ \  \_\ \   __/|    
\ \_____  \ \   __  \ \  \\\  \ \  \    \ \  \_|/_\ \_____  \ \   ___  \ \   __  \   \ \  \ \ \  \_|/__  
 \|____|\  \ \  \ \  \ \  \\\  \ \  \____\ \  \_|\ \|____|\  \ \  \\ \  \ \  \ \  \   \ \  \ \ \  \_|\ \
   ____\_\  \ \__\ \__\ \_______\ \_______\ \_______\____\_\  \ \__\\ \__\ \__\ \__\   \ \__\ \ \_______\
  |\_________\|__|\|__|\|_______|\|_______|\|_______|\_________\|__| \|__|\|__|\|__|    \|__|  \|_______|
  \|_________|                                      \|_________|                                                                            
]]--

SKATEBOARD_HAT  = "WDW_FoamFinger"  -- if you want to change this, look in dex and get the name of the hat
AUTOCHOOSE = false  -- auto chooses hat

SPEED            = 32
JUMP            = 41
ACCELERATION    = 0.4
STEERABILITY    = 0.7
GRIP            = 0

OFFSET = CFrame.Angles(math.rad(-90),math.rad(0),math.rad(135))   -- Change the last number to 45 if it is weird
HOLD_OFFSET = CFrame.Angles(math.rad(0),math.rad(80),math.rad(45))

loadstring(game:HttpGet("https://raw.githubusercontent.com/saucekid/scripts/main/sauceskate.lua"))()