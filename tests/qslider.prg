/*

  Qt4xHb Project - Test Program

  Copyright (C) 2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt4xHb

*/

#include "qt4xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oSlider

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oSlider := QSlider():new(oWindow)
   oSlider:move(20,20)
   oSlider:resize(20,400)
   oSlider:setTooltip("Eu sou um Slider")
   oSlider:onSliderMoved( {|w,v|test(w,v)} )
   oSlider:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION test (w,v)

   qout("slider moved")
   qout(w)
   qout(v)

RETURN NIL
