local ReplicatedStorage = game:GetService("ReplicatedStorage")
-- Test Module
local npcModule = require(game.ReplicatedStorage.Common.npc);
npcModule.initialize()

-- Test 

local common = ReplicatedStorage:WaitForChild("Common", 5);
local RemoveEvent = common.RemoveEvent;

local StarterGui = game:GetService("StarterGui");

RemoveEvent.OnClientEvent:Connect(function(title)
    StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = title;
    })
end)