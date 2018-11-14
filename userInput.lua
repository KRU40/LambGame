touchid = 0

function love.mousepressed(x, y, button, isTouch)
  if button == 1 and gameState == 1 then
    for i, b in ipairs(birds) do
      if distanceBetween(b.x + 50, b.y + 45, x, y) < 50 then
        score = score + 2
        chirpSound:play()
        chirpSound:setVolume(.3)
        b.popped = true
        love.system.vibrate(.1)
      end
    end
  end

  if button == 1 and gameState == 2 then
    for i, n in ipairs(famBubbles) do
      if distanceBetween(n.x + bubblePic:getWidth()/4, n.y + bubblePic:getHeight()/4, love.mouse.getX(), love.mouse.getY()) < 150 then
        score = score + 1
        buttonSound:play()
        n.popped = true
        love.system.vibrate(.1)
      end
    end

    for i, b in ipairs(birds) do
      if distanceBetween(b.x + 50, b.y + 45, x, y) < 50 then
        score = score + 2
        chirpSound:play()
        chirpSound:setVolume(.3)
        b.popped = true
        love.system.vibrate(.1)
      end
    end
  end

  if button == 1 and gameState == 3 then
    for i, b in ipairs(numBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, love.mouse.getX(), love.mouse.getY()) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
        love.system.vibrate(.1)
      end
    end

    for i, b in ipairs(birds) do
      if distanceBetween(b.x + 50, b.y + 45, x, y) < 50 then
        score = score + 2
        chirpSound:play()
        chirpSound:setVolume(.3)
        b.popped = true
        love.system.vibrate(.1)
      end
    end
  end

  if button == 1 and gameState == 4 then
    for i, b in ipairs(colorBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
        love.system.vibrate(.1)
      end
    end

    for i, b in ipairs(birds) do
      if distanceBetween(b.x + 50, b.y + 45, x, y) < 50 then
        score = score + 2
        chirpSound:play()
        chirpSound:setVolume(.3)
        b.popped = true
        love.system.vibrate(.1)
      end
    end
  end

  if button == 1 and gameState == 5 then
    for i, b in ipairs(shapeBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
        love.system.vibrate(.1)
      end
    end

    for i, b in ipairs(birds) do
      if distanceBetween(b.x + 50, b.y + 45, x, y) < 50 then
        score = score + 2
        chirpSound:play()
        chirpSound:setVolume(.3)
        b.popped = true
        love.system.vibrate(.1)
      end
    end
end
    if button == 1 and gameState == 6 then
      for i, b in ipairs(alphabetBubbles) do
        if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, x, y) < 150 then
          score = score + 1
          buttonSound:play()
          b.popped = true
          love.system.vibrate(.1)
        end
      end

      for i, b in ipairs(birds) do
        if distanceBetween(b.x + 50, b.y + 45, x, y) < 50 then
          score = score + 2
          chirpSound:play()
          chirpSound:setVolume(.3)
          b.popped = true
          love.system.vibrate(.1)
        end
      end
  end

  if gameState == 1 then
    --Family bubble game chosen
    if distanceBetween(midBubblePos * .33 + 10, bubbleYPos + 60, love.mouse.getX(), love.mouse.getY()) < 60 then
      buttonSound:play()
      clapSound:play()
      bFirstGame = false
      score = 0
      timer = 30
      onGameBegin = true
      gameState = 2
      love.system.vibrate(.1)
    end

    for i, b in ipairs(birds) do
      if distanceBetween(b.x + birdPic1:getHeight(), b.y + birdPic1:getHeight(), x, y) < 50 then
        score = score + 2
        chirpSound:play()
        chirpSound:setVolume(.3)
        b.popped = true
        love.system.vibrate(.1)
      end
    end
    --Number bubble game chosen
    if distanceBetween(midBubblePos * .66 + 10, bubbleYPos + 60, love.mouse.getX(), love.mouse.getY()) < 60 then
      buttonSound:play()
      clapSound:play()
      bFirstGame = false
      score = 0
      timer = 30
      onGameBegin = true
      gameState = 3
      love.system.vibrate(.1)
    end

    --Color bubble game chosen
    if distanceBetween(midBubblePos * .99 + 10, bubbleYPos + 60, love.mouse.getX(), love.mouse.getY()) < 60 then
      buttonSound:play()
      clapSound:play()
      bFirstGame = false
      score = 0
      timer = 30
      onGameBegin = true
      gameState = 4
      love.system.vibrate(.1)
    end

    --Alphabet bubble game chosen
    if distanceBetween(midBubblePos * 1.33 + 10, bubbleYPos + 60, love.mouse.getX(), love.mouse.getY()) < 60 then
      buttonSound:play()
      clapSound:play()
      bFirstGame = false
      score = 0
      timer = 30
      onGameBegin = true
      gameState = 6
      love.system.vibrate(.1)
    end

    --Shape bubble game chosen
    if distanceBetween(midBubblePos * 1.66 + 10, bubbleYPos + 60, love.mouse.getX(), love.mouse.getY()) < 60 then
      buttonSound:play()
      clapSound:play()
      bFirstGame = false
      score = 0
      timer = 30
      onGameBegin = true
      gameState = 5
      love.system.vibrate(.1)
    end
  end
end--]]

