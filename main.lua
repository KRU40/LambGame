function love.load()
  love.window.setFullscreen(true)
  --love.graphics.setBackgroundColor(1, .45, .5)

  --Include .lua files
  require('familyBubbles')
  require('numberBubbles')
  require('mainMenu')
  require('userInput')

  --Loading Files
  highScore = love.filesystem.read("highScore.txt")
  welcomeSound = love.audio.newSource("bubbleGame.wav", "static")
  buttonSound = love.audio.newSource("button.wav", "static")
  clapSound = love.audio.newSource("claps.wav", "static")
  calmMusic = love.audio.newSource("calm.mp3", "static")
  menuBackground = love.graphics.newImage("menuBackground.png")
  menuTitle = love.graphics.newImage("mainMenuTitle.png")

  loadNumBubble()
  loadFamilyBubble()

  --Declaring variables
  winWidth = love.graphics.getWidth()
  winHeight = love.graphics.getHeight()
  exitButton = {}
  exitButton.size = 20
  exitButton.x = winWidth - exitButton.size
  exitButton.y = winHeight - exitButton.size
  score = 0
  timer = 30
  bubbleSpawnTimer = 1
  endTimer = 0
  gameState = 1
  bFirstGame = true
  bReadyToClap = true
  bDirPos = true
  onGameBegin = false

  --Start Music
  calmMusic:play()
  welcomeSound:play()

  --Set Fonts
  myFont = love.graphics.newFont(40)
  largeFont = love.graphics.newFont(75)
end

function love.update(dt)
  if gameState == 1 then
    --Stuff
  end

  if gameState == 2 then
    love.graphics.setFont(myFont)
    if onGameBegin == true then
      spawnFamilyBubble()
      onGameBegin = false
    end

    updateFamilyBubbles(dt)
    bubbleSpawnTimer = bubbleSpawnTimer - dt

    if bubbleSpawnTimer <= 0 then
      spawnFamilyBubble()
      bubbleSpawnTimer = 1
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
    end
  end

    if gameState == 3 then
      love.graphics.setFont(myFont)
      if onGameBegin == true then
        --spawnNumBubble()
        onGameBegin = false
      end

      updateNumBubbles(dt)
      bubbleSpawnTimer = bubbleSpawnTimer - dt

      if bubbleSpawnTimer <= 0 then
        --spawnNumBubble()
        bubbleSpawnTimer = 1
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
    end
  end

  if gameState == 1 then
     if bFirstGame ~= true then
       if bReadyToClap == true then
         bReadyToClap = false
         clapSound:play()
       end
     end
  end
end

function love.draw()
  love.graphics.setColor(0, .73, .95)

  if gameState == 1 then
    drawMainMenu()
  end

  if gameState == 2 then
    timer = 30
    drawFamilyBubbles()
    love.graphics.setColor(0, .73, .95)
    love.graphics.print("Score = " .. score, 0, 0)
    love.graphics.printf("Time: " .. math.ceil(timer), 0, 0, love.graphics.getWidth(), "right")
  end

  if gameState == 3 then
    drawNumBubble()
    love.graphics.setColor(0, .73, .95)
    love.graphics.print("Score = " .. score, 0, 0)
    love.graphics.printf("Time: " .. math.ceil(timer), 0, 0, love.graphics.getWidth(), "right")
  end

    love.graphics.setColor(50, 0, 0)
    love.graphics.circle("fill", exitButton.x, exitButton.y, exitButton.size)
end

function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2-y1)^2 + (x2 - x1)^2)
end
