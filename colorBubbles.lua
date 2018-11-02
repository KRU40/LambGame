colorBubbles = {}

function loadColorBubbles()
  colorBackgroundPic = love.graphics.newImage("colorBackground.png")
  rainbow = love.graphics.newImage("rainbow.png")
  whiteBubble = love.graphics.newImage("whiteBubble.png")
  greenSound = love.audio.newSource("green.wav", "static")
  whiteSound = love.audio.newSource("white.wav", "static")
  blueSound = love.audio.newSource("blue.wav", "static")
  yellowSound = love.audio.newSource("yellow.wav", "static")
  orangeSound = love.audio.newSource("orange.wav", "static")
  pinkSound = love.audio.newSource("pink.wav", "static")
  purpleSound = love.audio.newSource("purple.wav", "static")
  blackSound = love.audio.newSource("black.wav", "static")
  brownSound = love.audio.newSource("brown.wav", "static")
  redSound = love.audio.newSource("red.wav", "static")
  colorBubbleSpawnTimer = 0
  bBrownPopped = false
  bWhitePopped = false
  bGreenPopped = false
  bBluePopped = false
  bBlackPopped = false
  bOrangePopped = false
  bYellowPopped = false
  bPurplePopped = false
  bPinkPopped = false
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
    colorBubbleSpawnTimer = 2
  end

  for i, c in ipairs(colorBubbles) do
    c.y = c.y - c.speed * dt
  end

  for i=#colorBubbles, 1, -1 do
    local c = colorBubbles[i]

    if c.popped == true and c ~= nil then
      table.remove(colorBubbles, i)
        if c.type == "Blue" then
          blueSound:play()
          bBluePopped = true
        elseif c.type == "Green" then
          greenSound:play()
          bGreenPopped = true
        elseif c.type == "Orange" then
          orangeSound:play()
          bOrangePopped = true
        elseif c.type == "Yellow" then
          yellowSound:play()
          bYellowPopped = true
        elseif c.type == "Pink" then
          pinkSound:play()
          bPinkPopped = true
        elseif c.type == "Purple" then
          purpleSound:play()
          bPurplePopped = true
        elseif c.type == "Black" then
          blackSound:play()
          bBlackPopped = true
        elseif c.type == "Brown" then
          brownSound:play()
          bBrownPopped = true
        elseif c.type == "White" then
          whiteSound:play()
          bWhitePopped = true
        elseif c.type == "Red" then
          redSound:play()
          bRedPopped = true
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
      love.graphics.setColor(1, 1, 1)
      love.graphics.draw(colorBackgroundPic, 0, 0, nil, scaleX, scaleY)
      drawUI()
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(rainbow, winWidth/2, winHeight/2, nil, scaleX*1.5, scaleY*1.5)
      drawClouds()
      drawBirds()
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
          love.graphics.setColor(1, .5, 0)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "Yellow" then
          love.graphics.setColor(1, .85, 0)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "Pink" then
          love.graphics.setColor(1, .5, .9)
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
          love.graphics.setColor(.7, .4, 0)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
        elseif b.type == "White" then
          love.graphics.setColor(1, 1, 1, 1)
          love.graphics.draw(whiteBubble, b.x, b.y - 100, 0, 1.75)
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
