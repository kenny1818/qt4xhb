/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QBYTEARRAY
REQUEST QNETWORKCOOKIE
#endif

CLASS QNetworkCookie

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkCookie
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QNetworkCookie
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QNetworkCookie>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QDateTime>

/*
QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_NEW1 )
{
  QNetworkCookie * o = NULL;
  QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QNetworkCookie ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkCookie *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QNetworkCookie ( const QNetworkCookie & other )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_NEW2 )
{
  QNetworkCookie * o = NULL;
  QNetworkCookie * par1 = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QNetworkCookie ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QNetworkCookie *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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

HB_FUNC_STATIC( QNETWORKCOOKIE_DELETE )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString domain () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_DOMAIN )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->domain (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QDateTime expirationDate () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_EXPIRATIONDATE )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->expirationDate (  ) );
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
    hb_retl( obj->isHttpOnly (  ) );
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
    hb_retl( obj->isSecure (  ) );
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
    hb_retl( obj->isSessionCookie (  ) );
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
    QByteArray * ptr = new QByteArray( obj->name (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QString path () const
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_PATH )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->path (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setDomain ( const QString & domain )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETDOMAIN )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setDomain ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setExpirationDate ( const QDateTime & date )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETEXPIRATIONDATE )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setExpirationDate ( *par1 );
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
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setName ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPath ( const QString & path )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_SETPATH )
{
  QNetworkCookie * obj = (QNetworkCookie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setPath ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setValue ( *par1 );
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
    QByteArray * ptr = new QByteArray( obj->toRawForm (  (QNetworkCookie::RawForm) par1 ) );
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
    QByteArray * ptr = new QByteArray( obj->value (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}



/*
QList<QNetworkCookie> parseCookies ( const QByteArray & cookieString )
*/
HB_FUNC_STATIC( QNETWORKCOOKIE_PARSECOOKIES )
{
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QList<QNetworkCookie> list = QNetworkCookie::parseCookies ( *par1 );
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


HB_FUNC_STATIC( QNETWORKCOOKIE_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKCOOKIE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKCOOKIE_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKCOOKIE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKCOOKIE_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKCOOKIE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKCOOKIE_SETSELFDESTRUCTION )
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
