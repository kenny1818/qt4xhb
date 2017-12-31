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
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640,480)
   oWindow:show()

   oButton := QPushButton():new("Mostrar janela de di�logo",oWindow)
   oButton:move(20,20)
   oButton:show()
   oButton:onClicked({|w|ShowColorDialog(oWindow)})

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

STATIC FUNCTION ShowColorDialog (oWindow)

   LOCAL oColorDialog := QColorDialog():new(oWindow)

   oColorDialog:exec()

   oColorDialog:delete()

RETURN NIL