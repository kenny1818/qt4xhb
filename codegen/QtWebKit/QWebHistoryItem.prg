$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
REQUEST QDATETIME
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QWebHistoryItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD icon
   METHOD isValid
   METHOD lastVisited
   METHOD originalUrl
   METHOD setUserData
   METHOD title
   METHOD url
   METHOD userData
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebHistoryItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QWebHistoryItem ( const QWebHistoryItem & other )
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_NEW )
{
  QWebHistoryItem * o = new QWebHistoryItem ( *PQWEBHISTORYITEM(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

$deleteMethod

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_ICON )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_ISVALID )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QDateTime lastVisited () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_LASTVISITED )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->lastVisited () );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QUrl originalUrl () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_ORIGINALURL )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->originalUrl () );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void setUserData ( const QVariant & userData )
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_SETUSERDATA )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUserData ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString title () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_TITLE )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->title () );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_URL )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QVariant userData () const
*/
HB_FUNC_STATIC( QWEBHISTORYITEM_USERDATA )
{
  QWebHistoryItem * obj = (QWebHistoryItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->userData () );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

$extraMethods

#pragma ENDDUMP
