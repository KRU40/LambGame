function love.load()
  --love.window.setFullscreen(true)
  --love.graphics.setBackgroundColor(1, .45, .5)

  --Include .lua files
  require('clouds')
  require('familyBubbles')
  require('numberBubbles')
  require('colorBubbles')
  require('shapeBubbles')
  require('mainMenu')
  require('userInput')
  require('UI')
  require('birds')
  require('quitButton')
  require('alphabet')
  --require('clouds')

  --Declaring variables
  bubblePic = love.graphics.newImage("bubbleImageOut.png")
  osString = love.system.getOS()
  pixelScale = love.window.getDPIScale( )
  winWidth = love.graphics.getWidth() * pixelScale
  winHeight = love.graphics.getHeight() * pixelScale
  scaleX = winWidth/1920
  scaleY = winHeight/1080
  exitButton = {}
  exitButton.size = 20
  exitButton.x = winWidth - exitButton.size
  exitButton.y = winHeight - exitButton.size
  score = 0
  timer = 30
  endTimer = 0
  gameState = 1
  bFirstGame = true
  bReadyToClap = true
  bDirPos = true
  onGameBegin = false
  bubbleSpawnTimer = 1

  --Loading Files
  loadMainMenu()
  loadClouds()
  loadNumBubble()
  loadFamilyBubble()
  loadColorBubbles()
  loadShapeBubbles()
  loadUI()
  loadBirds()
  loadQuitButton()
  loadAlphabet()


  --Start Music
  calmMusic:setLooping(true)
  calmMusic:play()
  calmMusic:setVolume(.45)
  --welcomeSound:play()

  --Set Fonts
  myFont = love.graphics.newFont(18)
  largeFont = love.graphics.newFont(75)
end

function love.update(dt)
  if gameState == 0 then
    love.event.quit()
  end

  --updateUserInput()
  if gameState == 1 then
    updateBirds(dt)
    updateClouds(dt)
    updateQuitButton(dt)

    if bFirstGame ~= true then
      if bReadyToClap == true then
        bReadyToClap = false
        clapSound:play()
      end
    end
  end

  --Update Family bubble game and game timer TODO game timer new module
  if gameState == 2 then
    love.graphics.setFont(myFont)
    updateBirds(dt)
    updateClouds(dt)
    updateQuitButton(dt)
    if onGameBegin == true then
      onGameBegin = false
    end

    updateFamilyBubbles(dt)
  end

  --Update number bubbles
  if gameState == 3 then
    love.graphics.setFont(myFont)
    updateBirds(dt)
    updateClouds(dt)
    updateQuitButton(dt)
    if onGameBegin == true then
      onGameBegin = false
    end

    updateNumBubbles(dt)
  end

  --Update color bubbles
  if gameState == 4 then
    love.graphics.setFont(myFont)
    updateBirds(dt)
    updateClouds(dt)
    updateQuitButton(dt)
    if onGameBegin == true then
      onGameBegin = false
    end

    updateColorBubbles(dt)
  end

  if gameState == 5 then
    love.graphics.setFont(myFont)
    updateBirds(dt)
    updateClouds(dt)
    updateQuitButton(dt)
    if onGameBegin == true then
      onGameBegin = false
    end

    updateShapeBubbles(dt)
  end

  if gameState == 6 then
    love.graphics.setFont(myFont)
    updateBirds(dt)
    updateClouds(dt)
    updateQuitButton(dt)
    if onGameBegin == true then
      onGameBegin = false
    end

    updateAlphabet(dt)
  end
end

function love.draw()
  love.graphics.setColor(0, .73, .95)

  --Draw Main menu
  if gameState == 1 then
    drawMainMenu()
  end

  --Draw Family Bubbles
  if gameState == 2 then
    drawFamilyBubbles()
  end

  --Draw Number Bubbles
  if gameState == 3 then
    drawNumBubble()
  end

  --Draw Number Bubbles
  if gameState == 4 then
    drawColorBubbles()
  end

  --Draw Shape Bubbles
  if gameState == 5 then
    drawShapeBubbles()
  end

  --Draw Shape Bubbles
  if gameState == 6 then
    drawAlphabet()
  end

  --love.graphics.setColor(50, 0, 0)
  --love.graphics.circle("fill", exitButton.x, exitButton.y, exitButton.size)
end

function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2-y1)^2 + (x2 - x1)^2)
end
