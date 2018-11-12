
famBubbles = {}

function loadFamilyBubble()
  --Loading sounds
  catSound = love.audio.newSource("meow.wav", "static")
  mamaSound = love.audio.newSource("mama.wav", "static")
  dadaSound = love.audio.newSource("daddySound.wav", "static")
  lambSound = love.audio.newSource("lamb.wav", "static")
  yayaSound = love.audio.newSource("yaya.wav", "static")
  papaSound = love.audio.newSource("papa.wav", "static")
  addysonSound = love.audio.newSource("Addyson.wav", "static")
  grandmaAnnaSound = love.audio.newSource("grandmaAnna.wav", "static")
  --addySound = love.audio.newSource("addy.wav", "static")
  maxSound = love.audio.newSource("max.wav", "static")
  elijahSound = love.audio.newSource("Elijah.wav", "static")
  harperSound = love.audio.newSource("harper.wav", "static")
  auntyMegSound = love.audio.newSource("auntyMeg.wav", "static")
  emSound = love.audio.newSource("AuntieEm.wav", "static")
  grandpaRichSound = love.audio.newSource("grandpaRich.wav", "static")
  drewSound = love.audio.newSource("drew.wav", "static")
  grandmaAnnaSound = love.audio.newSource("grandmaAnna.wav", "static")
  debbieSound = love.audio.newSource("debbie.wav", "static")
  calebSound = love.audio.newSource("Caleb.wav", "static")

  --Loading images
  familyTree = love.graphics.newImage("familytree.png")
  familyBackgroundPic = love.graphics.newImage("familyBackground.png")
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
  elijahPic = love.graphics.newImage("elijahPic.png")
  addyPic = love.graphics.newImage("addysonPic.png")
  maxPic = love.graphics.newImage("maxPic.png")
  harperPic = love.graphics.newImage("harperPic.png")
  megPic = love.graphics.newImage("megPic.png")
  emPic = love.graphics.newImage("EmPic.jpg")
  calebPic = love.graphics.newImage("calebPic.png")
  jonPic = love.graphics.newImage("jon.png")
  elliotPic = love.graphics.newImage("elliot.png")
  transition = true
  transTimer = 5
  numPopped = 0
end

function spawnFamilyBubble()
  local bubble = {}
  bubble.size = 100
  bubble.x = math.random(100, love.graphics.getWidth() - bubble.size)
  bubble.y = love.graphics.getHeight() + bubble.size
  bubble.speed = math.random(100, 150)
  bubble.popped = false

  if numPopped < 20 then
    numPopped = numPopped + 1
    randomType = numPopped


  else
    randomType = math.random(1, 19)
  end

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

  elseif randomType == 13 then
    bubble.type = "Max"

  elseif randomType == 14 then
    bubble.type = "Em"

  elseif randomType == 15 then
    bubble.type = "Caleb"

  elseif randomType == 16 then
    bubble.type = "Elijah"

  elseif randomType == 17 then
    bubble.type = "Harper"

  elseif randomType == 18 then
    bubble.type = "Jon"

  elseif randomType == 19 then
    bubble.type = "Elliot"

  else
    bubble.type = "Lamb"
  end

  table.insert(famBubbles, bubble)
end

function updateFamilyBubbles(dt)
  transTimer = transTimer - dt

  bubbleSpawnTimer = bubbleSpawnTimer - dt

  if bubbleSpawnTimer <= 0 then
    spawnFamilyBubble()
    bubbleSpawnTimer = 2.5
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
          bMamaPopped = true

        elseif b.type == "Walle" then
          catSound:setVolume(.5)
          catSound:play()
          catSound:setVolume(.5)
          bWallePopped = true

        elseif b.type == "Dada" then
          dadaSound:play()
          bDadaPopped = true

        elseif b.type == "Lamb" then
          lambSound:play()
          bLambPopped = true

        elseif b.type == "Yaya" then
          yayaSound:play()
          bYayaPopped = true

        elseif b.type == "Papa" then
          papaSound:play()
          bPapaPopped = true

        elseif b.type == "Meg" then
          auntyMegSound:play()
          bMegPopped = true

        elseif b.type == "Addy" then
          addysonSound:play()
          bAddyPopped = true

        elseif b.type == "Rich" then
          grandpaRichSound:play()
          bRichPopped = true

        elseif b.type == "Anna" then
          grandmaAnnaSound:play()
          bAnnaPopped = true

        elseif b.type == "Debbie" then
          debbieSound:play()
          bDebbiePopped = true

        elseif b.type == "Andrew" then
          drewSound:play()
          bDrewPopped = true

        elseif b.type == "Elijah" then
          elijahSound:play()
          bElijahPopped = true

        elseif b.type == "Caleb" then
          calebSound:play()
          bCalebPopped = true

        elseif b.type == "Em" then
          emSound:play()
          bEmPopped = true

        elseif b.type == "Max" then
          maxSound:play()
          bMaxPopped = true

         elseif b.type == "Harper" then
          harperSound:play()
          bHarperPopped = true

        elseif b.type == "Jon" then
        --  jonSound:play()
          bJonPopped = true

        elseif b.type == "Elliot" then
        --  elliotSound:play()
          bElliotPopped = true
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
end

