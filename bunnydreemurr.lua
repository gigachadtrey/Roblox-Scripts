--\\=================================//
--||Credits|| 
--||Made By Toby Fox#3104||
--||UI Made By Lord.#0068||
--//=================================\\

--// Services

local rep = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local plrs = game:GetService("Players")
local runS = game:GetService("RunService")
local tweenS = game:GetService("TweenService")
local remotes = rep:WaitForChild("Remotes")
local damage = remotes:WaitForChild("Damage")
local functions = remotes:WaitForChild("Functions")
local events = remotes:WaitForChild("Events")
local charaMoves = remotes:WaitForChild("CharaMoves")
local main
local plr = plrs.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")
local char = plr.Character

--// The Character Selection

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)

--// The Animations

for i = 1,1 do
game.Players.LocalPlayer.Character.Head:WaitForChild("HealthBar"):Destroy()
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Idle.AnimationId = "rbxassetid://6416819199"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Walk.AnimationId = "rbxassetid://7005162082"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Run.AnimationId = "rbxassetid://6492501335"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Jump.AnimationId = "rbxassetid://6492505440"
game.Players.LocalPlayer.Backpack:WaitForChild("Main").CharaMoves.Animations.Fall.AnimationId = "rbxassetid://6492518805"
end

--// The Health
local v1 = {
    [1] = getrenv()._G.Pass, 
    [2] = "Damage", 
    [3] = math.huge, 
    [4] = game.Players.LocalPlayer.Character
}
local event = game:GetService("ReplicatedStorage").Remotes.Events
event:FireServer(v1)
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.Humanoid.Health = 1
    end
end)

--// Thing

    game.Players.LocalPlayer.PlayerGui.UI.Ui.Info.Defense:Destroy()

--// The UI

local ui1 = plrGui:WaitForChild("UI")
	local ui = ui1:WaitForChild("Ui")
	spawn(function()
		ui.UpdateLog:Destroy()
		ui.UpdateLogInfo:Destroy()
		ui.StaminaBar.BackgroundTransparency = 0.6
		ui.ManaBar.BackgroundTransparency = 0.6
		ui.StaminaBar.ImageLabel:Destroy()
		ui.ManaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Bar.BackgroundColor3 = Color3.new(1,1,0)
		ui.ManaBar.Bar.BackgroundColor3 = Color3.new(107, 50, 124)
		ui.ManaBar.Position = UDim2.new(0.5, 0,0.98, 0)
		ui.ManaBar.Size = UDim2.new(0.302, 0,0.01, 0)
		ui.StaminaBar.Size = UDim2.new(0.4, 0,0.01, 0)
		ui.StaminaBar.AnchorPoint = Vector2.new(0.5,0.5)
		ui.StaminaBar.Position = UDim2.new(0.5,0,0.96,0)
		local corner = Instance.new("UICorner")
		corner.Parent = ui.StaminaBar
		corner:Clone().Parent = ui.StaminaBar.Bar
		corner:Clone().Parent = ui.ManaBar
		corner:Clone().Parent = ui.ManaBar.Bar
		local ci = plrGui:WaitForChild("CharaIndicator")
		ci:WaitForChild("Indicator").AnchorPoint = Vector2.new(0.5,0.5)
		ci.Indicator.Position = UDim2.new(0.5,0,0.93,0)
	end)

