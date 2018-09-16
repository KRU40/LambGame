colorBubbles = {}

function loadColorBubbles()
  colorBubbleSpawnTimer = 0
end

function spawnColorBubble()
  local colorBubble = {}
  colorBubble.size = 100
  colorBubble.x = math.random(100, love.graphics.getWidth() - colorBubble.size)
  colorBubble.y = love.graphics.getHeight() + colorBubble.size
  colorBubble.speed = math.random(50, 200)
  colorBubble.popped = false
  randomType = math.random(1, 10)

  if randomType == 1 then
    colorBubble.type = "Blue"
  elseif randomType == 2 then
    colorBubble.type = "Green"
  elseif randomType == 3 then
    colorBubble.type = "Purple"
  elseif randomType == 4 then
    colorBubble.type = "Yellow"
  elseif randomType == 5 then
    colorBubble.type = "Pink"
  elseif randomType == 6 then
    colorBubble.type = "Red"
  elseif randomType == 7 then
    colorBubble.type = "Orange"
  elseif randomType == 8 then
    colorBubble.type = "Black"
  elseif randomType == 9 then
    colorBubble.type = "Brown"
  elseif randomType == 10 then
    colorBubble.type = "White"
  end

  table.insert(colorBubbles, colorBubble)
end

function updateColorBubbles(dt)
  colorBubbleSpawnTimer = colorBubbleSpawnTimer - dt

  if colorBubbleSpawnTimer <= 0 then
    spawnColorBubble()
    colorBubbleSpawnTimer = 1
  end

  for i, c in ipairs(colorBubbles) do
    c.y = c.y - c.speed * dt
  end

  for i=#colorBubbles, 1, -1 do
    local c = colorBubbles[i]

    if c.popped == true and c ~= nil then
      table.remove(colorBubbles, i)
        if c.type == "Blue" then
          mamaSound:play()
        elseif c.type == "Green" then
          mamaSound:play()
        elseif c.type == "Orange" then
          mamaSound:play()
        elseif c.type == "Yellow" then
          mamaSound:play()
        elseif c.type == "Pink" then
            mamaSound:play()
        elseif c.type == "Purple" then
            mamaSound:play()
        elseif c.type == "Black" then
            mamaSound:play()
        elseif c.type == "Brown" then
            mamaSound:play()
        elseif c.type == "White" then
            mamaSound:play()
          elseif c.type == "Red" then
              mamaSound:play()
        elseif c.type == "Orange" then
            mamaSound:play()
        end
      end

      if  c.y < 0 - c.size then
        table.remove(colorBubbles, i)
      end
    end

      --Update game timer.
      if timer > 0 then
        timer = timer - dt
      end

      if timer <= 0 then
        timer = 0
        bReadyToClap = true
        gameState = 1
        if score > tonumber(highScore) then
          love.filesystem.write('highScore.txt', score)
        end

        for i=#colorBubbles, 1, -1 do
          table.remove(colorBubbles, i)
        end
    end
  end

  function drawColorBubbles()
      love.graphics.setColor(1, .5, .5)
      love.graphics.draw(numberBackgroundPic, 0, 0, nil, scaleX, scaleY)
  --    love.graphics.setColor(1, 1, 1, .75)
      drawClouds()
      love.graphics.setColor(1, 1, 1)
      for i,b in ipairs(colorBubbles) do
        if b.type == "Blue" then
          love.graphics.setColor(0, 0, 1)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "Green" then
          love.graphics.setColor(0, 1, 0)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "Orange" then
          love.graphics.setColor(1, .6, .3)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "Yellow" then
          love.graphics.setColor(1, 1, 0)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "Pink" then
          love.graphics.setColor(1, .5, .8)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "Purple" then
          love.graphics.setColor(.6, .2, .9)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "Black" then
          love.graphics.setColor(0, 0, 0)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "Brown" then
          love.graphics.setColor(1, .75, .75)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "White" then
          love.graphics.setColor(1, 1, 1)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "Orange" then
          love.graphics.setColor(1, 1, 1)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "Red" then
          love.graphics.setColor(1, 0, 0)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        end
    end
    love.graphics.setColor(1, 1, 1)
end
