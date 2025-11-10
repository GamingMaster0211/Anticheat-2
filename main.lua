local player = game.Players.LocalPlayer

local humanoid = player:FindFirstChild("Humanoid")
local torso = player:FindFirstChild("Torso")
local bodyforce = player:FindFirstChild("BodyForce")
local bodygyro = player:FindFirstChild("BodyGyro")
local bodyposition = player:FindFirstChild("BodyPosition")
local bodyvelocity = player:FindFirstChild("BodyVelocity")
local bodythrust = player:FindFirstChild("BodyThrust")
local vectorforce = player:FindFirstChild("VectorForce")
local vectortorque = player:FindFirstChild("VectorTorque")
local linearvelocity = player:FindFirstChild("LinearVelocity")
local angularvelocity = player:FindFirstChild("AngularVelocity")

local httpservice = game:GetService("HttpService")

local mscript = Instace.new("ModuleScript", game.StarterPlayer.StarterCharacterScripts)
local revent = Instance.new("RemoteEvent", game.ReplicatedStorage)

local lib = {
    x = "ModuleX",
    v = "Module1",
    i = "Module2",
    z = "ModuleZ"

    if lib == nil then
        Instane.new("ModuleScript", game.StarterPlayer.StarterCharacterScripts)
        ModuleScript.Enabled = false
    end
}

humanoid.UseJumpPower = true

wait(0.1)

if humanoid.UseJumpPower == false then
    humanoid.UseJumpPower = true
    torso.Anchored = true
    task.wait(6)
    torso.Anchored = false
    kick()
end

function kick()
    player:Kick("You have been kicked for cheats / exploits.")
end

function check()
    local url = nil
    local success = pcall(function()
        if return HttpService:GetAsync(url) then
            kick()
        end
    end)

    if success then
        print("Player imported exploits. Kicking "..player.Name)
        kick()
    else
        warn("HTTP request failed. Not kicking "..player.Name)
    end

    if player:Clone() then
        player:Kick()
    end

    revent.FireAllClients:Connect(function()
        mscript.Enabled == false
        ModuleScript.Enabled == true
    end)
end

if humanoid.WalkSpeed ~= 16 then
    humanoid.WalkSpeed = 16
    torso.Anchored = true
    task.wait(6)
    torso.Anchored = false
    kick()
end

if humanoid.JumpPower ~= 50 then
    humanoid.JumpPower = 50
    torso.Anchored = true
    task.wait(6)
    torso.Anchored = false
    kick()
end

if bodyforce then
    bodyforce:Destroy()
    kick()
end

if bodygyro then
    bodygyro:Destroy()
    kick()
end

if bodyposition then
    bodyposition:Destroy()
    kick()
end

if bodyvelocity then
    bodyvelocity:Destroy()
    kick()
end

if vectorforce then
    vectorforce:Destroy()
    kick()
end

if vectortorque then
    vectortorque:Destroy()
    kick()
end

if bodythrust then
    bodythrust:Destroy()
    kick()
end

if linearvelocity then
    linearvelocity:Destroy()
    kick()
end

if angularvelocity then
    angularvelocity:Destroy()
    kick()
end

while true do
    task.wait(0.0000000001)
    check()
end
