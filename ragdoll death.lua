-- https://discord.com/invite/ssXkdJNNvT 
local function init()
local plr = game.Players.LocalPlayer
local char = plr.Character
local m = plr:GetMouse()

local message = Instance.new("Message",workspace)
message.Text = "preparing script. dont do anything, idiot"


plr.Character = nil
plr.Character = char

wait(game.Players.RespawnTime + .6)

message:Destroy()
local sound = Instance.new("Sound",workspace)
sound.SoundId = "rbxassetid://7604108360"
sound.Volume = 2

char.Humanoid.Died:Connect(function()
    sound:Play()
    spawn(function()
        wait(.75)
        local con
        con = m.Button1Down:Connect(function()
            plr.Character = nil
            plr.Character = char
            con:Disconnect()
            wait(game.Players.RespawnTime + .4)
            sound:Destroy()
            init()
        end)
    end)
    function Iterate(instance, func)
        for i, v in next, instance:GetChildren() do
            func(v)
        end
    end
   
    limbs = {
        ["Right Leg"] = true;
        ["Right Arm"] = true;
        ["Left Leg"] = true;
        ["Left Arm"] = true;
    }
   
    Iterate(char, function(v)
        if v:IsA("BasePart") then
            local attachment = Instance.new("Attachment")
            attachment.Parent = v
            attachment.Name = (v.Name .. "[Attachment]")
            if limbs[v.Name] then
                attachment.Position = Vector3.new(0, v.Size.Y/2, 0)
            elseif v.Name == "Head" then
                attachment.Position = Vector3.new(0, -v.Size.Y/2, 0)
                attachment.Rotation = Vector3.new(0, 0, -90)
            end
        end
    end)
   
    local leftLegAttachment = Instance.new("Attachment")
    leftLegAttachment.Position = Vector3.new(-.5, -1, 0)
    leftLegAttachment.Rotation = Vector3.new(0, -90, 0)
   
    local rightLegAttachment = Instance.new("Attachment")
    rightLegAttachment.Position = Vector3.new(.5, -1, 0)
    rightLegAttachment.Rotation = Vector3.new(0, -90, 0)
    rightLegAttachment.Parent, leftLegAttachment.Parent = char.Torso, char.Torso
   
    jointAttachments = {
        ['Head'] = {
        ['Attachment0'] = char.Torso['NeckAttachment'];
        ['Attachment1'] = char.Head['Head[Attachment]'];
        };
        ['Left Arm'] = {
        ['Attachment0'] = char.Torso['LeftCollarAttachment'];
        ['Attachment1'] = char['Left Arm']['Left Arm[Attachment]'];
        };
        ['Right Arm'] = {
        ['Attachment0'] = char.Torso['RightCollarAttachment'];
        ['Attachment1'] = char['Right Arm']['Right Arm[Attachment]'];
        };
        ['Left Leg'] = {
        ['Attachment0'] = leftLegAttachment;
        ['Attachment1'] = char['Left Leg']['Left Leg[Attachment]'];
        };
        ['Right Leg'] = {
        ['Attachment0'] = rightLegAttachment;
        ['Attachment1'] = char['Right Leg']['Right Leg[Attachment]'];
        };
    }
   
    char.Humanoid.PlatformStand = true
   
    Iterate(char, function(v)
        if v:IsA("BasePart") then
            if jointAttachments[v.Name] then
                local ballSocketJoint = Instance.new("BallSocketConstraint")
                ballSocketJoint.Parent = v
                ballSocketJoint.Radius = 0.15
                ballSocketJoint.Attachment0, ballSocketJoint.Attachment1 = jointAttachments[v.Name]['Attachment0'], jointAttachments[v.Name]['Attachment1']
            end
        end
    end)
   
    Iterate(char.Torso, function(v)
        if v:IsA("Motor") then
            v:Remove()
        end
    end)
    local tool = char:FindFirstChildOfClass("Tool")
    if tool then
        tool.Parent = plr.Backpack
        task.wait()
        tool.Parent = char
    end
end)
end

init()