/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHELPCONTENTMODEL
REQUEST QHELPCONTENTWIDGET
REQUEST QHELPINDEXMODEL
REQUEST QHELPINDEXWIDGET
REQUEST QHELPSEARCHENGINE
#endif

CLASS QHelpEngine INHERIT QHelpEngineCore

   DATA class_id INIT Class_Id_QHelpEngine
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD contentModel
   METHOD contentWidget
   METHOD indexModel
   METHOD indexWidget
   METHOD searchEngine
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHelpEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QHelpEngine ( const QString & collectionFile, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHELPENGINE_NEW )
{
  QHelpEngine * o = NULL;
  QObject * par2 = ISNIL(2)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QHelpEngine ( PQSTRING(1), par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QHELPENGINE_DELETE )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QHelpContentModel * contentModel () const
*/
HB_FUNC_STATIC( QHELPENGINE_CONTENTMODEL )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpContentModel * ptr = obj->contentModel (  );
    _qt4xhb_createReturnClass ( ptr, "QHELPCONTENTMODEL" );
  }
}


/*
QHelpContentWidget * contentWidget ()
*/
HB_FUNC_STATIC( QHELPENGINE_CONTENTWIDGET )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpContentWidget * ptr = obj->contentWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QHELPCONTENTWIDGET" );
  }
}


/*
QHelpIndexModel * indexModel () const
*/
HB_FUNC_STATIC( QHELPENGINE_INDEXMODEL )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpIndexModel * ptr = obj->indexModel (  );
    _qt4xhb_createReturnClass ( ptr, "QHELPINDEXMODEL" );
  }
}


/*
QHelpIndexWidget * indexWidget ()
*/
HB_FUNC_STATIC( QHELPENGINE_INDEXWIDGET )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpIndexWidget * ptr = obj->indexWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QHELPINDEXWIDGET" );
  }
}


/*
QHelpSearchEngine * searchEngine ()
*/
HB_FUNC_STATIC( QHELPENGINE_SEARCHENGINE )
{
  QHelpEngine * obj = (QHelpEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpSearchEngine * ptr = obj->searchEngine (  );
    _qt4xhb_createReturnClass ( ptr, "QHELPSEARCHENGINE" );
  }
}




#pragma ENDDUMP
