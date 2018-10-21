clouds = {}
cloudSpawnTimer = 0

function loadClouds()
  cloudPic = love.graphics.newImage("cartoonCloud.png")
end

function updateClouds(dt)
cloudSpawnTimer = cloudSpawnTimer - dt
  if cloudSpawnTimer <= 0 then
    createCloud()
    cloudSpawnTimer = 2.5
  end

  for i, c in ipairs(clouds) do
    c.x = c.x + c.speed * dt
  end

  for i=#clouds, 1, -1 do
    local c = clouds[i]
    if c.x > winWidth + 500 then
      table.remove(clouds, i)
    end
  end
end

function drawClouds()
  love.graphics.setColor(1, 1, 1, .98)
  for i, c in ipairs(clouds) do
    love.graphics.draw(cloudPic, c.x, c.y, 0, c.scale)
  --  love.graphics.draw(cloudPic, c.x, c.y, 0, nil, c.negScale)
  end
end

function createCloud(x, y, category)
  local cloud = {}
  cloud.speed = math.random(30, 50)
  cloud.scale = math.random(.5, .65)
  cloud.negScale = math.random(-.5, -65)
  cloud.x = -500 * pixelScale * cloud.scale
  cloud.y = math.random(100, winHeight) * pixelScale
  table.insert(clouds, cloud)
end
