-- We must get the UserInputService before we can use it
local userInputService = game:GetService("UserInputService")
local common = game.ReplicatedStorage:WaitForChild("Common", 5);
local remoteEvent = common.RemoteEvent;


-- A sample function providing one usage of InputBegan
local function onInputBegan(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
        print("The left mouse button has been pressed!")
        remoteEvent:FireServer("Button has been pressed");
	end
end
 
userInputService.InputBegan:Connect(onInputBegan)