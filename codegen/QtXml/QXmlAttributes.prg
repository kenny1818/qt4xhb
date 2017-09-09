$header

#include "hbclass.ch"


CLASS QXmlAttributes

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD clear
   METHOD count
   METHOD index1
   METHOD index2
   METHOD index3
   METHOD index
   METHOD length
   METHOD localName
   METHOD qName
   METHOD type1
   METHOD type2
   METHOD type3
   METHOD type
   METHOD uri
   METHOD value1
   METHOD value2
   METHOD value3
   METHOD value4
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlAttributes>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlAttributes ()
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_NEW )
{
  QXmlAttributes * o = new QXmlAttributes ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

$deleteMethod

/*
void append ( const QString & qName, const QString & uri, const QString & localPart, const QString & value )
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_APPEND )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->append ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_CLEAR )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QXMLATTRIBUTES_COUNT )
{
  QXmlAttributes * obj = (QXmlAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
int index ( const QString & qName ) const
*/
$method=|int|index,index1|const QString &

/*
int index ( const QLatin1String & qName ) const
*/
$method=|int|index,index2|const QLatin1String &

/*
int index ( const QString & uri, const QString & localPart ) const
*/
$method=|int|index,index3|const QString &,const QString &

//[1]int index ( const QString & qName ) const
//[2]int index ( const QLatin1String & qName ) const
//[3]int index ( const QString & uri, const QString & localPart ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_INDEX )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX1 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_INDEX3 );
  }
}

/*
int length () const
*/
$method=|int|length|

/*
QString localName ( int index ) const
*/
$method=|QString|localName|int

/*
QString qName ( int index ) const
*/
$method=|QString|qName|int

/*
QString type ( int index ) const
*/
$method=|QString|type,type1|int

/*
QString type ( const QString & qName ) const
*/
$method=|QString|type,type2|const QString &

/*
QString type ( const QString & uri, const QString & localName ) const
*/
$method=|QString|type,type3|const QString &,const QString &

//[1]QString type ( int index ) const
//[2]QString type ( const QString & qName ) const
//[3]QString type ( const QString & uri, const QString & localName ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_TYPE3 );
  }
}

/*
QString uri ( int index ) const
*/
$method=|QString|uri|int

/*
QString value ( int index ) const
*/
$method=|QString|value,value1|int

/*
QString value ( const QString & qName ) const
*/
$method=|QString|value,value2|const QString &

/*
QString value ( const QLatin1String & qName ) const
*/
$method=|QString|value,value3|const QLatin1String &

/*
QString value ( const QString & uri, const QString & localName ) const
*/
$method=|QString|value,value4|const QString &,const QString &

//[1]QString value ( int index ) const
//[2]QString value ( const QString & qName ) const
//[3]QString value ( const QLatin1String & qName ) const
//[4]QString value ( const QString & uri, const QString & localName ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE2 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLATTRIBUTES_VALUE4 );
  }
}

$extraMethods

#pragma ENDDUMP