--// The UI 2
wait(3)
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["1"].Position = UDim2.new(-1.2, 0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["2"].Position = UDim2.new(-0.95, 0, 0, 0)
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["3"].Position = UDim2.new(-0.7, 0, 0, 0)
spawn(function()
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["4"]:Destroy()
game.Players.LocalPlayer.PlayerGui.UI.Ui.MoveDebounceShower.Moves1["5"]:Destroy()
end)
spawn(function()
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Enabled = true
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Indicator.Text = "BunnyDreemurr Has Joined The Server"
game.Players.LocalPlayer.PlayerGui.CharaIndicator.Help:Destroy()
spawn(function()
game.Players.LocalPlayer.Character.Karma:Destroy()
game.Players.LocalPlayer.Character.HateMode:Destroy()
game.Players.LocalPlayer.Character.FullHateMode:Destroy()
game.Players.LocalPlayer.Character.HateArm:Destroy()
end)





--// The UI 3
-- credits to meko#2233
-- also cred to elsiah#0440 for  making it easy to fucking understand you braindead skids

local HealthBar = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")
-- local HealthLabel = Instance.new("TextLabel")
local PName = Instance.new("TextLabel")
local player = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

HealthBar.Name = "HealthBar" -- the name of the shitty healthbar
HealthBar.Parent = player.Character.Head -- the parent of the shitty healthbar
HealthBar.ExtentsOffset = Vector3.new(0, 3, 0) -- offset do not touch 
HealthBar.Size = UDim2.new(4, 0, 2, 0) -- the size



-- this is the container 
Frame.Parent = HealthBar 
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(1, 0, 1, 0)



-- This is for under the player name 
--[[
HealthLabel.Name = "HealthLabel"
HealthLabel.Parent = Frame
HealthLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.BackgroundTransparency = 1.000
HealthLabel.Position = UDim2.new(0.200000003, 0, 0.200000003, 0)
HealthLabel.Size = UDim2.new(0.800000012, 0, 0.300000012, 0)
HealthLabel.Font = Enum.Font.Arcade
HealthLabel.Text = "cock"
HealthLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
HealthLabel.TextScaled = true
HealthLabel.TextSize = 14.000
HealthLabel.TextWrapped = true
HealthLabel.TextXAlignment = Enum.TextXAlignment.Left
HealthLabel.TextYAlignment = Enum.TextYAlignment.Center
--]]


PName.Name = "PName" -- DONT CHANGE THIS
PName.Parent = Frame
PName.BackgroundColor3 = Color3.fromRGB(255, 0,0)
PName.BackgroundTransparency = 1.000
PName.Position = UDim2.new(-0.899999976, 0, -0.800000012, 0)
PName.Size = UDim2.new(3, 0, 1, 0)
PName.Font = Enum.Font.GothamBlack -- FONT
PName.Text = "BunnyDreemurr" -- CUSTOM NAME
PName.TextColor3 = Color3.fromRGB(107, 50, 124)
PName.TextScaled = true
PName.TextSize = 5.000
PName.TextStrokeColor3 = Color3.fromRGB(0,0,0) -- change this for text outline
PName.TextStrokeTransparency = 0.000
PName.TextWrapped = true
PName.TextXAlignment = Enum.TextXAlignment.Center
PName.TextYAlignment = Enum.TextYAlignment.Top
PName.Rotation = 5 -- DO NOT FUCK WITH THIS



local part = PName -- dont change this either
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            Rotation = -5
        } -- properties
        
        local nametween = TweenService:Create(part, Info, Goals) -- shit 
        nametween:Play() -- dont forget this

--// The Music

local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.StarterPlaylist
Sound.Volume = 1.20
Sound.Playing = true
Sound.Looped = true
Sound.SoundId = "rbxassetid://6198731813" 
Sound.Name = "Bunny"
game.Players.LocalPlayer.Character.Head.Voice.SoundId = "rbxassetid://7807212135"

--// The Hide Chat

_G.hidechat = true
local mt = getrawmetatable(game)
    local backup = mt.__namecall
    if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
    
    mt.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}

        if tostring(args[1]) == 'SayMessageRequest' and _G.hidechat then
        return
        end
        return backup(...)
    end)

--// The Teleport 

local mouse = game.Players.LocalPlayer:GetMouse()
        mouse.KeyDown:Connect(function(k) 
            if k == "r" then
                function getlockchar()
                    local char = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
                    return char
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getlockchar().HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
            end
        end)

--// The Character Buff

local char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)

char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == 'Grounded' or v.Name == 'StayGrounded' or v.Name == 'KnockBack' or v.Name == 'Walled' then
                v:Destroy()
            end
        end
    until false
end)
        
--// 1
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "2" then
local A_1 =  {
   [1] = getrenv()._G.Pass, 
   [2] = "Chatted", 
   [3] = [[[ * Admin Panel * ]
Pressed = Fling]],
   [4] = Color3.fromRGB(255,0,0)
   }
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
  ["Type"] = "Knockback",
  ["HitEffect"] = "YellowHitEffect",
  ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
  ["HitTime"] = 1,
  ["Sound"] = game:GetService("ReplicatedStorage").Sounds.HeavyGunShot,
  ["Damage"] = 0
  }
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local char = game.Players.LocalPlayer.Character
local clone = script:Clone()
clone.Parent = char       
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
	["HitTime"] = 1, 
	["Type"] = "Normal", 
	["HitEffect"] = "KnifeHitEffect",
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
	["Velocity"] = Vector3.new(0,0.0,0), 
	["CombatInv"] = true,
	["Damage"] = 10
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3) 
end
end)
        
