function love.load()
  love.window.setFullscreen(true)
  --Loading Files
  welcomeSound = love.audio.newSource("bubbleGame.wav", "static")
  catSound = love.audio.newSource("meow.wav", "static")
  buttontSound = love.audio.newSource("button.wav", "static")
  mamaSound = love.audio.newSource("mama.wav", "static")
  clapSound = love.audio.newSource("claps.wav", "static")
  calmMusic = love.audio.newSource("calm.mp3", "static")
  cat = love.graphics.newImage("walle.jpg")
  mamaPic = love.graphics.newImage("mamaPic.jpg")
  bubblePic = love.graphics.newImage("Thumb_Bubble.png")
  myFont = love.graphics.newFont(40)
  love.graphics.setFont(myFont)

  --Declaring variables fdd
  winWidth = love.graphics.getWidth()
  winHeight = love.graphics.getHeight()

  button = {}
  exitButton = {}

  button.size = 100
  exitButton.size = 20

  button.x = winWidth/2
  button.y = winHeight/2
  exitButton.x = winWidth - exitButton.size
  exitButton.y = winHeight - exitButton.size

  score = 0
  timer = 60
  endTimer = 0
  gameState = 1
  bFirstGame = true
  bReadyToClap = true
  bDirPos = true

  --love.window.setFullscreen(true)

  --Start Music
  calmMusic:play()
  welcomeSound:play()
end

function love.update(dt)
  if gameState == 2 then
    if button.x < love.graphics.getWidth()-100 and bDirPos == true then
      button.x = button.x + 100 * dt
    elseif button.x > 100 and bDirPos == false then
      button.x = button.x - 100 * dt
    elseif button.x >= love.graphics.getWidth() - 100 then
      bDirPos = false
    elseif button.x <= 100 then
      bDirPos = true
    end

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
  if gameState == 1 then
    highScore = love.filesystem.read("highScore.txt")
    love.graphics.setColor(137, 207, 240)
    love.graphics.print("High Score = " .. highScore, 0, 0)
    love.graphics.printf("Welcome to Liam's Game! Click to begin!", 0, love.graphics.getHeight()/2, love.graphics.getWidth(), "center")
  end

  if gameState == 2 then
    --love.graphics.draw(cat, button.x-60, button.y-62, 0, .05)
    love.graphics.setColor(0, 127, 80)
    love.graphics.circle("line", button.x, button.y, button.size)
    love.graphics.setColor(255, 255,255)
    love.graphics.print("Score = " .. score, 0, 0)
    love.graphics.printf("Get the Momma!", 0, 0, love.graphics.getWidth(), "center")
    love.graphics.printf("Time: " .. math.ceil(timer), 0, 0, love.graphics.getWidth(), "right")
    love.graphics.draw(bubblePic, button.x - button.size - 32, button.y - button.size - 27, 0, 1.75)
    love.graphics.draw(mamaPic, button.x-55, button.y-60, 0, .2)
  end
    love.graphics.setColor(50, 0, 0)
    love.graphics.circle("fill", exitButton.x, exitButton.y, exitButton.size)
end

function love.mousepressed(x, y, b, isTouch)
  if b == 1 and gameState == 2 then
    bFirstGame = false
    if distanceBetween(button.x, button.y, love.mouse.getX(), love.mouse.getY()) < button.size then
      score = score + 1
      button.x = love.math.random(button.size, winWidth - button.size)
      button.y = love.math.random(button.size, winHeight - button.size)
      --mamaSound:play()
      buttontSound:play()
    end
  end

  if gameState == 1 then
    gameState = 2
    score = 0
    timer = 60
  end

  if distanceBetween(exitButton.x, exitButton.y, love.mouse.getX(), love.mouse.getY()) < exitButton.size then
    love.event.quit(exitstatus)
  end
end

function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2-y1)^2 + (x2 - x1)^2)
end
