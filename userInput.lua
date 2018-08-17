
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

  if gameState == 1 then
    if distanceBetween(200 + 94.5, love.graphics.getHeight()/2.5 + 94.5, love.mouse.getX(), love.mouse.getY()) < 94.5 then
      love.graphics.draw(bubblePic, 200, love.graphics.getHeight()/2.5, 0, 1.75)
      love.graphics.setColor(0, 0, 0)
      buttonSound:play()
      bFirstGame = false
      gameState = 2
      score = 0
      onGameBegin = true
      gameState = 2
    end

    if distanceBetween(400 + 94.5, love.graphics.getHeight()/2.5 + 94.5, love.mouse.getX(), love.mouse.getY()) < 94.5 then
      buttonSound:play()
      bFirstGame = false
      gameState = 2
      score = 0
      timer = 30
      onGameBegin = true
      gameState = 3
    end
  end

  if distanceBetween(exitButton.x, exitButton.y, love.mouse.getX(), love.mouse.getY()) < exitButton.size then
    love.event.quit(exitstatus)
  end
end
