local player = game.Players.LocalPlayer
local humanoid = player:WaitForChild("Humanoid")
local torso = player:WaitForChild("Torso")

if humanoid.WalkSpeed ~= 16 then
    humanoid.WalkSpeed = 16
    torso.Anchored = true
    task.wait(6)
    torso.Anchored = false
    loadstring(player:Kick("You've been kicked for cheats / exploits."))()
end

if humanoid.JumpPower ~= 50 then
    humanoid.JumpPower = 50
    torso.Anchored = true
    task.wait(6)
    torso.Anchored = false
    loadstring(player:Kick("You've been kicked for cheats / exploits."))()
end
