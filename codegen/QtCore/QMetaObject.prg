$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMETACLASSINFO
REQUEST QMETAMETHOD
REQUEST QMETAENUM
REQUEST QOBJECT
REQUEST QMETAPROPERTY
REQUEST QMETAOBJECT
REQUEST QBYTEARRAY
#endif

CLASS QMetaObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD classInfo
   METHOD classInfoCount
   METHOD classInfoOffset
   METHOD className
   METHOD constructor
   METHOD constructorCount
   METHOD enumerator
   METHOD enumeratorCount
   METHOD enumeratorOffset
   METHOD indexOfClassInfo
   METHOD indexOfConstructor
   METHOD indexOfEnumerator
   METHOD indexOfMethod
   METHOD indexOfProperty
   METHOD indexOfSignal
   METHOD indexOfSlot
   METHOD method
   METHOD methodCount
   METHOD methodOffset
   METHOD newInstance
   METHOD property
   METHOD propertyCount
   METHOD propertyOffset
   METHOD superClass
   METHOD userProperty
   METHOD checkConnectArgs
   METHOD connectSlotsByName
   METHOD invokeMethod1
   METHOD invokeMethod2
   METHOD invokeMethod3
   METHOD invokeMethod4
   METHOD invokeMethod
   METHOD normalizedSignature
   METHOD normalizedType

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMetaObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QMetaClassInfo>
#include <QMetaMethod>
#include <QMetaEnum>
#include <QMetaProperty>
#include <QByteArray>

$deleteMethod

/*
QMetaClassInfo classInfo ( int index ) const
*/
$method=|QMetaClassInfo|classInfo|int

/*
int classInfoCount () const
*/
$method=|int|classInfoCount|

/*
int classInfoOffset () const
*/
$method=|int|classInfoOffset|

/*
const char * className () const
*/
$method=|const char *|className|

/*
QMetaMethod constructor ( int index ) const
*/
$method=|QMetaMethod|constructor|int

/*
int constructorCount () const
*/
$method=|int|constructorCount|

/*
QMetaEnum enumerator ( int index ) const
*/
$method=|QMetaEnum|enumerator|int

/*
int enumeratorCount () const
*/
$method=|int|enumeratorCount|

/*
int enumeratorOffset () const
*/
$method=|int|enumeratorOffset|

/*
int indexOfClassInfo ( const char * name ) const
*/
$method=|int|indexOfClassInfo|const char *

/*
int indexOfConstructor ( const char * constructor ) const
*/
$method=|int|indexOfConstructor|const char *

/*
int indexOfEnumerator ( const char * name ) const
*/
$method=|int|indexOfEnumerator|const char *

/*
int indexOfMethod ( const char * method ) const
*/
$method=|int|indexOfMethod|const char *

/*
int indexOfProperty ( const char * name ) const
*/
$method=|int|indexOfProperty|const char *

/*
int indexOfSignal ( const char * signal ) const
*/
$method=|int|indexOfSignal|const char *

/*
int indexOfSlot ( const char * slot ) const
*/
$method=|int|indexOfSlot|const char *

/*
QMetaMethod method ( int index ) const
*/
$method=|QMetaMethod|method|int

/*
int methodCount () const
*/
$method=|int|methodCount|

/*
int methodOffset () const
*/
$method=|int|methodOffset|

/*
QObject * newInstance ( QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() ) const
*/
$method=|QObject *|newInstance|QGenericArgument=QGenericArgument( 0 ),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

/*
QMetaProperty property ( int index ) const
*/
$method=|QMetaProperty|property|int

/*
int propertyCount () const
*/
$method=|int|propertyCount|

/*
int propertyOffset () const
*/
$method=|int|propertyOffset|

/*
const QMetaObject * superClass () const
*/
$method=|const QMetaObject *|superClass|

/*
QMetaProperty userProperty () const
*/
$method=|QMetaProperty|userProperty|

/*
static bool checkConnectArgs ( const char * signal, const char * method )
*/
$staticMethod=|bool|checkConnectArgs|const char *,const char *

/*
static void connectSlotsByName ( QObject * object )
*/
$staticMethod=|void|connectSlotsByName|QObject *

/*
static bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
$staticMethod=|bool|invokeMethod,invokeMethod1|QObject *,const char *,Qt::ConnectionType,QGenericReturnArgument,QGenericArgument=QGenericArgument( 0 ),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

/*
static bool invokeMethod ( QObject * obj, const char * member, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
$staticMethod=|bool|invokeMethod,invokeMethod2|QObject *,const char *,QGenericReturnArgument,QGenericArgument=QGenericArgument( 0 ),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

/*
static bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
$staticMethod=|bool|invokeMethod,invokeMethod3|QObject *,const char *,Qt::ConnectionType,QGenericArgument=QGenericArgument( 0 ),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

/*
static bool invokeMethod ( QObject * obj, const char * member, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
$staticMethod=|bool|invokeMethod,invokeMethod4|QObject *,const char *,QGenericArgument=QGenericArgument( 0 ),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument(),QGenericArgument=QGenericArgument()

//[1]bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[2]bool invokeMethod ( QObject * obj, const char * member, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[3]bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[4]bool invokeMethod ( QObject * obj, const char * member, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )

HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD )
{
  if( ISBETWEEN(4,14) && ISQOBJECT(1) && ISCHAR(2) && ISNUM(3) && ISOBJECT(4) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) && (ISOBJECT(14)||ISNIL(14)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD1 );
  }
  else if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISCHAR(2) && ISOBJECT(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD2 );
  }
  else if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISCHAR(2) && ISNUM(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD3 );
  }
  else if( ISBETWEEN(3,12) && ISQOBJECT(1) && ISCHAR(2) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD4 );
  }
}

/*
static QByteArray normalizedSignature ( const char * method )
*/
$staticMethod=|QByteArray|normalizedSignature|const char *

/*
static QByteArray normalizedType ( const char * type )
*/
$staticMethod=|QByteArray|normalizedType|const char *

$extraMethods

#pragma ENDDUMP
