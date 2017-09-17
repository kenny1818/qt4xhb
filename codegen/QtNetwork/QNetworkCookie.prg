$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QBYTEARRAY
REQUEST QNETWORKCOOKIE
#endif

CLASS QNetworkCookie

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD domain
   METHOD expirationDate
   METHOD isHttpOnly
   METHOD isSecure
   METHOD isSessionCookie
   METHOD name
   METHOD path
   METHOD setDomain
   METHOD setExpirationDate
   METHOD setHttpOnly
   METHOD setName
   METHOD setPath
   METHOD setSecure
   METHOD setValue
   METHOD toRawForm
   METHOD value
   METHOD parseCookies

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkCookie>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDateTime>

/*
QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_NEW1 )
{
  QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QNetworkCookie * o = new QNetworkCookie ( par1, par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QNetworkCookie ( const QNetworkCookie & other )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_NEW2 )
{
  QNetworkCookie * o = new QNetworkCookie ( *PQNETWORKCOOKIE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
//[2]QNetworkCookie ( const QNetworkCookie & other )

HB_FUNC_STATIC( QNETWORKCOOKIE_NEW )
{
  if( ISBETWEEN(0,2) && (ISQBYTEARRAY(1)||ISNIL(1)) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QNETWORKCOOKIE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKCOOKIE(1) )
  {
    HB_FUNC_EXEC( QNETWORKCOOKIE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString domain () const
*/
$method=|QString|domain|

/*
QDateTime expirationDate () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_EXPIRATIONDATE )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->expirationDate () );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
bool isHttpOnly () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_ISHTTPONLY )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isHttpOnly () );
  }
}


/*
bool isSecure () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_ISSECURE )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSecure () );
  }
}


/*
bool isSessionCookie () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_ISSESSIONCOOKIE )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSessionCookie () );
  }
}


/*
QByteArray name () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_NAME )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->name () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QString path () const
*/
$method=|QString|path|

/*
void setDomain ( const QString & domain )
*/
$method=|void|setDomain|const QString &

/*
void setExpirationDate ( const QDateTime & date )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETEXPIRATIONDATE )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setExpirationDate ( *PQDATETIME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHttpOnly ( bool enable )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETHTTPONLY )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHttpOnly ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setName ( const QByteArray & cookieName )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETNAME )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setName ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPath ( const QString & path )
*/
$method=|void|setPath|const QString &

/*
void setSecure ( bool enable )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETSECURE )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSecure ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setValue ( const QByteArray & value )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETVALUE )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setValue ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray toRawForm ( RawForm form = Full ) const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_TORAWFORM )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QNetworkCookie::Full : hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->toRawForm ( (QNetworkCookie::RawForm) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray value () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_VALUE )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->value () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}



/*
QList<QNetworkCookie> parseCookies ( const QByteArray & cookieString )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_PARSECOOKIES )
{
  QList<QNetworkCookie> list = QNetworkCookie::parseCookies ( *PQBYTEARRAY(1) );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QNETWORKCOOKIE" );
  #else
  pDynSym = hb_dynsymFindName( "QNETWORKCOOKIE" );
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
      hb_itemPutPtr( pItem, (QNetworkCookie *) new QNetworkCookie ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

$extraMethods

#pragma ENDDUMP
