
famBubbles = {}

function loadFamilyBubble()
  --Loading sounds
  catSound = love.audio.newSource("meow.wav", "static")
  mamaSound = love.audio.newSource("mama.wav", "static")
  dadaSound = love.audio.newSource("dada.wav", "static")
  lambSound = love.audio.newSource("lamb.wav", "static")
  yayaSound = love.audio.newSource("yaya.wav", "static")
  papaSound = love.audio.newSource("papa.wav", "static")
  addysonSound = love.audio.newSource("Addyson.wav", "static")
  grandmaAnnaSound = love.audio.newSource("grandmaAnna.wav", "static")
  --addySound = love.audio.newSource("addy.wav", "static")
  --maxSound = love.audio.newSource("max.wav", "static")
  --elijahSound = love.audio.newSource("elijah.wav", "static")
  --harperSound = love.audio.newSource("harper.wav", "static")
  auntyMegSound = love.audio.newSource("auntyMeg.wav", "static")
  --auntyEmSound = love.audio.newSource("auntyEm.wav", "static")
  grandpaRichSound = love.audio.newSource("grandpaRich.wav", "static")
  drewSound = love.audio.newSource("drew.wav", "static")
  grandmaAnnaSound = love.audio.newSource("grandmaAnna.wav", "static")
  debbieSound = love.audio.newSource("debbie.wav", "static")
  --grandmaShirleySound = love.audio.newSource("grandmaShirley.wav", "static")
  --grandmaBonnieSound = love.audio.newSource("grandmaBonnie.wav", "static")
  --grandmaBettySound = love.audio.newSource("grandmaBetty.wav", "static")
  --grandmaTanakaSound = love.audio.newSource("grandmaTanaka.wav", "static")
  --calebSound = love.audio.newSource("caleb.wav", "static")
  --elliotSound = love.audio.newSource("elliot.wav", "static")

  --Loading images
  familyBackgroundPic = love.graphics.newImage("familyBackground.png")
  bubblePic = love.graphics.newImage("bubble.png")
  catPic = love.graphics.newImage("walle.jpg")
  lambPic = love.graphics.newImage("lambPic.jpg")
  mamaPic = love.graphics.newImage("mamaPic.jpg")
  dadaPic = love.graphics.newImage("dadaPic.jpg")
  yayaPic = love.graphics.newImage("yayaPic.png")
  papaPic = love.graphics.newImage("papaPic.png")
  debbiePic = love.graphics.newImage("debbiePic.png")
  drewPic = love.graphics.newImage("drewPic.png")
  richPic = love.graphics.newImage("richPic.png")
  annaPic = love.graphics.newImage("annaPic.png")
  --bonniePic = love.graphics.newImage("bonniePic.png")
  --elijahPic = love.graphics.newImage("elijahPic.png")
  addyPic = love.graphics.newImage("addysonPic.png")
  --maxPic = love.graphics.newImage("maxPic.png")
  --harperPic = love.graphics.newImage("harperPic.png")
  --shirleyPic = love.graphics.newImage("shirlyPic.png")
  --bettyPic = love.graphics.newImage("bettyPic.png")
  --sharonPic = love.graphics.newImage("sharonPic.png")
  megPic = love.graphics.newImage("megPic.png")
  --emPic = love.graphics.newImage("emPic.png")
  --calebPic = love.graphics.newImage("calebPic.png")
  --elliotPic = love.graphics.newImage("elliotPic.png")
end

