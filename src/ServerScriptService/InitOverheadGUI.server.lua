local Players = game:GetService("Players")
local ServerStorage = game:GetService("ServerStorage")

local OverheadGUI = require(ServerStorage:WaitForChild("OverheadGUI"))

OverheadGUI.addConfiguration({
	textSize = 14,
	textFont = Enum.Font.GothamBold,
	textColor = Color3.fromRGB(255, 255, 255),

	HumanoidDisplayDistanceType = false,

	Vip = {
		VipPass = 125157489,
		image = "rbxassetid://11759138289",
		textSize = 14,
		textFont = Enum.Font.GothamBold,
		textColor = Color3.fromRGB(85, 85, 255),
	}
})

Players.PlayerAdded:Connect(function(player)
	OverheadGUI.onPlayerAdded(player)
end)
