local fart = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Backpack.BoomBox.Parent = fart

fart.BoomBox.RemoteEvent:FireServer(6084423470)
fart:BreakJoints()

local explosion = Instance.new("Explosion", fart)
explosion.BlastRadius = 1
explosion.DestroyJointRadiusPercent = 0
explosion.ExplosionType = Enum.ExplosionType.Craters
explosion.Position = fart.HumanoidRootPart.Position
explosion.Hit:Connect(function()
    return nil
end)

wait(fart.BoomBox.Handle.Sound.TimeLength + 1)
fart.BoomBox.Parent = game:GetService("Workspace")
