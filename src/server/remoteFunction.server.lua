local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local Common = ReplicatedStorage:WaitForChild("Common", 5);
local createPartRequest = Common.RemoteFunction;

local function onCreatePartRequested(player)
    local data = "Hello player " ..player.Name;
	return data;
end
 
createPartRequest.OnServerInvoke = onCreatePartRequested