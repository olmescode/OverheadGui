local MarketplaceService = game:GetService("MarketplaceService")

local function hasVipPass(player, vipPassId)
	return MarketplaceService:UserOwnsGamePassAsync(player.UserId, vipPassId)
end

return hasVipPass
