local OverheadGUI = script:FindFirstAncestor("OverheadGUI")
local hasVipPass = require(OverheadGUI.Api.hasVipPass)
local isTopPlayer = require(OverheadGUI.Api.isTopPlayer)
local tweenUiGradient = require(OverheadGUI.Api.tweenUiGradient)

local OverheadGui = OverheadGUI.OverheadGui

local function createOverheadGUI(player)
	local hasVipPass = hasVipPass(player, 125157489)
	local isTopPlayer = isTopPlayer(player)
	
	local overheadGUICloned = OverheadGui:Clone()
	local username = overheadGUICloned.Username
	local displayname = overheadGUICloned.Displayname
	local vipLabel = overheadGUICloned.VipLabel
	
	username.Text = "@"..player.Name
	displayname.Text = player.DisplayName
	overheadGUICloned.Name = "OverheadGui"
	
	if hasVipPass then
		local uiGradient = vipLabel.UIGradient
		
		displayname.TextColor3 = Color3.new(0.333333, 0, 1)
		overheadGUICloned.VipLabel.Image = "rbxassetid://11759138289"
		
		uiGradient.Enabled = true
		tweenUiGradient(uiGradient)
	end
	if isTopPlayer then
		local uiGradient = displayname.UIGradient
		
		uiGradient.Enabled = true
		tweenUiGradient(uiGradient)
	end
	
	overheadGUICloned.Parent = player.Character:WaitForChild("Head")
end

return createOverheadGUI
