print("Required OverheadGUI")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local onPlayerAdded = require(script.Components.onPlayerAdded)
local configure = require(script.Components.configure)
local addconfiguration = require(script.Api.addConfiguration)

local OverheadGUI = {
	-- Server APIs
	onPlayerAdded = onPlayerAdded(),
	addConfiguration = addconfiguration(configure)
}

assert(RunService:IsServer(), "OverheadGUI must be called on server")

return OverheadGUI