--// 3
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "3" then
local A_1 =  {
   [1] = getrenv()._G.Pass, 
   [2] = "Chatted", 
   [3] = [[[ * Admin Panel * ]
Pressed = Kill]],
   [4] = Color3.fromRGB(255,0,0)
   }
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)     
local A_1 = getrenv()._G.Pass
local A_2 = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local A_3 = 
    {
	["HitTime"] = 1, 
	["Type"] = "Knockback", 
	["HitEffect"] = "KnifeHitEffect",
	["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
	["Sound"] = game:GetService("ReplicatedStorage").Sounds.KnifeHit,
	["Velocity"] = Vector3.new(0,0.0,0), 
	["CombatInv"] = true,
	["Damage"] = "nan"
	}
local Event = game:GetService("ReplicatedStorage").Remotes.Damage
Event:InvokeServer(A_1, A_2, A_3) 
end
end)
        
--// 1
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "1" then
local A_1 =  {
   [1] = getrenv()._G.Pass, 
   [2] = "Chatted", 
   [3] = [[[ * Admin Panel * ]
Pressed = Freeze]],
   [4] = Color3.fromRGB(255,0,0)
   }
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
local args = {
[1] = getrenv()._G.Pass,
[2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
[3] = {
  ["Type"] = "Knockback",
  ["HitEffect"] = "YellowHitEffect",
  ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
  ["HitTime"] = 1,
  ["Sound"] = game:GetService("ReplicatedStorage").Sounds.HeavyGunShot,
  ["Damage"] = 0
  }
}
game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
local char = game.Players.LocalPlayer.Character
local clone = script:Clone()
clone.Parent = char        
end
end)
        
--// z
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "z" then
local A_1 =  {
   [1] = getrenv()._G.Pass, 
   [2] = "Chatted", 
   [3] = [[[ * Admin Panel * ]
StarGlitcherWings = SetVisible [Mayhem] ]],
   [4] = Color3.fromRGB(255,0,0)
   }
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
player = game.Players.LocalPlayer
char = player.Character
local TweenService = game:GetService("TweenService")
_G.nowings = true

local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
--right
local part1 = Instance.new("Part")
part1.Name = "part1"
part1.Parent = char
part1.Anchored = false
part1.CanCollide = false
part1.Transparency = 0.6
part1.Massless = true

local part2 = Instance.new("Part")
part2.Name = "part2"
part2.Parent = char
part2.Anchored = false
part2.CanCollide = false
part2.Transparency = 0.6
part2.Massless = true

local part3 = Instance.new("Part")
part3.Name = "part3"
part3.Parent = char
part3.Anchored = false
part3.CanCollide = false
part3.Transparency = 0.6
part3.Massless = true





--weldright

local weld1 = Instance.new("Weld")
weld1.Parent = pla
weld1.Part0 = LockOn.HumanoidRootPart
weld1.Part1 = part1
weld1.C0 = CFrame.new(2,0,0.5)*CFrame.Angles(0, 0, math.rad(25))
weld1.Name = "weld1"


local weld2 = Instance.new("Weld")
weld2.Parent = char.HumanoidRootPart
weld2.Part0 = LockOn.HumanoidRootPart
weld2.Part1 = part2
weld2.C0 = CFrame.new(2,2,0.9)*CFrame.Angles(0, 0, math.rad(35))
weld2.Name = "weld2"


local weld3 = Instance.new("Weld")
weld3.Parent = char.HumanoidRootPart
weld3.Part0 = LockOn.HumanoidRootPart
weld3.Part1 = part3
weld3.C0 = CFrame.new(2,3,1.4)*CFrame.Angles(0, 0, math.rad(75))
weld3.Name = "weld3"


local c0s = {
CFrame.new(2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(35)),
CFrame.new(2.6,3,0.5)*CFrame.Angles(0, 0, math.rad(80)),
CFrame.new(2.4,5,0.5)*CFrame.Angles(0, 0, math.rad(110)),
CFrame.new(-2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(-35)),
CFrame.new(-2.6,3,0.5)*CFrame.Angles(0, 0, math.rad(-80)),
CFrame.new(-2.4,5,0.5)*CFrame.Angles(0, 0, math.rad(-110))
}
local welds = {weld1,weld2,weld3}

