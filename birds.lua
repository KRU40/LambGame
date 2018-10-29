birds = {}
birdSpawnTimer = 10
birdFlapTimer = .1
wingPos = 1
bAppStart = true

function loadBirds()
  birdPic1 = love.graphics.newImage("frame-1.png")
  birdPic2 = love.graphics.newImage("frame-2.png")
end

function updateBirds(dt)
  if bAppStart == true and birdSpawnTimer > 1 then
    birdSpawnTimer = 2
    bAppStart = false
  end

  birdFlapTimer = birdFlapTimer - dt
  if birdFlapTimer <= 0 then
    flapWings()
    birdFlapTimer = .2
  end

  birdSpawnTimer = birdSpawnTimer - dt
  if birdSpawnTimer <= 0 then
    spawnBird()
    birdSpawnTimer = 15
  end

  for i, b in ipairs(birds) do
     b.x = b.x + b.speed * dt
  end

  for i=#birds, 1, -1 do
    local b = birds[i]
    if b.popped == true then
      table.remove(birds, i)
    end

    if b.x > winWidth + 500 then
      table.remove(birds, i)
    end
  end
end

function drawBirds()
  love.graphics.setColor(1, 1, 1)
  for i, b in ipairs(birds) do
    if wingPos == 1 then
      love.graphics.draw(birdPic1, b.x, b.y, 0, .15)

    else
      love.graphics.draw(birdPic2, b.x, b.y+3, 0, .15)
    end
  end
end

function spawnBird()
  local bird = {}
  bird.speed = 125
  bird.scale = math.random(.15)
  bird.x = -100 * pixelScale * bird.scale
  if gameState == 1 then
    bird.y = winHeight*.65

  else
    bird.y = math.random(100, winHeight-100) * pixelScale
  end

  table.insert(birds, bird)
end

function flapWings()
  if wingPos == 1 then
    wingPos = 2

  else
    wingPos = 1
  end
end
