local configure = {
	-- Keys and their default values:
	textSize = 14,
	textFont = Enum.Font.GothamBold,
	textColor = Color3.fromRGB(255, 255, 255),

	HumanoidDisplayDistanceType = true,
	
	Vip = {
		VipPass = 125157489,
		image = "rbxassetid://11759138289",
		textSize = 14,
		textFont = Enum.Font.GothamBold,
		textColor = Color3.fromRGB(85, 85, 255),
	}
}
--[[
		OverheadGUI comes with an API for
		configuring various options to customize it for your experience.

		Usage:
		OverheadGUI.configure({
			textSize = 14,
			textFont = Enum.Font.GothamSemibold,
			textColor = Color3.fromRGB(255, 255, 255),

			hideDisplayName = false,
		Vip = {
		VipPass = 125157489,
		image = "rbxassetid://11759138289",
		textSize = 14,
		textFont = Enum.Font.GothamBold,
		textColor = Color3.fromRGB(85, 85, 255),
		}
	})
]]

return configure