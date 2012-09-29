require("drawercollection")
require("rectangle")
require("screen")
Drawer = {}
local keypressed = ''

local Circle = {}
Circle.radius = 100
Circle.segments = 50
Circle.type = 'circle'
Circle.id = 0
function Circle:draw()
	Circle.id = Circle.id + 1
	local circlex = Screen.center.x - self.radius
	local circley = Screen.center.y - self.radius
	love.graphics.circle("line", circlex, circley, self.radius, self.segments)
end

function Drawer:init()
	love.graphics.setLineWidth(5)
	love.graphics.setLineStyle('smooth')
end

function Drawer:circle()
	DrawerCollection:add(Circle)
end

function Drawer:rectangle()
	Rectangle:draw()
end

function Drawer:keypressed(key, unicode)
	if key == "r" then
		DrawerCollection:add(Rectangle:new())
	end
end

function Drawer:draw()
	Screen.print(keypressed, 100, 400)
	for key, draw in ipairs(DrawerCollection.all()) do
		draw:draw()
	end
end