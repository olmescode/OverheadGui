local Players = game:GetService("Players")

local OverheadGUI = script:FindFirstAncestor("OverheadGUI")
local createOverheadGUI = require(OverheadGUI.Components.createOverheadGUI)

local function onCharacterAdded(character)
	local player = Players:GetPlayerFromCharacter(character)
	
	if player then
		createOverheadGUI(player)
	end
end

local function onPlayerAdded()
	return function(player)
		player.CharacterAdded:Connect(onCharacterAdded)
	end
end

return onPlayerAdded
