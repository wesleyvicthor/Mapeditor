DrawerCollection = {}

local collection = {}
local id = 0
function DrawerCollection:add(draw)
	table.insert(collection, draw)
end

function DrawerCollection:all()
	return collection
end

function DrawerCollection:get(draw)
	return collection[draw.id]
end

function DrawerCollection:remove(draw)
	collection[draw.id] = nil
end