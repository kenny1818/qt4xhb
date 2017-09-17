$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
#endif

CLASS QNetworkAddressEntry

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD broadcast
   METHOD ip
   METHOD netmask
   METHOD prefixLength
   METHOD setBroadcast
   METHOD setIp
   METHOD setNetmask
   METHOD setPrefixLength

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkAddressEntry>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QNetworkAddressEntry ()
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW1 )
{
  QNetworkAddressEntry * o = new QNetworkAddressEntry ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QNetworkAddressEntry ( const QNetworkAddressEntry & other )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW2 )
{
  QNetworkAddressEntry * o = new QNetworkAddressEntry ( *PQNETWORKADDRESSENTRY(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QNetworkAddressEntry ()
//[2]QNetworkAddressEntry ( const QNetworkAddressEntry & other )

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKADDRESSENTRY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKADDRESSENTRY(1) )
  {
    HB_FUNC_EXEC( QNETWORKADDRESSENTRY_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QHostAddress broadcast () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_BROADCAST )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->broadcast () );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
QHostAddress ip () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_IP )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->ip () );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
QHostAddress netmask () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NETMASK )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->netmask () );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
int prefixLength () const
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_PREFIXLENGTH )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( (int) obj->prefixLength () );
  }
}


/*
void setBroadcast ( const QHostAddress & newBroadcast )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETBROADCAST )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBroadcast ( *PQHOSTADDRESS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIp ( const QHostAddress & newIp )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETIP )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIp ( *PQHOSTADDRESS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetmask ( const QHostAddress & newNetmask )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETNETMASK )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNetmask ( *PQHOSTADDRESS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrefixLength ( int length )
*/
HB_FUNC_STATIC( QNETWORKADDRESSENTRY_SETPREFIXLENGTH )
{
  QNetworkAddressEntry * obj = (QNetworkAddressEntry *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPrefixLength ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
