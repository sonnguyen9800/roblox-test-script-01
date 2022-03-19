print("Hello world, from server!")

task.wait(5);

local common = game.ReplicatedStorage:WaitForChild("Common", 5);
local remoteEvent = common.RemoteEvent;




local function PlayerFireEvent(player, string)
    print("Player fire event: " ..string.. " from " .. player.Name);
end


remoteEvent:FireAllClients("I Will take Everything you have!");
remoteEvent.OnServerEvent:Connect(PlayerFireEvent);

