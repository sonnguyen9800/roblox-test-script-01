local replicatedStorage = game:GetService("ReplicatedStorage")
--local npcModule = require(replicatedStorage.Common.npc.npcModule);
local npcModule = require(game.ReplicatedStorage.Common.npc);
npcModule.initialize()

print("Hello world, from client!")