$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTXMLNODEMODEL
#endif

CLASS QXmlNodeModelIndex

   DATA pointer
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QXmlNodeModelIndex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlNodeModelIndex>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlNodeModelIndex ()
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW1 )
{
  QXmlNodeModelIndex * o = new QXmlNodeModelIndex ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlNodeModelIndex ( const QXmlNodeModelIndex & other )
*/
HB_FUNC_STATIC( QXMLNODEMODELINDEX_NEW2 )
{
  QXmlNodeModelIndex * o = new QXmlNodeModelIndex ( *PQXMLNODEMODELINDEX(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
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
    RQINT64( obj->additionalData () );
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
    RQINT64( obj->data () );
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
    void * retptr = obj->internalPointer ();
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
    RBOOL( obj->isNull () );
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
    const QAbstractXmlNodeModel * ptr = obj->model ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTXMLNODEMODEL" );
  }
}

$extraMethods

#pragma ENDDUMP
