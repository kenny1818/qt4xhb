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
   oButton:onClicked({||ShowColorDialog(oWindow)})

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION ShowColorDialog (oWindow)

   LOCAL oColorDialog

   oColorDialog := QColorDialog():new(oWindow)

   oColorDialog:onColorSelected({|pWidget,pColor|ShowColorSelected(pColor)})

   oColorDialog:exec()

   oColorDialog:onColorSelected()

   oColorDialog:delete()

RETURN NIL

STATIC FUNCTION ShowColorSelected (pColor)

   LOCAL oColor := QColor():newFrom(pColor)

   ? "name=",oColor:name()
   ? "red=",oColor:red()
   ? "green=",oColor:green()
   ? "blue=",oColor:blue()
   ? "rgb=",oColor:rgb()
   ?

RETURN NIL