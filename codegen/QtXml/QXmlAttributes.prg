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
$constructor=|new|

$deleteMethod

/*
void append ( const QString & qName, const QString & uri, const QString & localPart, const QString & value )
*/
$method=|void|append|const QString &,const QString &,const QString &,const QString &

/*
void clear ()
*/
$method=|void|clear|

/*
int count () const
*/
$method=|int|count|

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
$internalMethod=|QString|type,type1|int

/*
QString type ( const QString & qName ) const
*/
$internalMethod=|QString|type,type2|const QString &

/*
QString type ( const QString & uri, const QString & localName ) const
*/
$internalMethod=|QString|type,type3|const QString &,const QString &

//[1]QString type ( int index ) const
//[2]QString type ( const QString & qName ) const
//[3]QString type ( const QString & uri, const QString & localName ) const

HB_FUNC_STATIC( QXMLATTRIBUTES_TYPE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QXmlAttributes_type1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlAttributes_type2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlAttributes_type3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
