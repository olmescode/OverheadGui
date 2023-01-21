print("Required OverheadGUI")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local createOverheadGUI = require(script.Api.createOverheadGUI)

local OverheadGUI = {}

local function onCharacterAdded(character)
	local player = Players:GetPlayerFromCharacter(character)
	local Humanoid = character.Humanoid
	
	Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	
	if player then
		createOverheadGUI(player)
	end
end

function OverheadGUI.onPlayerAdded(player)
	player.CharacterAdded:Connect(onCharacterAdded)
end

return OverheadGUI
