/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTreeWidgetItemIterator

   DATA pointer
   DATA class_id INIT Class_Id_QTreeWidgetItemIterator
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTreeWidgetItemIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTreeWidgetItemIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTreeWidgetItemIterator ( const QTreeWidgetItemIterator & it )
*/
HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW1 )
{
  QTreeWidgetItemIterator * o = NULL;
  QTreeWidgetItemIterator * par1 = (QTreeWidgetItemIterator *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTreeWidgetItemIterator ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QTreeWidgetItemIterator ( QTreeWidget * widget, IteratorFlags flags = All )
*/
HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW2 )
{
  QTreeWidgetItemIterator * o = NULL;
  QTreeWidget * par1 = (QTreeWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QTreeWidgetItemIterator::All : hb_parni(2);
  o = new QTreeWidgetItemIterator ( par1,  (QTreeWidgetItemIterator::IteratorFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QTreeWidgetItemIterator ( QTreeWidgetItem * item, IteratorFlags flags = All )
*/
HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW3 )
{
  QTreeWidgetItemIterator * o = NULL;
  QTreeWidgetItem * par1 = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QTreeWidgetItemIterator::All : hb_parni(2);
  o = new QTreeWidgetItemIterator ( par1,  (QTreeWidgetItemIterator::IteratorFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QTreeWidgetItemIterator ( const QTreeWidgetItemIterator & it )
//[2]QTreeWidgetItemIterator ( QTreeWidget * widget, IteratorFlags flags = All )
//[3]QTreeWidgetItemIterator ( QTreeWidgetItem * item, IteratorFlags flags = All )

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW )
{
  if( ISNUMPAR(1) && ISQTREEWIDGETITEMITERATOR(1) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEMITERATOR_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGET(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEMITERATOR_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTREEWIDGETITEMITERATOR_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_DELETE )
{
  QTreeWidgetItemIterator * obj = (QTreeWidgetItemIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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


HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTREEWIDGETITEMITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTREEWIDGETITEMITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}




#pragma ENDDUMP
