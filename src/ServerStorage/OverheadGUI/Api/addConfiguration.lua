local function setCustomConfigure(defaultTable, customTable)
	for defaultName, defaultValue in pairs(customTable) do
		if defaultTable[defaultName] then
			if type(defaultValue) == "table" then
				defaultTable[defaultName] = defaultTable[defaultName] or {}
				setCustomConfigure(defaultTable[defaultName], defaultValue)
			else
				defaultTable[defaultName] = defaultValue
			end
		end
	end
end

local function addConfiguration(configure)
	return function(customConfigure)
		setCustomConfigure(configure, customConfigure)
	end
end

return addConfiguration