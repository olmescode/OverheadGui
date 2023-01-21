local TweenService = game:GetService("TweenService")

local function tweenUiGradient(uiGradient)
	local tweenInfo = TweenInfo.new(
		4, -- Time
		Enum.EasingStyle.Linear, -- EasingStyle
		Enum.EasingDirection.InOut, -- EasingDirection
		-1, -- RepeatCount (when less than zero the tween will loop indefinitely)
		true, -- Reverses (tween will reverse once reaching it's goal)
		0 -- DelayTime
	)

	local tween = TweenService:Create(uiGradient, tweenInfo, {Offset = Vector2.new(-1, 0)})
	tween:Play()
end

return tweenUiGradient
