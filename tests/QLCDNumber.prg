/*

  Qt4xHb Project - Test Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt4xHb

*/

#include "qt4xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLCDNumber

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oLCDNumber := QLCDNumber():new(oWindow)
   oLCDNumber:move(20,20)
   oLCDNumber:setTooltip("Eu sou um LCDNumber")
   oLCDNumber:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN
