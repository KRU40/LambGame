numBubbles = {}

function loadNumBubble()
  numberBackgroundPic = love.graphics.newImage("numberBackground.png")
  onePic = love.graphics.newImage("one.png")
  twoPic = love.graphics.newImage("two.png")
  threePic = love.graphics.newImage("three.png")
  fourPic = love.graphics.newImage("four.png")
  fivePic = love.graphics.newImage("five.png")
  sixPic = love.graphics.newImage("six.png")
  sevenPic = love.graphics.newImage("seven.png")
  eightPic = love.graphics.newImage("eight.png")
  ninePic = love.graphics.newImage("nine.png")
  tenPic = love.graphics.newImage("ten.png")

  oneSound = love.audio.newSource("one.wav", "static")
  twoSound = love.audio.newSource("two.wav", "static")
  lambTwoSound = love.audio.newSource("liamTwo.wav", "static")
  threeSound = love.audio.newSource("three.wav", "static")
  fourSound = love.audio.newSource("four.wav", "static")
  fiveSound = love.audio.newSource("five.wav", "static")
  sixSound = love.audio.newSource("six.wav", "static")
  sevenSound = love.audio.newSource("seven.wav", "static")
  eightSound = love.audio.newSource("eight.wav", "static")
  nineSound = love.audio.newSource("nine.wav", "static")
  tenSound = love.audio.newSource("ten.wav", "static")
  bubbleNumSpawnTimer = 1
end

function spawnNumBubble()
  local numBubble = {}
  numBubble.size = 100
  numBubble.x = math.random(100, love.graphics.getWidth() - numBubble.size)
  numBubble.y = love.graphics.getHeight() + numBubble.size
  numBubble.speed = math.random(100, 150)
  numBubble.popped = false
  randomNumBubble = math.random(1, 10)

  if randomNumBubble == 1 then
    numBubble.type = "1"

  elseif randomNumBubble == 2 then
    numBubble.type = "2"

  elseif randomNumBubble == 3 then
    numBubble.type = "3"

  elseif randomNumBubble == 4 then
    numBubble.type = "4"

  elseif randomNumBubble == 5 then
    numBubble.type = "5"

  elseif randomNumBubble == 6 then
    numBubble.type = "6"

  elseif randomNumBubble == 7 then
    numBubble.type = "7"

  elseif randomNumBubble == 8 then
    numBubble.type = "8"

  elseif randomNumBubble == 9 then
    numBubble.type = "9"

  else
    numBubble.type = "10"
  end

  table.insert(numBubbles, numBubble)
end

function updateNumBubbles(dt)
  bubbleNumSpawnTimer = bubbleNumSpawnTimer - dt
  if bubbleNumSpawnTimer <= 0 then
    spawnNumBubble()
    bubbleNumSpawnTimer = 2
  end

  for i, n in ipairs(numBubbles) do
    n.y = n.y - n.speed * dt
  end

  for i=#numBubbles, 1, -1 do
    local n = numBubbles[i]
    if n.popped == true then
      table.remove(numBubbles, i)

      if n.type == "1" then
        oneSound:play()
        bOnePopped = true

      elseif n.type == "2" then
        bTwoPopped = true
        local randomTwo = math.random(1, 2)
        if randomTwo == 1 then
          twoSound:play()

        else
          lambTwoSound:play()
        end

      elseif n.type == "3" then
        threeSound:play()
        bThreePopped = true

      elseif n.type == "4" then
        fourSound:play()
        bFourPopped = true

      elseif n.type == "5" then
        fiveSound:play()
        bFivePopped = true

      elseif n.type == "6" then
        sixSound:play()
        bSixPopped = true

      elseif n.type == "7" then
        sevenSound:play()
        bSevenPopped = true

      elseif n.type == "8" then
        eightSound:play()
        bEightPopped = true

      elseif n.type == "9" then
        nineSound:play()
        bNinePopped = true

      elseif n.type == "10" then
        tenSound:play()
        bTenPopped = true
      end
    end

    if n.y < 0 - n.size then
      table.remove(numBubbles, i)
    end
  end

  --Update game timer.
  if timer > 0 then
    timer = timer - dt
  end

  if timer <= 0 then
    resetNumber()
  end
end

function resetNumber()
  resetNumBools()
  timer = 0
  bReadyToClap = true
  gameState = 1
  if score > tonumber(highScore) then
    love.filesystem.write('highScore.txt', score)
  end

  for i=#numBubbles, 1, -1 do
    table.remove(numBubbles, i)
  end
end

function drawNumBubble()
  love.graphics.setColor(1, 1, 1)
  love.graphics.draw(numberBackgroundPic, 0, 0, nil, scaleX, scaleY)
  drawUI()
  drawClouds()
  drawBirds()

  for i, n in ipairs(numBubbles) do
    if n.type == "1" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(onePic, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "2" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(twoPic, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "3" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(threePic, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "4" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(fourPic, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "5" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(fivePic, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "6" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(sixPic, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "7" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(sevenPic, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "8" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(eightPic, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "9" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(ninePic, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    else
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(tenPic, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)
    end
      drawQuitButton()
  end

  love.graphics.setColor(0, .73, .95)
--  love.graphics.print("Score = " .. score, 0, 0)
--  love.graphics.printf("Time: " .. math.ceil(timer), 0, 0, love.graphics.getWidth(), "right")
end
