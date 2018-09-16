
function love.mousepressed(x, y, button, isTouch)
  if button == 1 and gameState == 2 then
    for i, n in ipairs(famBubbles) do
      if distanceBetween(n.x + bubblePic:getWidth()/4, n.y + bubblePic:getHeight()/4, love.mouse.getX(), love.mouse.getY()) < 150 then
        score = score + 1
        buttonSound:play()
        n.popped = true
      end
    end
  end

  if button == 1 and gameState == 3 then
    for i, b in ipairs(numBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, love.mouse.getX(), love.mouse.getY()) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
      end
    end
  end

  if button == 1 and gameState == 4 then
    for i, b in ipairs(colorBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
      end
    end
  end

  if button == 1 and gameState == 5 then
    for i, b in ipairs(shapeBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
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
    end
  end

  --User has chosen to exit TODO create a better design for this
  if distanceBetween(exitButton.x, exitButton.y, love.mouse.getX(), love.mouse.getY()) < exitButton.size then
    --love.event.quit()
    --os.quit()
    gameState = 0
  end
end--]]

function love.touchpressed(id, x, y, dx, dy, pressure)
  if gameState == 1 then
    --Family bubble game chosen
    if distanceBetween(midBubblePos * .33 + 10, bubbleYPos + 60, x, y) < 60 then
      buttonSound:play()
      clapSound:play()
      bFirstGame = false
      score = 0
      timer = 30
      onGameBegin = true
      gameState = 2
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
    end
  end

  if gameState == 2 then
    for i, n in ipairs(famBubbles) do
      if distanceBetween(n.x + bubblePic:getWidth()/4, n.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        n.popped = true
      end
    end
  end

  if gameState == 3 then
    for i, b in ipairs(numBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
      end
    end
  end

  if gameState == 4 then
    for i, b in ipairs(colorBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
      end
    end
  end

  if gameState == 5 then
    for i, b in ipairs(shapeBubbles) do
      if distanceBetween(b.x + bubblePic:getWidth()/4, b.y + bubblePic:getHeight()/4, x, y) < 150 then
        score = score + 1
        buttonSound:play()
        b.popped = true
      end
    end
  end

  --User has chosen to exit TODO find a better design for this
  if distanceBetween(exitButton.x, exitButton.y, love.mouse.getX(), love.mouse.getY()) < exitButton.size then
    love.quit()
    --os.quit()
    gameState = nil
  end
end
