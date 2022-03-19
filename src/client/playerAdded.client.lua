local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local Common = ReplicatedStorage:WaitForChild("Common", 5);
local remoteFunction = Common.RemoteFunction;


local function OnServerFeedBack(data)
    print("On Server Feedback: "..data)
end


remoteFunction.OnClientInvoke = OnServerFeedBack
