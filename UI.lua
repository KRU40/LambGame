function loadUI()
  bubbleUIScale = 60 * pixelScale
  firstPos = winWidth/12 - (75 * pixelScale)
  firstPosNum = winWidth/10 - (75 * pixelScale)
  bMamaPopped = false
  bDadaPopped = false
  bPapaPopped = false
  bYayaPopped = false
  bDebbiePopped = false
  bAnnaPopped = false
  bDrewPopped = false
  bEmPopped = false
  bRichPopped = false
  bLambPopped = false
  bAddyPopped = false
  bMegPopped = false
  bDebbiePopped = false
  bAnnaPopped = false
  bDrewPopped = false
  bEmPopped = false
  bRichPopped = false
  bLambPopped = false
  bAddyPopped = false
  bMegPopped = false
  bWallePopped = false
  bCalebPopped = false
  bJonPopped = false
  bElliotPopped = false
  bElijahPopped = false
  bMaxPopped = false
  bHarperPopped = false

  --Number vars
  bOnePopped = false
  bTwoPopped = false
  bThreePopped = false
  bFourPopped = false
  bFivePopped = false
  bSixPopped = false
  bSevenPopped = false
  bEightPopped = false
  bNinePopped = false
  bTenPopped = false
end

function resetFamBools()
    bMamaPopped = false
    bDadaPopped = false
    bPapaPopped = false
    bYayaPopped = false
    bDebbiePopped = false
    bAnnaPopped = false
    bDrewPopped = false
    bEmPopped = false
    bRichPopped = false
    bLambPopped = false
    bAddyPopped = false
    bMegPopped = false
    bDebbiePopped = false
    bAnnaPopped = false
    bDrewPopped = false
    bEmPopped = false
    bRichPopped = false
    bLambPopped = false
    bAddyPopped = false
    bMegPopped = false
    bWallePopped = false
    bCalebPopped = false
    bJonPopped = false
    bElliotPopped = false
    bElijahPopped = false
    bMaxPopped = false
    bHarperPopped = false
end

function resetNumBools()
  bOnePopped = false
  bTwoPopped = false
  bThreePopped = false
  bFourPopped = false
  bFivePopped = false
  bSixPopped = false
  bSevenPopped = false
  bEightPopped = false
  bNinePopped = false
  bTenPopped = false
end

