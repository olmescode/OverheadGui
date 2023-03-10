## OverheadGui
The OverheadGUI system is a Roblox Module for creating overhead GUI elements above each player's character in-game. The GUI includes the player's username and display name, a VIP icon for players who own a specific game pass, and can also include a special animation for players who are in the top 10 of a specific data store.

### Features
* Automatically clones the overhead GUI for each player who joins the game
* Includes the player's username and display name
* Can display a special animation for VIP players
* Can display a special animation for players who are in the top 10 of a DataStore leaderboard
* Can be easily customized by adding custom properties

### How to use
1. Place the OverheadGUI ModuleScript inside ServerStorage
2. In your main script and call the OverheadGUI.addConfiguration() to add custom properties to the design of the OverheadGui object
   and pass a table with the desired properties
3. Set up the data store and the game pass ID in the respective table
4. Require the OverheadGUI script in your main script and call the OverheadGUI.onPlayerAdded(player) function for each player that joins the game

### Example
~~~
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
~~~
### API Functions
* `addConfiguration()`: Passes in a table with the desired properties for the design of the overhead GUI
* `createOverheadGUI(player)`: Creates and displays the overhead GUI above the player's character
* `hasVipPass(player, vipPassId)`: Returns whether the player owns the specified VIP game pass
* `isTopPlayer(player)`: Returns whether the player is in the top 10 of the specified DataStore leaderboard
* `tweenUiGradient(uiGradient)`: Applies a looping animation to the specified UI gradient object

### Additional Information
The function `isTopPlayer` is optimized for server limits, uses a caching system to limit the amount of calls made to the data store. The top 10 players are updated every hour or when the function is called after that time.

### Note
Please note that the game pass id, data store name and Vip image should be correctly set in a custom configuration table.
