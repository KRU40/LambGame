menuBubbles = {}

function loadMainMenu()
  --Loading files
  highScore = love.filesystem.read("highScore.txt")
  welcomeSound = love.audio.newSource("bubbleGame.wav", "static")
  buttonSound = love.audio.newSource("button.wav", "static")
  clapSound = love.audio.newSource("claps.wav", "static")
  chirpSound = love.audio.newSource("chirp.wav", "static")
  --calmMusic = love.audio.newSource("calm.mp3", "static")
  calmMusic = love.audio.newSource("Fantasy Game Loop.wav", "static")
  menuBackground = love.graphics.newImage("menuBackground.png")
  menuTitle = love.graphics.newImage("mainMenuTitle.png")
  bubbleOutline = love.graphics.newImage("bubbleImageOut.png")

  --variables
  bubbleYPos = winHeight/2.5 --This may need to be refined to account for pixelScale
  midBubblePos = winWidth/2 * pixelScale
  bubbleSep = 125 * pixelScale

  familyMenuBubble = createMenuBubble(midBubblePos * .33, bubbleYPos, "family")
  numberMenuBubble = createMenuBubble(midBubblePos * .66, bubbleYPos, "number")
  colorMenuBubble = createMenuBubble(midBubblePos, bubbleYPos, "color")
  animalsMenuBubble = createMenuBubble(midBubblePos * 1.33, bubbleYPos, "abc")
  shapesMenuBubble = createMenuBubble(midBubblePos * 1.66, bubbleYPos, "shapes")

end

function drawMainMenu()
  --love.graphics.setColor(1, 1, 1)
  love.graphics.draw(menuBackground, 0, 0, nil, scaleX, scaleY)
  --love.graphics.print("High Score = " .. highScore, 0,x 0)
  --drawQuitButton()
  drawClouds()
  drawBirds()

  love.graphics.setFont(myFont)
  love.graphics.draw(menuTitle, winWidth/2, winHeight/5, 0, .6, nil, 950/2)

  for i, b in ipairs (menuBubbles) do
    if b.category == "family" then
      love.graphics.setColor(1, 1, 1, .8)
      love.graphics.draw(bubbleOutline, b.x - b.size/2, b.y, 0, b.scale)
      love.graphics.setColor(0, 0, 0)
      love.graphics.setFont(myFont)
      love.graphics.print("Family", b.x - b.size/3, b.y + 35, 0)

    elseif b.category == "number" then
      love.graphics.setColor(1, 1, 1, .8)
      love.graphics.draw(bubbleOutline, b.x - b.size/2, b.y, 0, b.scale)
      love.graphics.setColor(0, 0, 0)
      love.graphics.setFont(myFont)
      love.graphics.print("Numbers", b.x - b.size/2.2, b.y + 35)

    elseif b.category == "color" then
      love.graphics.setColor(1, 1, 1, .8)
      love.graphics.draw(bubbleOutline, b.x - b.size/2, b.y, 0, b.scale)
      love.graphics.setColor(0, 0, 0)
      love.graphics.setFont(myFont)
      love.graphics.print("Color", b.x - b.size/3.5, b.y + 35)

    elseif b.category == "abc" then
      love.graphics.setColor(1, 1, 1, .8)
      love.graphics.draw(bubbleOutline, b.x - b.size/2, b.y, 0, b.scale)
      love.graphics.setColor(0, 0, 0)
      love.graphics.setFont(myFont)
      love.graphics.print("Alphabet", b.x - b.size/2.2, b.y + 35)

    elseif b.category == "shapes" then
      love.graphics.setColor(1, 1, 1, .8)
      love.graphics.draw(bubbleOutline, b.x - b.size/2, b.y, 0, b.scale)
      love.graphics.setColor(0, 0, 0)
      love.graphics.setFont(myFont)
      love.graphics.print("Shapes", b.x - b.size/2.75, b.y + 35)
    end
  end
end

function createMenuBubble(x, y, category)
  local menuBubble = {}
  menuBubble.scale = .85
  menuBubble.size = 108  * pixelScale
  menuBubble.x = x * pixelScale
  menuBubble.y = y * pixelScale
  menuBubble.category = category
  table.insert(menuBubbles, menuBubble)
end
