-- Avatar Changer Script

local Players = game:GetService("Players")

local function onPlayerAdded(player)
        local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    -- Example: Change the avatar to a different model
    local newAvatar = game:GetService("InsertService"):LoadAsset(123456789) -- Replace with your avatar ID
    humanoid:ApplyDescription(newAvatar:GetChildren()[1]:GetChildren()[1]:GetChildren()[1])

end

Players.PlayerAdded:Connect(onPlayerAdded)
