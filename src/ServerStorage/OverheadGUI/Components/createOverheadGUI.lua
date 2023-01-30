local OverheadGUI = script:FindFirstAncestor("OverheadGUI")
local hasVipPass = require(OverheadGUI.Api.hasVipPass)
local isTopPlayer = require(OverheadGUI.Api.isTopPlayer)
local tweenUiGradient = require(OverheadGUI.Api.tweenUiGradient)
local configure = require(OverheadGUI.Components.configure)

local OverheadGui = OverheadGUI.OverheadGui

local function createOverheadGUI(player)
	local character = player.Character
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	
	local hasVipPass = hasVipPass(player, configure.Vip.VipPass)
	local isTopPlayer = isTopPlayer(player)
	
	local overheadGUICloned = OverheadGui:Clone()
	local username = overheadGUICloned.Username
	local displayname = overheadGUICloned.Displayname
	local vipLabel = overheadGUICloned.VipLabel
	
	username.Text = "@"..player.Name
	username.Font = configure.textFont
	
	displayname.Text = player.DisplayName
	displayname.Font = configure.textFont
	displayname.TextSize = configure.textSize
	displayname.TextColor3 = configure.textColor
	
	overheadGUICloned.Name = "OverheadGui"
	
	if hasVipPass then
		local uiGradient = vipLabel.UIGradient
		
		displayname.Font = configure.Vip.textFont
		displayname.TextSize = configure.Vip.textSize
		displayname.TextColor3 = configure.Vip.textColor
		overheadGUICloned.VipLabel.Image = configure.Vip.image
		
		uiGradient.Enabled = true
		tweenUiGradient(uiGradient)
	end
	if isTopPlayer then
		local uiGradient = displayname.UIGradient
		
		uiGradient.Enabled = true
		tweenUiGradient(uiGradient)
	end
	
	humanoid.DisplayDistanceType = if configure.HumanoidDisplayDistanceType then Enum.HumanoidDisplayDistanceType.Viewer else Enum.HumanoidDisplayDistanceType.None
	
	overheadGUICloned.Parent = player.Character:WaitForChild("Head")
end

return createOverheadGUI
