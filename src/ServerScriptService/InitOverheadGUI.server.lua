local Players = game:GetService("Players")
local ServerStorage = game:GetService("ServerStorage")

local OverheadGUI = require(ServerStorage:WaitForChild("OverheadGUI"))
--require(OverheadGUI)

Players.PlayerAdded:Connect(function(player)
	OverheadGUI.onPlayerAdded(player)
end)
