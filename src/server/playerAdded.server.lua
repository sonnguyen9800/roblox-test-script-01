local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local Common = ReplicatedStorage:WaitForChild("Common", 5);
local remoteFunction = Common.RemoteFunction;
local Players = game:GetService("Players")


local function onPlayerAdded(player)
    remoteFunction:InvokeClient(player, "Sample Data")
end

Players.PlayerAdded:Connect(onPlayerAdded)
