require("screen")
Rectangle = {}

function Rectangle:new()
    local rectangle = {}
    rectangle.x = math.random(300, 400)
    rectangle.y = math.random(300, 400)
    rectangle.width = 300
    rectangle.height = 30

    rectangle.type = 'rectangle'
    setmetatable(rectangle, { __index = self })
    return rectangle
end

function Rectangle:draw()
    -- Screen.color(255, 255, 255)
    -- love.graphics.setColor(255, 0, 0)
    Screen.print(self.x .. " x " .. self.y, self.x + 5, self.y + 5)
    love.graphics.rectangle(line or "line", x or self.x, y or self.y, width or self.width, height or self.height)
end