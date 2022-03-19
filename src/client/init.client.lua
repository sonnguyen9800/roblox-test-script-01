local ReplicatedStorage = game:GetService("ReplicatedStorage")
-- Test Module
local npcModule = require(game.ReplicatedStorage.Common.npc);
npcModule.initialize()

-- Test 

local common = ReplicatedStorage:WaitForChild("Common", 5);
local RemoteEvent = common.RemoteEvent;

local StarterGui = game:GetService("StarterGui");

RemoteEvent.OnClientEvent:Connect(function(title)
    StarterGui:SetCore("SendNotification", {
        Title = "New title:";
        Text = title;
    })
end)