/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHELPSEARCHQUERY
#endif

CLASS QHelpSearchQueryWidget INHERIT QWidget

   DATA class_id INIT Class_Id_QHelpSearchQueryWidget
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD query
   METHOD onSearch
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpSearchQueryWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHelpSearchQueryWidget>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QHelpSearchQueryWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QHELPSEARCHQUERYWIDGET_NEW )
{
  QHelpSearchQueryWidget * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QHelpSearchQueryWidget ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHelpSearchQueryWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QHELPSEARCHQUERYWIDGET_DELETE )
{
  QHelpSearchQueryWidget * obj = (QHelpSearchQueryWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<QHelpSearchQuery> query () const
*/
HB_FUNC_STATIC( QHELPSEARCHQUERYWIDGET_QUERY )
{
  QHelpSearchQueryWidget * obj = (QHelpSearchQueryWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QHelpSearchQuery> list = obj->query (  );
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





#pragma ENDDUMP
