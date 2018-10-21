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
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale, 20 * pixelScale, 0, .5)
      love.graphics.draw(mamaPic, firstPos + bubbleUIScale * 1.155, 20 * 1.45 * pixelScale, 0, .06)
    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 1, 20 * pixelScale, 0, .5)
      love.graphics.draw(mamaPic, firstPos + bubbleUIScale * 1.155, 20 * 1.45 * pixelScale, 0, .06)
    end

    if bDadaPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 2, 20 * pixelScale, 0, .5)
      love.graphics.draw(dadaPic,firstPos + bubbleUIScale * 2 * 1.09, 20 * 1.45 * pixelScale, 0, .017)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 2, 20 * pixelScale, 0, .5)
      love.graphics.setColor(1, 1, 1, .9)
      love.graphics.draw(dadaPic, firstPos + bubbleUIScale * 2 * 1.09, 20 * 1.45 * pixelScale, 0, .017)
    end

    if bPapaPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 3, 20 * pixelScale, 0, .5)
      love.graphics.draw(papaPic,firstPos + bubbleUIScale * 3 * 1.08, 20 * 1.45 * pixelScale, 0, .0127)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 3, 20 * pixelScale, 0, .5)
      love.graphics.draw(papaPic, firstPos + bubbleUIScale * 3 * 1.08, 20 * 1.45 * pixelScale, 0, .0127)
    end

    if bYayaPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 4, 20 * pixelScale, 0, .5)
      love.graphics.draw(yayaPic, firstPos + bubbleUIScale * 4 * 1.055, 20 * 1.45 * pixelScale, 0, .022)
    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 4, 20 * pixelScale, 0, .5)
      love.graphics.draw(yayaPic, firstPos + bubbleUIScale * 4 * 1.055, 20 * 1.45 * pixelScale, 0, .022)
    end

    if bMegPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 5, 20 * pixelScale, 0, .5)
      love.graphics.draw(megPic, firstPos + bubbleUIScale * 5 * 1.045, 20 * 1.45 * pixelScale, 0, .11)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 5, 20 * pixelScale, 0, .5)
      love.graphics.draw(megPic, firstPos + bubbleUIScale * 5 * 1.045, 20 * 1.45 * pixelScale, 0, .11)
    end

    if bLambPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 6, 20 * pixelScale, 0, .5)
      love.graphics.draw(lambPic, firstPos + bubbleUIScale * 6 * 1.035, 20 * 1.45 * pixelScale, 0, .055)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 6, 20 * pixelScale, 0, .5)
      love.graphics.draw(lambPic, firstPos + bubbleUIScale * 6 * 1.035, 20 * 1.45 * pixelScale, 0, .055)
    end

    if bDebbiePopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 7, 20 * pixelScale, 0, .5)
      love.graphics.draw(debbiePic, firstPos + bubbleUIScale * 7 * 1.028, 20 * 1.45 * pixelScale, 0, .12)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 7, 20*pixelScale, 0, .5)
      love.graphics.draw(debbiePic, firstPos + bubbleUIScale * 7 * 1.025, 20 * 1.45 * pixelScale, 0, .12)
    end

    if bDrewPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 8, 20*pixelScale, 0, .5)
      love.graphics.draw(drewPic, firstPos + bubbleUIScale * 8 * 1.0235, 20 * 1.45 * pixelScale, 0, .105)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 8, 20*pixelScale, 0, .5)
      love.graphics.draw(drewPic, firstPos + bubbleUIScale * 8 * 1.0235, 20 * 1.45 * pixelScale, 0, .105)
    end

    if bRichPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 9, 20*pixelScale, 0, .5)
      love.graphics.draw(richPic, firstPos + bubbleUIScale * 9 * 1.022, 20 * 1.45 * pixelScale, 0, .11)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 9, 20*pixelScale, 0, .5)
      love.graphics.draw(richPic, firstPos + bubbleUIScale * 9 * 1.022, 20 * 1.45 * pixelScale, 0, .12)
    end

    if bAnnaPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 10, 20*pixelScale, 0, .5)
      love.graphics.draw(annaPic, firstPos + bubbleUIScale * 10 * 1.022, 20 * 1.45 * pixelScale, 0, .11)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 10, 20*pixelScale, 0, .5)
      love.graphics.draw(annaPic, firstPos + bubbleUIScale * 10 * 1.022, 20 * 1.45 * pixelScale, 0, .11)
    end

    if bAddyPopped == false then
      love.graphics.setColor(1, 1, 1, .5)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 11, 20*pixelScale, 0, .5)
      love.graphics.draw(addyPic, firstPos + bubbleUIScale * 11 * 1.022, 20 * 1.45 * pixelScale, 0, .105)

    else
      love.graphics.setColor(1, 1, 1, 1)
      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 11, 20*pixelScale, 0, .5)
      love.graphics.draw(addyPic, firstPos + bubbleUIScale * 11 * 1.022, 20 * 1.45 * pixelScale, 0, .105)
    end

      love.graphics.draw(bubblePic, firstPos + bubbleUIScale * 12, 20*pixelScale, 0, .5)
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
  end