function resetFamily()
  resetFamBools()
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

function drawFamilyBubbles()
  love.graphics.setColor(1, 1, 1)
  love.graphics.draw(familyBackgroundPic, 0, 0, nil, scaleX, scaleY*1.2)
  love.graphics.setColor(1, 1, 1, .75)
  drawClouds()
  love.graphics.setColor(1, 1, 1, .9)
  if winWidth < winHeight then
    love.graphics.draw(familyTree, -175 * pixelScale,  -45 * pixelScale, nil, scaleX*2, scaleY*1.6)

  else
    love.graphics.draw(familyTree, -175 * pixelScale,  -45 * pixelScale, nil, scaleX*1.5, scaleY*1.4)
  end

  love.graphics.setColor(1, 1, 1, .75)
  drawUI()
  drawBirds()
  love.graphics.setColor(1, 1, 1)
  for i,b in ipairs(famBubbles) do
    if b.type == "Mama" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(mamaPic, b.x + bubblePic:getWidth()/2.75, b.y - bubblePic:getHeight()/1.75, 0, .2)

    elseif b.type == "Walle" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(catPic, b.x + bubblePic:getWidth()/2.75, b.y - bubblePic:getHeight()/1.75, 0, .05)

    elseif b.type == "Dada" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(dadaPic, b.x + bubblePic:getWidth()/2.5, b.y - bubblePic:getHeight()/1.75, 0, .05)

    elseif b.type == "Lamb" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(lambPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .17)

    elseif b.type == "Yaya" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(yayaPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .07)

    elseif b.type == "Papa" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(papaPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .04)

    elseif b.type == "Meg" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(megPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    elseif b.type == "Addy" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(addyPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    elseif b.type == "Rich" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(richPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    elseif b.type == "Anna" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(annaPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    elseif b.type == "Debbie" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(debbiePic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    elseif b.type == "Andrew" then
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(drewPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .35)

    elseif b.type == "Max" then
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
        love.graphics.setColor(1, 1, 1, .75)
        love.graphics.draw(maxPic, b.x + bubblePic:getWidth()/2.75, b.y - bubblePic:getHeight()/1.75, 0, .2)

      elseif b.type == "Em" then
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
        love.graphics.setColor(1, 1, 1, .75)
        love.graphics.draw(emPic, b.x + bubblePic:getWidth()/2.25, b.y - bubblePic:getHeight()/1.75, 0, .1)

      elseif b.type == "Elijah" then
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
        love.graphics.setColor(1, 1, 1, .75)
        love.graphics.draw(elijahPic, b.x + bubblePic:getWidth()/2.75, b.y - bubblePic:getHeight()/1.75, 0, .2)

      elseif b.type == "Caleb" then
          love.graphics.setColor(1, 1, 1, 1)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
          love.graphics.draw(calebPic, b.x + bubblePic:getWidth()/2.75, b.y - bubblePic:getHeight()/1.75, 0, .2)

      elseif b.type == "Harper" then
          love.graphics.setColor(1, 1, 1, 1)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
          love.graphics.draw(harperPic, b.x + bubblePic:getWidth()/2.75, b.y - bubblePic:getHeight()/1.75, 0, .2)

      elseif b.type == "Jon" then
          love.graphics.setColor(1, 1, 1, 1)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
          love.graphics.draw(jonPic, b.x + bubblePic:getWidth()/2.75, b.y - bubblePic:getHeight()/1.45, 0, .2)

      elseif b.type == "Elliot" then
          love.graphics.setColor(1, 1, 1, 1)
          love.graphics.draw(bubblePic, b.x, b.y - 100, 0, 1.75)
          love.graphics.setColor(1, 1, 1, .75)
          love.graphics.draw(elliotPic, b.x + bubblePic:getWidth()/2.75, b.y - bubblePic:getHeight()/1.45, 0, .2)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, b.x, b.y-100, 0, 1.75)
      end
  end
  drawQuitButton()
  love.graphics.setColor(0, .73, .95)
  --love.graphics.print("Score = " .. score, 0, 0)
--  love.graphics.printf("Time: " .. math.ceil(timer), 0, 0, love.graphics.getWidth(), "right")
end
