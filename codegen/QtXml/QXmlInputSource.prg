$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCHAR
#endif

CLASS QXmlInputSource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD data
   METHOD fetchData
   METHOD next
   METHOD reset
   METHOD setData1
   METHOD setData2
   METHOD setData
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlInputSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlInputSource>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlInputSource ()
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_NEW1 )
{
  QXmlInputSource * o = new QXmlInputSource ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QXmlInputSource ( QIODevice * dev )
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_NEW2 )
{
  QXmlInputSource * o = new QXmlInputSource ( PQIODEVICE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QXmlInputSource ()
//[2]QXmlInputSource ( QIODevice * dev )

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_DELETE )
{
  QXmlInputSource * obj = (QXmlInputSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString data () const
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_DATA )
{
  QXmlInputSource * obj = (QXmlInputSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->data () );
  }
}


/*
virtual void fetchData ()
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_FETCHDATA )
{
  QXmlInputSource * obj = (QXmlInputSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->fetchData ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QChar next ()
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_NEXT )
{
  QXmlInputSource * obj = (QXmlInputSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->next () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
virtual void reset ()
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_RESET )
{
  QXmlInputSource * obj = (QXmlInputSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setData ( const QString & dat )
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_SETDATA1 )
{
  QXmlInputSource * obj = (QXmlInputSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setData ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setData ( const QByteArray & dat )
*/
HB_FUNC_STATIC( QXMLINPUTSOURCE_SETDATA2 )
{
  QXmlInputSource * obj = (QXmlInputSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setData ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]virtual void setData ( const QString & dat )
//[2]virtual void setData ( const QByteArray & dat )

HB_FUNC_STATIC( QXMLINPUTSOURCE_SETDATA )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_SETDATA1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_SETDATA2 );
  }
}


HB_FUNC_STATIC( QXMLINPUTSOURCE_NEWFROM )
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

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLINPUTSOURCE_NEWFROM );
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLINPUTSOURCE_NEWFROM );
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLINPUTSOURCE_SETSELFDESTRUCTION )
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