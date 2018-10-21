shapeBubbles = {}

function loadShapeBubbles()
  shapeBubbleSpawnTimer = 0
  square = love.graphics.newImage("square.png")
  --circle = love.graphics.newImage("circle.png")
  triangle = love.graphics.newImage("triangle.png")
  rectangle = love.graphics.newImage("rectangle.png")

  circleSound = love.audio.newSource("circle.wav", "static")
  recSound = love.audio.newSource("rectangle.wav", "static")
  squareSound = love.audio.newSource("square.wav", "static")
  triSound = love.audio.newSource("triangle.wav", "static")
end

function spawnShapeBubble()
  local shapeBubble = {}
  shapeBubble.size = 100
  shapeBubble.x = math.random(100, love.graphics.getWidth() - shapeBubble.size)
  shapeBubble.y = love.graphics.getHeight() + shapeBubble.size
  shapeBubble.speed = math.random(50, 200)
  shapeBubble.popped = false
  randomType = math.random(1, 4)

  if randomType == 1 then
    shapeBubble.type = "Square"

  elseif randomType == 2 then
    shapeBubble.type = "Rectangle"

  elseif randomType == 3 then
    shapeBubble.type = "Triangle"

  elseif randomType == 4 then
    shapeBubble.type = "Circle"
  end
  table.insert(shapeBubbles, shapeBubble)
end

function updateShapeBubbles(dt)
  shapeBubbleSpawnTimer = shapeBubbleSpawnTimer - dt

  if shapeBubbleSpawnTimer <= 0 then
    spawnShapeBubble()
    shapeBubbleSpawnTimer = 1
  end

  for i, b in ipairs(shapeBubbles) do
    b.y = b.y - b.speed * dt
  end

  for i=#shapeBubbles, 1, -1 do
    local s = shapeBubbles[i]

    if s.popped == true and s ~= nil then
      table.remove(shapeBubbles, i)
      if s.type == "Square" then
        squareSound:play()
      elseif s.type == "Rectangle" then
        recSound:play()
      elseif s.type == "Triangle" then
        triSound:play()
      elseif s.type == "Circle" then
        circleSound:play()
      end
    end

    if  s.y < 0 - s.size then
      table.remove(shapeBubbles, i)
    end
  end
end

function drawShapeBubbles()
  love.graphics.setColor(1, .7, .7)
  love.graphics.draw(numberBackgroundPic, 0, 0, nil, scaleX, scaleY)
  drawClouds()
  drawBirds()
  love.graphics.setColor(1, 1, 1, .6)
  for i,b in ipairs(shapeBubbles) do
    if b.type == "Square" then
      love.graphics.draw(square, b.x, b.y - 100, 0, 1.5)
      love.graphics.setColor(1, 1, 1, .6)
    elseif b.type == "Rectangle" then
      love.graphics.draw(rectangle, b.x, b.y - 100, 0, 1.5)
      love.graphics.setColor(1, 1, 1, .6)
    elseif b.type == "Circle" then
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.5)
      love.graphics.setColor(1, 1, 1, .6)
    elseif b.type == "Triangle" then
      love.graphics.draw(triangle, b.x, b.y - 100, 0, 1.5)
      love.graphics.setColor(1, 1, 1, .6)
    end
  end
  love.graphics.setColor(1, 1, 1)
end
