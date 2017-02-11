/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QFILEINFO

CLASS QAbstractFileEngineIterator

   DATA pointer
   DATA class_id INIT Class_Id_QAbstractFileEngineIterator
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD currentFileInfo
   METHOD currentFileName
   METHOD currentFilePath
   METHOD filters
   METHOD hasNext
   METHOD nameFilters
   METHOD next
   METHOD path
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QAbstractFileEngineIterator
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAbstractFileEngineIterator
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAbstractFileEngineIterator
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAbstractFileEngineIterator
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAbstractFileEngineIterator
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAbstractFileEngineIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN
