-- LocalScript
 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local Common = ReplicatedStorage:WaitForChild("Common", 5);
local createPartRequest = Common.RemoteFunction;
 
local res = createPartRequest:InvokeServer()
print("The server return data:", res)
 