/*

  Qt4xHb Project - Test Program

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

  Website:
  https://github.com/marcosgambeta/Qt4xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

#include "qt4xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oGroupBox
   LOCAL oRadio1
   LOCAL oRadio2
   LOCAL oRadio3
   LOCAL oVBox

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(320,240)

   oGroupBox := QGroupBox():new("Radio Buttons",oWindow)

   oRadio1 := QRadioButton():new("&Radio button 1")
   oRadio2 := QRadioButton():new("R&adio button 2")
   oRadio3 := QRadioButton():new("Ra&dio button 3")

   oRadio1:setChecked(.t.)

   oVBox := QVBoxLayout():new()

   oVBox:addWidget(oRadio1)
   oVBox:addWidget(oRadio2)
   oVBox:addWidget(oRadio3)

   oVBox:addStretch(1)

   oGroupBox:setLayout(oVBox)

   oWindow:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN
