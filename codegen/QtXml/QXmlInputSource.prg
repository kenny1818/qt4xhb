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

$extraMethods

#pragma ENDDUMP
