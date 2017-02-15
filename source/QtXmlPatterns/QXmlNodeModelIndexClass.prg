/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QABSTRACTXMLNODEMODEL

CLASS QXmlNodeModelIndex

   DATA pointer
   DATA class_id INIT Class_Id_QXmlNodeModelIndex
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD additionalData
   METHOD data
   METHOD internalPointer
   METHOD isNull
   METHOD model
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QXmlNodeModelIndex
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QXmlNodeModelIndex
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QXmlNodeModelIndex
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QXmlNodeModelIndex
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QXmlNodeModelIndex
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QXmlNodeModelIndex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QXmlNodeModelIndex>

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
QXmlNodeModelIndex ()
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW1 )
{
  QXmlNodeModelIndex * o = NULL;
  o = new QXmlNodeModelIndex (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlNodeModelIndex *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QXmlNodeModelIndex ( const QXmlNodeModelIndex & other )
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW2 )
{
  QXmlNodeModelIndex * o = NULL;
  QXmlNodeModelIndex * par1 = (QXmlNodeModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QXmlNodeModelIndex ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QXmlNodeModelIndex *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QXmlNodeModelIndex ()
//[2]QXmlNodeModelIndex ( const QXmlNodeModelIndex & other )

HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLNODEMODELINDEX_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLNODEMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QXMLNODEMODELINDEX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
qint64 additionalData () const
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_ADDITIONALDATA )
{
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->additionalData (  );
    hb_retni( i );
  }
}


/*
qint64 data () const
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_DATA )
{
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->data (  );
    hb_retni( i );
  }
}


/*
void * internalPointer () const
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_INTERNALPOINTER )
{
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    void * retptr = obj->internalPointer (  );
  hb_retptr( (void *) retptr );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_ISNULL )
{
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
const QAbstractXmlNodeModel * model () const
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_MODEL )
{
  QXmlNodeModelIndex * obj = (QXmlNodeModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QAbstractXmlNodeModel * ptr = obj->model (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTXMLNODEMODEL" );
  }
}





#pragma ENDDUMP
