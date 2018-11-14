alphabetBubbles = {}

function loadAlphabet()
  aLet = love.graphics.newImage("letterA.png")
  bLet = love.graphics.newImage("letterB.png")
  cLet = love.graphics.newImage("letterC.png")
  dLet = love.graphics.newImage("letterD.png")
  eLet = love.graphics.newImage("letterE.png")
  fLet = love.graphics.newImage("letterF.png")
  gLet = love.graphics.newImage("letterG.png")
  hLet = love.graphics.newImage("letterH.png")
  iLet = love.graphics.newImage("letterI.png")
  jLet = love.graphics.newImage("letterJ.png")
  kLet = love.graphics.newImage("letterK.png")
  lLet = love.graphics.newImage("letterL.png")
  mLet = love.graphics.newImage("letterM.png")
  nLet = love.graphics.newImage("letterN.png")
  oLet = love.graphics.newImage("letterO.png")
  pLet = love.graphics.newImage("letterP.png")
  qLet = love.graphics.newImage("letterQ.png")
  rLet = love.graphics.newImage("letterR.png")
  sLet = love.graphics.newImage("letterS.png")
  tLet = love.graphics.newImage("letterT.png")
  uLet = love.graphics.newImage("letterU.png")
  vLet = love.graphics.newImage("letterV.png")
  wLet = love.graphics.newImage("letterW.png")
  xLet = love.graphics.newImage("letterX.png")
  yLet = love.graphics.newImage("letterY.png")
  zLet = love.graphics.newImage("letterA.png")
  aPopped = false
  bPopped = false
  cPopped = false
  dPopped = false
  ePopped = false
  fPopped = false
  gPopped = false
  hPopped = false
  iPopped = false
  jPopped = false
  kPopped = false
  lPopped = false
  mPopped = false
  nPopped = false
  oPopped = false
  pPopped = false
  qPopped = false
  rPopped = false
  sPopped = false
  tPoppped = false
  uPopped = false
  vPopped = false
  wPopped = false
  xPopped = false
  yPopped = false
  zPopped = false
  alphabetSpawnTimer = 0
end

function updateAlphabet(dt)
  alphabetSpawnTimer = alphabetSpawnTimer - dt

  if alphabetSpawnTimer <= 0 then
    spawnAlphabetBubble()
    alphabetSpawnTimer = 2
  end

  for i, a in ipairs(alphabetBubbles) do
    a.y = a.y - a.speed * dt
  end

  for i=#alphabetBubbles, 1, -1 do
    local a = alphabetBubbles[i]

    if a.popped == true and a ~= nil then
      table.remove(alphabetBubbles, i)
        if a.type == "a" then
          --aSound:play()
          aPopped = true
        elseif a.type == "b" then
          --bSound:play()
          bPopped = true
        elseif a.type == "c" then
          --cSound:play()
          cPopped = true
        elseif a.type == "d" then
          --dSound:play()
          dPopped = true
        elseif a.type == "e" then
          --eSound:play()
          dPopped = true
        elseif a.type == "f" then
          --fSound:play()
          fPopped = true
        elseif a.type == "g" then
          --gSound:play()
          gPopped = true
        elseif a.type == "h" then
          --hSound:play()
          hPopped = true
        elseif a.type == "i" then
          --iSound:play()
          iPopped = true
        elseif a.type == "j" then
          --jSound:play()
          jPopped = true
        elseif a.type == "k" then
          --lSound:play()
          lPopped = true
        elseif a.type == "m" then
          --mSound:play()
          mPopped = true
        elseif a.type == "n" then
          --nSound:play()
          nPopped = true
        elseif a.type == "o" then
          --oSound:play()
          oPopped = true
        elseif a.type == "p" then
          --pSound:play()
          pPopped = true
        elseif a.type == "q" then
          --qSound:play()
          qPopped = true
        elseif a.type == "r" then
          --rSound:play()
          rPopped = true
        elseif a.type == "s" then
          --sSound:play()
          sPopped = true
        elseif a.type == "t" then
          --tSound:play()
          tPopped = true
        elseif a.type == "u" then
          --uSound:play()
          uPopped = true
        elseif a.type == "v" then
          --vSound:play()
          vPopped = true
        elseif a.type == "w" then
          --wSound:play()
          wPopped = true
        elseif a.type == "x" then
          --xSound:play()
          xPopped = true
        elseif a.type == "y" then
          --ySound:play()
          yPopped = true
        elseif a.type == "z" then
          --zSound:play()
          zPopped = true
        end
      end

      if  a.y < 0 - a.size then
        table.remove(alphabetBubbles, i)
      end
    end

      --Update game timer.
      if timer > 0 then
        timer = timer - dt
      end

      if timer <= 0 then
        resetAlphabet()
      end
  end

  function resetAlphabet()
    timer = 0
    bReadyToClap = true
    gameState = 1
    if score > tonumber(highScore) then
      love.filesystem.write('highScore.txt', score)
    end
  end