function drawUI()
  --Family game state
  if gameState == 2 then
    if bMamaPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 7.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(mamaPic, firstPos + bubbleUIScale * 7.7, 140 * 1.065 * pixelScale, 0, .06)
    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 7.5,140 * pixelScale, 0, .5)
      love.graphics.draw(mamaPic, firstPos + bubbleUIScale * 7.7, 140 * 1.065 * pixelScale, 0, .06)
    end

    if bDadaPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 6.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(dadaPic,firstPos + bubbleUIScale * 6.5 * 1.03, 140 * 1.055 * pixelScale, 0, .017)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 6.5, 140 * pixelScale, 0, .5)
      love.graphics.setColor(1, 1, 1, .9)
      love.graphics.draw(dadaPic, firstPos + bubbleUIScale * 6.5 * 1.03, 140 * 1.055 * pixelScale, 0, .017)
    end

    if bPapaPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 5, 50 * pixelScale, 0, .5)
      love.graphics.draw(papaPic,firstPos + bubbleUIScale * 5 * 1.045, 50 * 1.2 * pixelScale, 0, .0127)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 5, 50 * pixelScale, 0, .5)
      love.graphics.draw(papaPic, firstPos + bubbleUIScale * 5 * 1.045, 50 * 1.2 * pixelScale, 0, .0127)
    end

    if bYayaPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 6, 50 * pixelScale, 0, .5)
      love.graphics.draw(yayaPic, firstPos + bubbleUIScale * 6 * 1.042, 50 * 1.15 * pixelScale, 0, .022)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 6, 50 * pixelScale, 0, .5)
      love.graphics.draw(yayaPic, firstPos + bubbleUIScale * 6* 1.042, 50 * 1.15 * pixelScale, 0, .022)
    end

    if bMegPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 4.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(megPic, firstPos + bubbleUIScale * 4.5 * 1.045, 140 * 1.05 * pixelScale, 0, .11)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 4.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(megPic, firstPos + bubbleUIScale * 4.5 * 1.045, 140 * 1.05 * pixelScale, 0, .11)
    end

    if bLambPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 7, 230 * pixelScale, 0, .5)
      love.graphics.draw(lambPic, firstPos + bubbleUIScale * 7 * 1.03, 230 * 1.03 * pixelScale, 0, .055)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 7, 230 * pixelScale, 0, .5)
      love.graphics.draw(lambPic, firstPos + bubbleUIScale * 7 * 1.03, 230 * 1.03 * pixelScale, 0, .055)
    end

    if bDebbiePopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 9, 50 * pixelScale, 0, .5)
      love.graphics.draw(debbiePic, firstPos + bubbleUIScale * 9 * 1.0225, 50 * 1.17 * pixelScale, 0, .12)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 9, 50 * pixelScale, 0, .5)
      love.graphics.draw(debbiePic, firstPos + bubbleUIScale * 9 * 1.0225, 50 * 1.17 * pixelScale, 0, .12)
    end

    if bDrewPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 10, 30 * pixelScale, 0, .5)
      love.graphics.draw(drewPic, firstPos + bubbleUIScale * 10 * 1.0235, 30 * 1.3 * pixelScale, 0, .105)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 10, 30 * pixelScale, 0, .5)
      love.graphics.draw(drewPic, firstPos + bubbleUIScale * 10 * 1.0235, 30 * 1.3 * pixelScale, 0, .105)
    end

    if bRichPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 8, 50 * pixelScale, 0, .5)
      love.graphics.draw(richPic, firstPos + bubbleUIScale * 8 * 1.025, 50 * 1.15 * pixelScale, 0, .11)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 8, 50 * pixelScale, 0, .5)
      love.graphics.draw(richPic, firstPos + bubbleUIScale * 8 * 1.025, 50 * 1.15 * pixelScale, 0, .11)
    end

    if bAnnaPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 7, 30 * pixelScale, 0, .5)
      love.graphics.draw(annaPic, firstPos + bubbleUIScale * 7 * 1.0325, 30 * 1.25 * pixelScale, 0, .11)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 7, 30 * pixelScale, 0, .5)
      love.graphics.draw(annaPic, firstPos + bubbleUIScale * 7 * 1.0325, 30 * 1.25 * pixelScale, 0, .11)
    end

    if bAddyPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 6, 230 * pixelScale, 0, .5)
      love.graphics.draw(addyPic, firstPos + bubbleUIScale * 6 * 1.035, 230 * 1.025 * pixelScale, 0, .115)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 6, 230 * pixelScale, 0, .5)
      love.graphics.draw(addyPic, firstPos + bubbleUIScale * 6 * 1.035, 230 * 1.025 * pixelScale, 0, .115)
    end

    if bWallePopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 8, 230 * pixelScale, 0, .5)
      love.graphics.draw(catPic, firstPos + bubbleUIScale * 8 * 1.025, 230 * 1.05 * pixelScale, 0, .015)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 8, 230 * pixelScale, 0, .5)
      love.graphics.draw(catPic, firstPos + bubbleUIScale * 8 * 1.025, 230 * 1.05 * pixelScale, 0, .015)
    end

    if bCalebPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 2.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(calebPic, firstPos + bubbleUIScale * 2.5 * 1.0675, 140 * 1.055 * pixelScale, 0, .063)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 2.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(calebPic, firstPos + bubbleUIScale * 2.5 * 1.0675, 140 * 1.055 * pixelScale, 0, .063)
    end

    if bMaxPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 5, 230 * pixelScale, 0, .5)
      love.graphics.draw(maxPic, firstPos + bubbleUIScale * 5 * 1.035, 230 * 1.0425 * pixelScale, 0, .063)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 5, 230 * pixelScale, 0, .5)
      love.graphics.draw(maxPic, firstPos + bubbleUIScale * 5 * 1.035, 230 * 1.0425 * pixelScale, 0, .063)
    end

    if bElijahPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 2, 230 * pixelScale, 0, .5)
      love.graphics.draw(elijahPic, firstPos + bubbleUIScale * 2.15, 230 * 1.04 * pixelScale, 0, .063)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 2, 230 * pixelScale, 0, .5)
      love.graphics.draw(elijahPic, firstPos + bubbleUIScale * 2.15, 230 * 1.04 * pixelScale, 0, .063)
    end

    if bHarperPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 3, 230 * pixelScale, 0, .5)
      love.graphics.draw(harperPic, firstPos + bubbleUIScale * 3.17, 230 * 1.045 * pixelScale, 0, .061)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 3, 230 * pixelScale, 0, .5)
      love.graphics.draw(harperPic, firstPos + bubbleUIScale * 3.17, 230 * 1.045 * pixelScale, 0, .061)
    end

    if bEmPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 1.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(emPic, firstPos + bubbleUIScale * 1.45 * 1.17, 140 * 1.055 * pixelScale, 0, .0325)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 1.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(emPic, firstPos + bubbleUIScale * 1.45 * 1.17, 140 * 1.055 * pixelScale, 0, .0325)
    end

    if bJonPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 5.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(jonPic, firstPos + bubbleUIScale * 5.5 * 1.0425, 140 * 1.055 * pixelScale, 0, .055)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 5.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(jonPic, firstPos + bubbleUIScale * 5.5 * 1.0425, 140 * 1.055 * pixelScale, 0, .055)
    end

    if bElliotPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 3.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(elliotPic, firstPos + bubbleUIScale * 3.5 * 1.065, 140 * 1.055 * pixelScale, 0, .055)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 3.5, 140 * pixelScale, 0, .5)
      love.graphics.draw(elliotPic, firstPos + bubbleUIScale * 3.5 * 1.065, 140 * 1.055 * pixelScale, 0, .055)
    end
  end

    --Number game state
    if gameState == 3 then
      if bOnePopped == false then
        love.graphics.setColor(1, 1, 1, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale, 20 * pixelScale, 0, .5)
        love.graphics.draw(onePic, firstPosNum + bubbleUIScale, 20 * pixelScale, 0, .2)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale, 20 * pixelScale, 0, .5)
        love.graphics.draw(onePic, firstPosNum + bubbleUIScale, 20 * pixelScale, 0, .2)
      end

      if bTwoPopped == false then
        love.graphics.setColor(1, 1, 1, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 2 , 20 * pixelScale, 0, .5)
        love.graphics.draw(twoPic, firstPosNum + bubbleUIScale * 2, 20 * pixelScale, 0, .2)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 2, 20 * pixelScale, 0, .5)
        love.graphics.draw(twoPic, firstPosNum + bubbleUIScale * 2, 20 * pixelScale, 0, .2)
      end

      if bThreePopped == false then
        love.graphics.setColor(1, 1, 1, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 3, 20 * pixelScale, 0, .5)
        love.graphics.draw(threePic, firstPosNum + bubbleUIScale * 3, 20 * pixelScale, 0, .2)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 3, 20 * pixelScale, 0, .5)
        love.graphics.draw(threePic, firstPosNum + bubbleUIScale * 3, 20 * pixelScale, 0, .2)
      end

      if bFourPopped == false then
        love.graphics.setColor(1, 1, 1, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 4, 20 * pixelScale, 0, .5)
        love.graphics.draw(fourPic, firstPosNum + bubbleUIScale * 4, 20 * pixelScale, 0, .2)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 4, 20 * pixelScale, 0, .5)
        love.graphics.draw(fourPic, firstPosNum + bubbleUIScale * 4, 20 * pixelScale, 0, .2)
      end

      if bFivePopped == false then
        love.graphics.setColor(1, 1, 1, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 5, 20 * pixelScale, 0, .5)
        love.graphics.draw(fivePic, firstPosNum + bubbleUIScale * 5, 20 * pixelScale, 0, .2)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 5, 20 * pixelScale, 0, .5)
        love.graphics.draw(fivePic, firstPosNum + bubbleUIScale * 5, 20 * pixelScale, 0, .2)
      end

      if bSixPopped == false then
        love.graphics.setColor(1, 1, 1, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 6, 20 * pixelScale, 0, .5)
        love.graphics.draw(sixPic, firstPosNum + bubbleUIScale * 6, 20 * pixelScale, 0, .2)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 6, 20 * pixelScale, 0, .5)
        love.graphics.draw(sixPic, firstPosNum + bubbleUIScale * 6, 20 * pixelScale, 0, .2)
      end

      if bSevenPopped == false then
        love.graphics.setColor(1, 1, 1, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 7, 20 * pixelScale, 0, .5)
        love.graphics.draw(sevenPic, firstPosNum + bubbleUIScale * 7, 20 * pixelScale, 0, .2)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 7, 20 * pixelScale, 0, .5)
        love.graphics.draw(sevenPic, firstPosNum + bubbleUIScale * 7 , 20 * pixelScale, 0, .2)
      end

      if bEightPopped == false then
        love.graphics.setColor(1, 1, 1, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 8, 20 * pixelScale, 0, .5)
        love.graphics.draw(eightPic, firstPosNum + bubbleUIScale * 8, 20 * pixelScale, 0, .2)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 8, 20 * pixelScale, 0, .5)
        love.graphics.draw(eightPic, firstPosNum + bubbleUIScale * 8, 20 * pixelScale, 0, .2)
      end

      if bNinePopped == false then
        love.graphics.setColor(1, 1, 1, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 9, 20 * pixelScale, 0, .5)
        love.graphics.draw(ninePic, firstPosNum + bubbleUIScale * 9, 20 * pixelScale, 0, .2)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 9, 20 * pixelScale, 0, .5)
        love.graphics.draw(ninePic, firstPosNum + bubbleUIScale * 9, 20 * pixelScale, 0, .2)
      end

      if bTenPopped == false then
        love.graphics.setColor(1, 1, 1, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 10, 20 * pixelScale, 0, .5)
        love.graphics.draw(tenPic, firstPosNum + bubbleUIScale * 10.05, 20 * pixelScale, 0, .2)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 10, 20 * pixelScale, 0, .5)
        love.graphics.draw(tenPic, firstPosNum + bubbleUIScale * 10.05, 20 * pixelScale, 0, .2)
      end
    end

    if gameState == 4 then
      if bWhitePopped == false then
        love.graphics.setColor(1, 1, 1, .5)
        love.graphics.draw(whiteBubble, firstPosNum + bubbleUIScale, 20 * pixelScale, 0, .5)

      else
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(whiteBubble, firstPosNum + bubbleUIScale, 20 * pixelScale, 0, .5)
      end

      if bYellowPopped == false then
        love.graphics.setColor(1, .85, 0, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 2, 20 * pixelScale, 0, .5)

      else
        love.graphics.setColor(1, .85, 0, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 2, 20 * pixelScale, 0, .5)
      end

      if bBluePopped == false then
        love.graphics.setColor(0, 0, 1, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 4, 20 * pixelScale, 0, .5)

      else
        love.graphics.setColor(0, 0, 1, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 4, 20 * pixelScale, 0, .5)
      end

      if bGreenPopped == false then
        love.graphics.setColor(0, 1, 0, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 3, 20 * pixelScale, 0, .5)

      else
        love.graphics.setColor(0, 1, 0, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 3, 20 * pixelScale, 0, .5)
      end

      if bOrangePopped == false then
        love.graphics.setColor(1, .5, 0, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 5, 20 * pixelScale, 0, .5)

      else
        love.graphics.setColor(1, .5, 0, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 5, 20 * pixelScale, 0, .5)
      end

      if bRedPopped == false then
        love.graphics.setColor(1, 0, 0, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 6, 20 * pixelScale, 0, .5)

      else
        love.graphics.setColor(1, 0, 0, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 6, 20 * pixelScale, 0, .5)
      end

      if bPurplePopped == false then
        love.graphics.setColor(.6, .2, .9, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 7, 20 * pixelScale, 0, .5)

      else
        love.graphics.setColor(.6, .2, .9, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 7, 20 * pixelScale, 0, .5)
      end

      if bPinkPopped == false then
        love.graphics.setColor(1, .5, .9, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 8, 20 * pixelScale, 0, .5)

      else
        love.graphics.setColor(1, .5, .8, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 8, 20 * pixelScale, 0, .5)
      end

      if bBrownPopped == false then
        love.graphics.setColor(.7, .4, .0, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 9, 20 * pixelScale, 0, .5)

      else
        love.graphics.setColor(.7, .4, .0, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 9, 20 * pixelScale, 0, .5)
      end

      if bBlackPopped == false then
        love.graphics.setColor(0, 0, 0, .5)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 10, 20 * pixelScale, 0, .5)

      else
        love.graphics.setColor(0, 0, 0, 1)
        love.graphics.draw(bubblePic, firstPosNum + bubbleUIScale * 10, 20 * pixelScale, 0, .5)
      end

   end
end
