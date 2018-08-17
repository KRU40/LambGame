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
  bubbleNumSpawnTimer = 1
end

function spawnNumBubble()
  local numBubble = {}
  numBubble.size = 100
  numBubble.x = math.random(100, love.graphics.getWidth() - numBubble.size)
  numBubble.y = love.graphics.getHeight() + numBubble.size
  numBubble.speed = math.random(100, 300)
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
    bubbleNumSpawnTimer = 1
  end

  for i, n in ipairs(numBubbles) do
    n.y = n.y - n.speed * dt
  end

  for i=#numBubbles, 1, -1 do
    local n = numBubbles[i]
    if n.popped == true or n.y < 0 - n.size then
      table.remove(numBubbles, i)
    end
  end
end

function drawNumBubble()
  love.graphics.setColor(1, 1, 1)
  love.graphics.draw(numberBackgroundPic, 0, 0)

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
  end
end
