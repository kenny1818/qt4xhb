/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHELPSEARCHQUERY
REQUEST QHELPSEARCHQUERYWIDGET
REQUEST QHELPSEARCHRESULTWIDGET
#endif

CLASS QHelpSearchEngine INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD hitCount
   METHOD query
   METHOD queryWidget
   METHOD resultWidget
   METHOD cancelIndexing
   METHOD cancelSearching
   METHOD reindexDocumentation
   METHOD search
   METHOD onIndexingFinished
   METHOD onIndexingStarted
   METHOD onSearchingFinished
   METHOD onSearchingStarted
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpSearchEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHelpSearchEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHelpSearchEngine ( QHelpEngineCore * helpEngine, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_NEW )
{
  QHelpSearchEngine * o = new QHelpSearchEngine ( PQHELPENGINECORE(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QHELPSEARCHENGINE_DELETE )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int hitCount () const
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_HITCOUNT )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->hitCount () );
  }
}

/*
QList<QHelpSearchQuery> query () const
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_QUERY )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QHelpSearchQuery> list = obj->query ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QHELPSEARCHQUERY" );
    #else
    pDynSym = hb_dynsymFindName( "QHELPSEARCHQUERY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QHelpSearchQuery *) new QHelpSearchQuery ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QHelpSearchQueryWidget * queryWidget ()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_QUERYWIDGET )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpSearchQueryWidget * ptr = obj->queryWidget ();
    _qt4xhb_createReturnClass ( ptr, "QHELPSEARCHQUERYWIDGET" );
  }
}

/*
QHelpSearchResultWidget * resultWidget ()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_RESULTWIDGET )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHelpSearchResultWidget * ptr = obj->resultWidget ();
    _qt4xhb_createReturnClass ( ptr, "QHELPSEARCHRESULTWIDGET" );
  }
}

/*
void cancelIndexing ()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_CANCELINDEXING )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cancelIndexing ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cancelSearching ()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_CANCELSEARCHING )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cancelSearching ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void reindexDocumentation ()
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_REINDEXDOCUMENTATION )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reindexDocumentation ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void search ( const QList<QHelpSearchQuery> & queryList )
*/
HB_FUNC_STATIC( QHELPSEARCHENGINE_SEARCH )
{
  QHelpSearchEngine * obj = (QHelpSearchEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QHelpSearchQuery> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QHelpSearchQuery *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->search ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
