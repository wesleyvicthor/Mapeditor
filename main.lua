require("drawer")
require("editor")

function love.load()
	love.graphics.setColor(255, 255, 255)
	Drawer:init()
end

function love.update()
end

function love.draw()
	Drawer:draw()
	Editor:draw()
end

function love.keypressed(key, unicode)
	Drawer:keypressed(key)
	Editor:keypressed(key, unicode)
	if key == "escape" then
		os.exit(0)
	end
end