function drawAlphabet()
  love.graphics.setColor(1, 1, 1)
  love.graphics.draw(numberBackgroundPic, 0, 0, nil, scaleX, scaleY)
  drawUI()
  drawClouds()
  drawBirds()

  for i, n in ipairs(alphabetBubbles) do
    if n.type == "a" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(aLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "b" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(bLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "c" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(cLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "d" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(dLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "e" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(eLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "f" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(fLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "g" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(gLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "h" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(hLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "i" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(iLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "j" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(jLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "k" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(kLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "l" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(lLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "m" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(mLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "n" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(nLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "o" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(oLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "p" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(pLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "q" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(qLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "r" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(rLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "s" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(sLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "t" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(tLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "u" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(uLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "v" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(vLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "w" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(wLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "x" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(xLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "y" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(yLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)

    elseif n.type == "z" then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, n.x, n.y - 100, 0, 1.75)
      love.graphics.setColor(1, 1, 1, .75)
      love.graphics.draw(zLet, n.x + bubblePic:getWidth()/2.75, n.y - bubblePic:getHeight()/1.75, 0, .5)
    end
  end
  drawQuitButton()
end

function spawnAlphabetBubble()
  local alphabetBubble = {}
  alphabetBubble.size = 100
  alphabetBubble.x = math.random(100, love.graphics.getWidth() - alphabetBubble.size)
  alphabetBubble.y = love.graphics.getHeight() + alphabetBubble.size
  alphabetBubble.speed = math.random(50, 200)
  alphabetBubble.popped = false
  randomType = math.random(1, 26)

  if randomType == 1 then
    alphabetBubble.type = "a"
  elseif randomType == 2 then
    alphabetBubble.type = "b"
  elseif randomType == 3 then
    alphabetBubble.type = "c"
  elseif randomType == 4 then
    alphabetBubble.type = "d"
  elseif randomType == 5 then
    alphabetBubble.type = "e"
  elseif randomType == 6 then
    alphabetBubble.type = "f"
  elseif randomType == 7 then
    alphabetBubble.type = "g"
  elseif randomType == 8 then
    alphabetBubble.type = "h"
  elseif randomType == 9 then
    alphabetBubble.type = "i"
  elseif randomType == 10 then
    alphabetBubble.type = "j"
  elseif randomType == 11 then
    alphabetBubble.type = "k"
  elseif randomType == 12 then
    alphabetBubble.type = "l"
  elseif randomType == 13 then
    alphabetBubble.type = "m"
  elseif randomType == 14 then
    alphabetBubble.type = "n"
  elseif randomType == 15 then
    alphabetBubble.type = "o"
  elseif randomType == 16 then
    alphabetBubble.type = "p"
  elseif randomType == 17 then
    alphabetBubble.type = "q"
  elseif randomType == 18 then
    alphabetBubble.type = "r"
  elseif randomType == 19 then
    alphabetBubble.type = "s"
  elseif randomType == 20 then
    alphabetBubble.type = "t"
  elseif randomType == 21 then
    alphabetBubble.type = "u"
  elseif randomType == 22 then
    alphabetBubble.type = "v"
  elseif randomType == 23 then
    alphabetBubble.type = "w"
  elseif randomType == 24 then
    alphabetBubble.type = "x"
  elseif randomType == 25 then
    alphabetBubble.type = "y"
  elseif randomType == 26 then
    alphabetBubble.type = "z"
  end
  table.insert(alphabetBubbles, alphabetBubble)
end
