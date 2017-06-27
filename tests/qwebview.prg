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
   LOCAL oWebView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste da classe QWebView")
   oWindow:resize(800,600)
   oWindow:show()

   oWebView := QWebView():new(oWindow)
   oWebView:setUrl(QUrl():new("https://github.com/marcosgambeta"))
   oWebView:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN
