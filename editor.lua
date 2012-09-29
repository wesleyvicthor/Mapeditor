require("rectangle")
require("screen")

Editor = {}
local keypressed = '';

function Editor:draw()
	Screen.print(keypressed, 10, 10)
	Screen.print("Mouse: " .. "X: " .. love.mouse.getX() .. " Y: " .. love.mouse.getY(), 10, 25)
	Screen.print("press 'r' to add a rectangle", 10, 40)
end

function Editor:keypressed(key, unicode)
	keypressed = "Key: " .. key .. " Unicode:" .. unicode
end