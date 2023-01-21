local DataStoreService = game:GetService("DataStoreService")
local orderedDataStore = DataStoreService:GetOrderedDataStore("Playtime")

local topTenData = {}
local updateInterval = 3600 -- update every hour
local lastUpdate = 0

local function updateTopTenData()
	local isAscending = false
	local pageSize = 10
	local pages = orderedDataStore:GetSortedAsync(isAscending, pageSize)
	topTenData = pages:GetCurrentPage()
	lastUpdate = os.time()
end

local function isTopPlayer(player)
	if os.time() - lastUpdate > updateInterval then
		updateTopTenData()
	end
	for _, data in ipairs(topTenData) do
		if data.key == player.UserId then
			return true
		end
	end
	return false
end

return isTopPlayer