--tweenanimation
for i = 1,#welds do
        local part = welds[i]
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            C0 = c0s[i]
        }
        
        local wingtween = TweenService:Create(part, Info, Goals)
        wingtween:Play()
end

        
        
        
        
for i = 1,3,1 do
    spawn(function()
local args = {
   [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectile",
        [3] = "Spawn",
        [4] = Vector3.new(0, 3000, 0) 
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))


end)
end
 
local detect 
local detect2
local val = Instance.new('NumberValue',char)
val.Name = 'Wingpartslashcount'
local num = 0
local tab = {}
local tab2 = {}
detect = char.Attacks.ChildAdded:Connect(function(child)
    if child.Name == "KnifeSlashProjectile" then
        table.insert(tab,child)
        child:WaitForChild("ParticleEmitter"):Destroy()
        child:WaitForChild("BodyVelocity"):Destroy()
local bp = Instance.new('BodyPosition',child)
bp.Name = 'Client'
bp.P = 30000
bp.D = 150
bp.Position = char.HumanoidRootPart.Position
table.insert(tab2,bp)
        num = num + 1
        val.Value = num
    end
end)
_G.nowings = false
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function(amo)
if val.Value == 3 then
    
for i = 1,#tab do
spawn(function()
    local part = welds[i].Part1
    local sl = tab[i]
    local bs = tab2[i]
    part.Transparency = 1
while true do game['Run Service'].Heartbeat:wait()
    if _G.nowings then break end
    local cfr = part.CFrame*CFrame.Angles(0,math.rad(90),math.rad(180))
bs.Position = cfr.p 
sl.CFrame = cfr
end
part:Destroy()
sl:Destroy()
end)
end
detect:Disconnect()
detect2:Disconnect()
val:Destroy()
end
end)
end
end)
        
--// x
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "x" then
local A_1 =  {
   [1] = getrenv()._G.Pass, 
   [2] = "Chatted", 
   [3] = [[[ * Admin Panel * ]
StarGlitcherWings = SetVisible [Divinity] ]],
   [4] = Color3.fromRGB(255,0,0)
   }
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
player = game.Players.LocalPlayer
char = player.Character
local TweenService = game:GetService("TweenService")
_G.nowings = true
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value
local slashes = {}
local p = game:GetService("Players").LocalPlayer
local character = p.Character or p.CharacterAdded:Wait()
local mouse = p:GetMouse()
local setOrb = false
character:WaitForChild("Attacks").ChildAdded:Connect(function(child) 
    if child.Name == "YellowBlast" and #slashes <= 0 then 
        child:WaitForChild("Hitted"):Destroy()
        table.insert(slashes,child) 
    end
end)
local speed = 0.01
local lradius = 15

local radius = 10
local ts = 0
local rad,cos,sin = math.rad,math.cos,math.sin
local root = LockOn.HumanoidRootPart
game:GetService("RunService").RenderStepped:Connect(function()
    for i,v in pairs(slashes) do 
        if not v or not v.Parent then 
            table.remove(slashes,i)
            return
        end
        local y = root.Position.Y
        local z = root.Position.Z
        local x = root.Position.X + radius*cos(rad(ts))
        v.Position = Vector3.new(x,y,root.Position.Z + radius*sin(rad(ts)))
        ts = ts + 5
    end
end)

player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectile' then
v:Destroy()
end
end
        player = game.Players.LocalPlayer
char = player.Character
for _,v in pairs(char:GetDescendants()) do
if v.Name == 'KnifeSlashProjectilePurple' then
v:Destroy()
end
end
player = game.Players.LocalPlayer
char = player.Character
local TweenService = game:GetService("TweenService")
_G.nowings = true
wait(.1)
--right
local part1 = Instance.new("Part")
part1.Name = "part1"
part1.Parent = char
part1.Anchored = false
part1.CanCollide = false
part1.Transparency = 0.6
part1.Massless = true

local part2 = Instance.new("Part")
part2.Name = "part2"
part2.Parent = char
part2.Anchored = false
part2.CanCollide = false
part2.Transparency = 0.6
part2.Massless = true

