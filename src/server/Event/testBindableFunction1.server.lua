local be = script.Parent
 
-- Define a simple function to connect
-- to the custom event
local function onEvent(...)
	print(...)
end
be.Event:Connect(onEvent)
 