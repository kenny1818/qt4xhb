/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWEBPAGE
REQUEST QSIZE

CLASS QWebInspector INHERIT QWidget

   DATA class_id INIT Class_Id_QWebInspector
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD page
   METHOD setPage
   METHOD event
   METHOD sizeHint
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebInspector
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