local part3 = Instance.new("Part")
part3.Name = "part3"
part3.Parent = char
part3.Anchored = false
part3.CanCollide = false
part3.Transparency = 0.6
part3.Massless = true


--left
local part1L = Instance.new("Part")
part1L.Name = "part1L"
part1L.Parent = char
part1L.Anchored = false
part1L.CanCollide = false
part1L.Transparency = 0.6
part1L.Massless = true

local part2L = Instance.new("Part")
part2L.Name = "part2L"
part2L.Parent = char
part2L.Anchored = false
part2L.CanCollide = false
part2L.Transparency = 0.6
part2L.Massless = true

local part3L = Instance.new("Part")
part3L.Name = "part3L"
part3L.Parent = char
part3L.Anchored = false
part3L.CanCollide = false
part3L.Transparency = 0.6
part3L.Massless = true

--weldright

local weld1 = Instance.new("Weld")
weld1.Parent = char.HumanoidRootPart
weld1.Part0 = LockOn.Torso
weld1.Part1 = part1
weld1.C0 = CFrame.new(2,0,0.5)*CFrame.Angles(0, 0, math.rad(25))
weld1.Name = "weld1"


local weld2 = Instance.new("Weld")
weld2.Parent = char.HumanoidRootPart
weld2.Part0 = LockOn.Torso
weld2.Part1 = part2
weld2.C0 = CFrame.new(2,2,0.9)*CFrame.Angles(0, 0, math.rad(35))
weld2.Name = "weld2"


local weld3 = Instance.new("Weld")
weld3.Parent = char.HumanoidRootPart
weld3.Part0 = LockOn.Torso
weld3.Part1 = part3
weld3.C0 = CFrame.new(2,3,1.3)*CFrame.Angles(0, 0, math.rad(75))
weld3.Name = "weld3"


--weld left
local weld1L = Instance.new("Weld")
weld1L.Parent = char.HumanoidRootPart
weld1L.Part0 = LockOn.Torso
weld1L.Part1 = part1L
weld1L.C0 = CFrame.new(-2,0,0.5)*CFrame.Angles(0, 0, math.rad(-25))
weld1L.Name = "weld1L"


local weld2L = Instance.new("Weld")
weld2L.Parent = char.HumanoidRootPart
weld2L.Part0 = LockOn.Torso
weld2L.Part1 = part2L
weld2L.C0 = CFrame.new(-2,2,0.9)*CFrame.Angles(0, 0, math.rad(-35))
weld2L.Name = "weld2L"


local weld3L = Instance.new("Weld")
weld3L.Parent = char.HumanoidRootPart
weld3L.Part0 = LockOn.Torso
weld3L.Part1 = part3L
weld3L.C0 = CFrame.new(-2,3,1.3)*CFrame.Angles(0, 0, math.rad(-75))
weld3L.Name = "weld3L"

local c0s = {
CFrame.new(2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(35)),
CFrame.new(2.6,3,0.5)*CFrame.Angles(0, 0, math.rad(80)),
CFrame.new(2.4,5,0.5)*CFrame.Angles(0, 0, math.rad(110)),
CFrame.new(-2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(-35)),
CFrame.new(-2.6,3,0.5)*CFrame.Angles(0, 0, math.rad(-80)),
CFrame.new(-2.4,5,0.5)*CFrame.Angles(0, 0, math.rad(-110))
}
local welds = {weld1,weld2,weld3,weld1L,weld2L,weld3L}

--tweenanimation
for i = 1,#welds do
        local part = welds[i]
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            C0 = c0s[i]
        }
        
        local wingtween = TweenService:Create(part, Info, Goals)
        wingtween:Play()
end

        
        
        
        
for i = 1,6,1 do
    spawn(function()
local args = {
   [1] = {
        [1] = getrenv()._G.Pass,
        [2] = "KnifeProjectileOrange",
        [3] = "Spawn",
        [4] = Vector3.new(0, 3000, 0) 
    }
}

game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer(unpack(args))
end)
end
 
local detect 
local detect2
local val = Instance.new('NumberValue',char)
val.Name = 'Wingpartslashcount'
local num = 0
local tab = {}
local tab2 = {}
detect = char.Attacks.ChildAdded:Connect(function(child)
    if child.Name == "KnifeSlashProjectileOrange" then
        table.insert(tab,child)
        child:WaitForChild("ParticleEmitter"):Destroy()
        child:WaitForChild("BodyVelocity"):Destroy()
local bp = Instance.new('BodyPosition',child)
bp.Name = 'Client'
bp.P = 30000
bp.D = 150
bp.Position = char.HumanoidRootPart.Position
table.insert(tab2,bp)
        num = num + 1
        val.Value = num
    end
end)
_G.nowings = false
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function(amo)
if val.Value == 6 then
    
for i = 1,#tab do
spawn(function()
    local part = welds[i].Part1
    local sl = tab[i]
    local bs = tab2[i]
    part.Transparency = 1
while true do game['Run Service'].Heartbeat:wait()
    if _G.nowings then break end
    local cfr = part.CFrame*CFrame.Angles(0,math.rad(90),math.rad(180))
bs.Position = cfr.p 
sl.CFrame = cfr
end
part:Destroy()
sl:Destroy()
end)
end
detect:Disconnect()
detect2:Disconnect()
val:Destroy()

end
end)



game:GetService("ReplicatedStorage").Remotes.CharaMoves:InvokeServer({getrenv()._G.Pass, "KnifeProjectileYellow", "Spawn", Vector3.new(0,0,0)})
end
end)
        
--// c
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "c" then
local A_1 =  {
   [1] = getrenv()._G.Pass, 
   [2] = "Chatted", 
   [3] = [[[ * Admin Panel * ]
StarGlitcherWings = SetVisible [Catostrophe] ]],
   [4] = Color3.fromRGB(255,0,0)
   }
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
player = game.Players.LocalPlayer
char = player.Character
local TweenService = game:GetService("TweenService")
_G.nowings = true
local LockOn = player.Backpack.Main.LockOnScript.LockOn.Value

--right
local part1 = Instance.new("Part")
part1.Name = "part1"
part1.Parent = char
part1.Anchored = false
part1.CanCollide = false
part1.Transparency = 0.6
part1.Massless = true

local part2 = Instance.new("Part")
part2.Name = "part2"
part2.Parent = char
part2.Anchored = false
part2.CanCollide = false
part2.Transparency = 0.6
part2.Massless = true

local part3 = Instance.new("Part")
part3.Name = "part3"
part3.Parent = char
part3.Anchored = false
part3.CanCollide = false
part3.Transparency = 0.6
part3.Massless = true


--left
local part1L = Instance.new("Part")
part1L.Name = "part1L"
part1L.Parent = char
part1L.Anchored = false
part1L.CanCollide = false
part1L.Transparency = 0.6
part1L.Massless = true

local part2L = Instance.new("Part")
part2L.Name = "part2L"
part2L.Parent = char
part2L.Anchored = false
part2L.CanCollide = false
part2L.Transparency = 0.6
part2L.Massless = true
local part3L = Instance.new("Part")
part3L.Name = "part3L"
part3L.Parent = char
part3L.Anchored = false
part3L.CanCollide = false
part3L.Transparency = 0.6
part3L.Massless = true

--weldright

local weld1 = Instance.new("Weld")
weld1.Parent = char.HumanoidRootPart
weld1.Part0 = LockOn.Torso
weld1.Part1 = part1
weld1.C0 = CFrame.new(2,0,0.5)*CFrame.Angles(0, 0, math.rad(25))
weld1.Name = "weld1"


local weld2 = Instance.new("Weld")
weld2.Parent = char.HumanoidRootPart
weld2.Part0 = LockOn.Torso
weld2.Part1 = part2
weld2.C0 = CFrame.new(2,2,0.5)*CFrame.Angles(0, 0, math.rad(35))
weld2.Name = "weld2"


local weld3 = Instance.new("Weld")
weld3.Parent = char.HumanoidRootPart
weld3.Part0 = LockOn.Torso
weld3.Part1 = part3
weld3.C0 = CFrame.new(2,3,0.5)*CFrame.Angles(0, 0, math.rad(65))
weld3.Name = "weld3"


--weld left
local weld1L = Instance.new("Weld")
weld1L.Parent = char.HumanoidRootPart
weld1L.Part0 = LockOn.Torso
weld1L.Part1 = part1L
weld1L.C0 = CFrame.new(-2,0,0.5)*CFrame.Angles(0, 0, math.rad(-25))
weld1L.Name = "weld1L"


local weld2L = Instance.new("Weld")
weld2L.Parent = char.HumanoidRootPart
weld2L.Part0 = LockOn.Torso
weld2L.Part1 = part2L
weld2L.C0 = CFrame.new(-2,2,0.5)*CFrame.Angles(0, 0, math.rad(-35))
weld2L.Name = "weld2L"


local weld3L = Instance.new("Weld")
weld3L.Parent = char.HumanoidRootPart
weld3L.Part0 = LockOn.Torso
weld3L.Part1 = part3L
weld3L.C0 = CFrame.new(-2,3,0.5)*CFrame.Angles(0, 0, math.rad(-65))
weld3L.Name = "weld3L"

local c0s = {
CFrame.new(2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(35)),
CFrame.new(3,3,0.5)*CFrame.Angles(0, 0, math.rad(60)),
CFrame.new(4,5,0.5)*CFrame.Angles(0, 0, math.rad(80)),
CFrame.new(-2.8,1.5,0.5)*CFrame.Angles(0, 0, math.rad(-35)),
CFrame.new(-3,3,0.5)*CFrame.Angles(0, 0, math.rad(-60)),
CFrame.new(-4,5,0.5)*CFrame.Angles(0, 0, math.rad(-80))
}
local welds = {weld1,weld2,weld3,weld1L,weld2L,weld3L}

--tweenanimation
for i = 1,#welds do
        local part = welds[i]
        
        local Info = TweenInfo.new(
            2,                              --Length (seconds)
            Enum.EasingStyle.Sine,          --Easing Style
            Enum.EasingDirection.InOut,       --Easing Direction
            -1,                             --Times Repeated
            true,                           --reversed
            0                               --deşau
            )
            
        local Goals = {
            C0 = c0s[i]
        }
        
        local wingtween = TweenService:Create(part, Info, Goals)
        wingtween:Play()
end

        
        
        
        
for i = 1,2,1 do
    spawn(function()
local A_1 = {
    [1] = getrenv()._G.Pass, 
    [2] = "KnifeProjectilePurple", 
    [3] = "Spawn",
    [4] = Vector3.new(0, 3000, 0) 
}
local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
Event:InvokeServer(A_1)
end)
end
 
local detect 
local detect2
local val = Instance.new('NumberValue',char)
val.Name = 'Wingpartslashcount'
local num = 0
local tab = {}
local tab2 = {}
detect = char.Attacks.ChildAdded:Connect(function(child)
if child.Name == "KnifeSlashProjectilePurple" then
        table.insert(tab,child)
        child:WaitForChild("ParticleEmitter"):Destroy()
        child:WaitForChild("BodyVelocity"):Destroy()
local bp = Instance.new('BodyPosition',child)
bp.Name = 'Client'
bp.P = 30000
bp.D = 150
bp.Position = char.HumanoidRootPart.Position
table.insert(tab2,bp)
        num = num + 1
        val.Value = num
    end
end)
_G.nowings = false
detect2 = val:GetPropertyChangedSignal("Value"):Connect(function(amo)
if val.Value == 6 then
    
for i = 1,#tab do
spawn(function()
    local part = welds[i].Part1
    local sl = tab[i]
    local bs = tab2[i]
    part.Transparency = 1
while true do game['Run Service'].Heartbeat:wait()
    if _G.nowings then break end
    local cfr = part.CFrame*CFrame.Angles(0,math.rad(90),math.rad(180))
bs.Position = cfr.p 
sl.CFrame = cfr
end
part:Destroy()
sl:Destroy()
end)
end
detect:Disconnect()
detect2:Disconnect()
val:Destroy()

end
end)
end
end)
        
--// v
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
if k == "v" then
local A_1 =  {
   [1] = getrenv()._G.Pass, 
   [2] = "Chatted", 
   [3] = [[[ * Admin Panel * ]
Frisk = InstantMaxLV ]],
   [4] = Color3.fromRGB(255,0,0)
   }
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
    wait(0.5)
	local v1 = {
	[1] = getrenv()._G.Pass, 
	[2] = "Damage", 
	[3] = math.huge, 
	[4] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
	[5] = game.Players.LocalPlayer.Character
    }
    local event = game:GetService("ReplicatedStorage").Remotes.Events
    
    event:FireServer(v1)
end
end)
        game.Workspace.ServerEffects.ServerCooldown:Destroy()
        end)