holdTime = 4
bExitHeld = false

function loadQuitButton()
  rectangleBack = love.graphics.newImage("rectangle.png")
  holdText = love.graphics.newImage("holdText.png")
  oneQuitPic = love.graphics.newImage("one.png")
  twoQuitPic = love.graphics.newImage("two.png")
  threeQuitPic = love.graphics.newImage("three.png")
  homeIcon = love.graphics.newImage("homeIcon.png")
end

function updateQuitButton(dt)
  if love.mouse.isDown(1) and distanceBetween(exitButton.x, exitButton.y, love.mouse.getX(), love.mouse.getY()) < exitButton.size then
    holdTime = holdTime - dt
    bExitHeld = true

  else
    holdTime = 4
    bExitHeld = false
  end

  if holdTime < 0 then
    gameState = nil
    gameState = 1
    bExitHeld = false
    resetFamily()
    resetColor()
    resetNumber()
    resetShape()
  end
end

function drawQuitButton()
  if gameState ~= 1 then
    love.graphics.setColor(1, 1, 1, .55)
    love.graphics.draw(homeIcon, exitButton.x - 15 * pixelScale, exitButton.y  -  15 * pixelScale, nil, .25, .25)
    if bExitHeld == true then
      love.graphics.setColor(1, 1, 1, .45)
      love.graphics.draw(rectangleBack, winWidth - 200 * pixelScale, winHeight - 60 * pixelScale, nil, 1.4, .5)
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(holdText, winWidth - 200 * pixelScale, winHeight - 60 * pixelScale, nil, .3, .3)
      love.graphics.setColor(1, 1, 1, .55)
      love.graphics.draw(homeIcon, exitButton.x - 100 * pixelScale, exitButton.y  -  100 * pixelScale, nil, .45, .45)
      love.graphics.setColor(1, 0, 0)
      if holdTime > 3 then
        love.graphics.setColor(1, 0, 0)
        love.graphics.draw(threeQuitPic, exitButton.x - 93 * pixelScale,exitButton.y - 93 * pixelScale, nil, .15, .15)
        --buttonSound:play()
      elseif holdTime > 2 then
        love.graphics.setColor(1, 0, 0)
        love.graphics.draw(twoQuitPic, exitButton.x - 93 * pixelScale,exitButton.y - 93 * pixelScale, nil, .15, .15)
        --buttonSound:play()
      elseif holdTime > 1 then
        love.graphics.setColor(1, 0, 0)
        love.graphics.draw(oneQuitPic, exitButton.x - 93 * pixelScale,exitButton.y - 93 * pixelScale, nil, .15, .15)
        buttonSound:play()
        love.system.vibrate(.1)
      end
    end
  end
end
