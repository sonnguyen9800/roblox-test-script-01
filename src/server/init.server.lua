print("Hello world, from server!")

task.wait(5);

local common = game.ReplicatedStorage:WaitForChild("Common", 5);
local RemoveEvent = common.RemoteEvent;

RemoveEvent:FireAllClients("I Will take Everything you have!");