function spawnFamilyBubble()
  local bubble = {}
  bubble.size = 100
  bubble.x = math.random(100, love.graphics.getWidth() - bubble.size)
  bubble.y = love.graphics.getHeight() + bubble.size
  bubble.speed = math.random(50, 200)
  bubble.popped = false
  randomType = math.random(1, 12)

  if randomType == 1 then
    bubble.type = "Mama"

  elseif randomType == 2 then
    bubble.type = "Walle"

  elseif randomType == 3 then
    bubble.type = "Dada"

  elseif randomType == 4 then
    bubble.type = "Lamb"

  elseif randomType == 5 then
    bubble.type = "Yaya"

  elseif randomType == 6 then
    bubble.type = "Papa"

  elseif randomType == 7 then
    bubble.type = "Meg"

  elseif randomType == 8 then
    bubble.type = "Addy"

  elseif randomType == 9 then
    bubble.type = "Rich"

  elseif randomType == 10 then
    bubble.type = "Anna"

  elseif randomType == 11 then
    bubble.type = "Debbie"

  elseif randomType == 12 then
    bubble.type = "Andrew"

  else
    bubble.type = "Bubble"
  end

  table.insert(famBubbles, bubble)
end

function updateFamilyBubbles(dt)
  bubbleSpawnTimer = bubbleSpawnTimer - dt

  if bubbleSpawnTimer <= 0 then
    spawnFamilyBubble()
    bubbleSpawnTimer = 1
  end

  for i,b in ipairs(famBubbles) do
    b.y = b.y - b.speed * dt
  end

    for i=#famBubbles, 1, -1 do
      local b = famBubbles[i]
      if b.popped == true then
        table.remove(famBubbles, i)
        if b.type == "Mama" then
          mamaSound:play()

        elseif b.type == "Walle" then
          catSound:play()

        elseif b.type == "Dada" then
          dadaSound:play()

        elseif b.type == "Lamb" then
          lambSound:play()

        elseif b.type == "Yaya" then
          yayaSound:play()

        elseif b.type == "Papa" then
          papaSound:play()

        elseif b.type == "Meg" then
          auntyMegSound:play()

        elseif b.type == "Addy" then
          addysonSound:play()

        elseif b.type == "Rich" then
          grandpaRichSound:play()

        elseif b.type == "Anna" then
          grandmaAnnaSound:play()

        elseif b.type == "Debbie" then
          debbieSound:play()

        elseif b.type == "Andrew" then
          drewSound:play()
        end
      end

      if  b.y < 0 - b.size then
        table.remove(famBubbles, i)
      end
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

     for i=#famBubbles, 1, -1 do
       table.remove(famBubbles, i)
     end
   end
end

function drawFamilyBubbles()
  love.graphics.setColor(1, 1, 1)
  love.graphics.draw(familyBackgroundPic, 0, 0, nil, scaleX, scaleY)
  love.graphics.setColor(1, 1, 1, .75)
  drawClouds()
  love.graphics.setColor(1, 1, 1)
  for i,b in ipairs(famBubbles) do
    if b.type == "Mama" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(mamaPic, b.x + bubblePic:getWidth()/2.75, b.y - bubblePic:getHeight()/1.75, 0, .2)

    elseif b.type == "Walle" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(catPic, b.x + bubblePic:getWidth()/2.75, b.y - bubblePic:getHeight()/1.75, 0, .05)

    elseif b.type == "Dada" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(dadaPic, b.x + bubblePic:getWidth()/2.5, b.y - bubblePic:getHeight()/1.75, 0, .05)

    elseif b.type == "Lamb" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(lambPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .17)

    elseif b.type == "Yaya" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(yayaPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .07)

    elseif b.type == "Papa" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(papaPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .04)

    elseif b.type == "Meg" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(megPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    elseif b.type == "Addy" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(addyPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    elseif b.type == "Rich" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(richPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    elseif b.type == "Anna" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(annaPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    elseif b.type == "Debbie" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(debbiePic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    elseif b.type == "Andrew" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(drewPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    else
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, b.x, b.y-100, 0, 1.75)
    end
  end

  love.graphics.setColor(0, .73, .95)
  love.graphics.print("Score = " .. score, 0, 0)
  love.graphics.printf("Time: " .. math.ceil(timer), 0, 0, love.graphics.getWidth(), "right")
end
