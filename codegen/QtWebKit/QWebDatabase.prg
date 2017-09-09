$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWEBSECURITYORIGIN
#endif

CLASS QWebDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD displayName
   METHOD expectedSize
   METHOD fileName
   METHOD name
   METHOD origin
   METHOD size
   METHOD removeAllDatabases
   METHOD removeDatabase
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebDatabase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QWebSecurityOrigin>

/*
QWebDatabase ( const QWebDatabase & other )
*/
HB_FUNC_STATIC( QWEBDATABASE_NEW )
{
  QWebDatabase * o = new QWebDatabase ( *PQWEBDATABASE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

$deleteMethod

/*
QString displayName () const
*/
$method=|QString|displayName|

/*
qint64 expectedSize () const
*/
HB_FUNC_STATIC( QWEBDATABASE_EXPECTEDSIZE )
{
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->expectedSize () );
  }
}

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QString name () const
*/
$method=|QString|name|

/*
QWebSecurityOrigin origin () const
*/
HB_FUNC_STATIC( QWEBDATABASE_ORIGIN )
{
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebSecurityOrigin * ptr = new QWebSecurityOrigin( obj->origin () );
    _qt4xhb_createReturnClass ( ptr, "QWEBSECURITYORIGIN", true );
  }
}


/*
qint64 size () const
*/
HB_FUNC_STATIC( QWEBDATABASE_SIZE )
{
  QWebDatabase * obj = (QWebDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->size () );
  }
}



/*
void removeAllDatabases ()
*/
HB_FUNC_STATIC( QWEBDATABASE_REMOVEALLDATABASES )
{
  QWebDatabase::removeAllDatabases ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeDatabase ( const QWebDatabase & db )
*/
HB_FUNC_STATIC( QWEBDATABASE_REMOVEDATABASE )
{
  QWebDatabase::removeDatabase ( *PQWEBDATABASE(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