function love.mousereleased(x, y, button, isTouch)
  --love.graphics.printf("Released", 50, 50)
end

function love.touchpressed(id, x, y, dx, dy, pressure)

  if gameState == 1 then
    for i, b in ipairs(birds) do
      if distanceBetween(b.x, b.y, x, y) < 50 then
        score = score + 2
        buttonSound:play()
        b.popped = true
        love.system.vibrate(.1)
      end

      for i, b in ipairs(birds) do
        if distanceBetween(b.x + 50, b.y + 45, x, y) < 50 then
          score = score + 2
          chirpSound:play()
          chirpSound:setVolume(.3)
          b.popped = true
          love.system.vibrate(.1)
        end
      end
    end
    --Family bubble game chosen
    if distanceBetween(midBubblePos * .33 + 10, bubbleYPos + 60, x, y) < 60 then
      buttonSound:play()
      clapSound:play()
      bFirstGame = false
      score = 0
      timer = 30
      onGameBegin = true
      gameState = 2
      love.system.vibrate(.1)
    end

    --Number bubble game chosen
    if distanceBetween(midBubblePos * .66 + 10, bubbleYPos + 60, love.mouse.getX(), love.mouse.getY()) < 60 then
      buttonSound:play()
      clapSound:play()
      bFirstGame = false
      score = 0
      timer = 30
      onGameBegin = true
      gameState = 3
      love.system.vibrate(.1)
    end

    --Number color game chosen
    if distanceBetween(midBubblePos * .99 + 10, bubbleYPos + 60, love.mouse.getX(), love.mouse.getY()) < 60 then
      buttonSound:play()
      clapSound:play()
      bFirstGame = false
      score = 0
      timer = 30
      onGameBegin = true
      gameState = 4
      love.system.vibrate(.1)
    end

    --Shape bubble game chosen
    if distanceBetween(midBubblePos * 1.66 + 10, bubbleYPos + 60, love.mouse.getX(), love.mouse.getY()) < 60 then
      buttonSound:play()
      clapSound:play()
      bFirstGame = false
      score = 0
      timer = 30
      onGameBegin = true
      gameState = 5
      love.system.vibrate(.1)
    end
  end

  if gameState == 2 then
    for i, n in ipairs(famBubbles) do
      if distanceBetween(n.x + bubblePic:getWidth()/4, n.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        n.popped = true
        love.system.vibrate(.1)
      end

    for i, b in ipairs(birds) do
      if distanceBetween(b.x + 50, b.y + 45, x, y) < 50 then
        score = score + 2
        chirpSound:play()
        chirpSound:setVolume(.3)
        b.popped = true
        love.system.vibrate(.1)
      end
    end
  end

  if gameState == 3 then
    for i, b in ipairs(numBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
        love.system.vibrate(.1)
      end
    end

    for i, b in ipairs(birds) do
      if distanceBetween(b.x + 50, b.y + 45, x, y) < 50 then
        score = score + 2
        chirpSound:play()
        chirpSound:setVolume(.3)
        b.popped = true
        love.system.vibrate(.1)
      end
    end
  end

  if gameState == 4 then
    for i, b in ipairs(colorBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
        love.system.vibrate(.1)
      end
    end

    for i, b in ipairs(birds) do
      if distanceBetween(b.x + 50, b.y + 45, x, y) < 50 then
        score = score + 2
        chirpSound:play()
        chirpSound:setVolume(.3)
        b.popped = true
        love.system.vibrate(.1)
      end
    end
  end

  if gameState == 5 then
    for i, b in ipairs(shapeBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
        love.system.vibrate(.1)
      end
    end

    for i, b in ipairs(birds) do
      if distanceBetween(b.x + 50, b.y + 45, x, y) < 50 then
        score = score + 2
        chirpSound:play()
        chirpSound:setVolume(.3)
        b.popped = true
        love.system.vibrate(.1)
      end
    end
  end
end

function checkBird()
  for i, b in ipairs(birds) do
    if distanceBetween(b.x + birdPic1:getHeight(), b.y + birdPic1:getHeight(), x, y) < 50 then
      score = score + 2
      buttonSound:play()
      b.popped = true
      love.system.vibrate(.1)
    end
  end
end
end
