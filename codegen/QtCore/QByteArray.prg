$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QByteArray

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD append1
   METHOD append2
   METHOD append3
   METHOD append4
   METHOD append5
   METHOD append
   METHOD at
   METHOD capacity
   METHOD chop
   METHOD clear
   METHOD constData
   METHOD contains1
   METHOD contains2
   METHOD contains3
   METHOD contains
   METHOD count1
   METHOD count2
   METHOD count3
   METHOD count4
   METHOD count
   METHOD endsWith1
   METHOD endsWith2
   METHOD endsWith3
   METHOD endsWith
   METHOD fill
   METHOD indexOf1
   METHOD indexOf2
   METHOD indexOf3
   METHOD indexOf4
   METHOD indexOf
   METHOD insert1
   METHOD insert2
   METHOD insert3
   METHOD insert4
   METHOD insert5
   METHOD insert
   METHOD isEmpty
   METHOD isNull
   METHOD lastIndexOf1
   METHOD lastIndexOf2
   METHOD lastIndexOf3
   METHOD lastIndexOf4
   METHOD lastIndexOf
   METHOD left
   METHOD leftJustified
   METHOD length
   METHOD mid
   METHOD prepend1
   METHOD prepend2
   METHOD prepend3
   METHOD prepend4
   METHOD prepend
   METHOD push_back1
   METHOD push_back2
   METHOD push_back3
   METHOD push_back
   METHOD push_front1
   METHOD push_front2
   METHOD push_front3
   METHOD push_front
   METHOD remove
   METHOD repeated
   METHOD replace1
   METHOD replace2
   METHOD replace3
   METHOD replace4
   METHOD replace5
   METHOD replace6
   METHOD replace7
   METHOD replace8
   METHOD replace9
   METHOD replace10
   METHOD replace11
   METHOD replace12
   METHOD replace13
   METHOD replace14
   METHOD replace
   METHOD reserve
   METHOD resize
   METHOD right
   METHOD rightJustified
   METHOD setNum1
   METHOD setNum2
   METHOD setNum3
   METHOD setNum4
   METHOD setNum5
   METHOD setNum6
   METHOD setNum7
   METHOD setNum8
   METHOD setNum
   METHOD setRawData
   METHOD simplified
   METHOD size
   METHOD split
   METHOD squeeze
   METHOD startsWith1
   METHOD startsWith2
   METHOD startsWith3
   METHOD startsWith
   METHOD toBase64
   METHOD toDouble
   METHOD toFloat
   METHOD toHex
   METHOD toInt
   METHOD toLong
   METHOD toLongLong
   METHOD toLower
   METHOD toPercentEncoding
   METHOD toShort
   METHOD toUInt
   METHOD toULong
   METHOD toULongLong
   METHOD toUShort
   METHOD toUpper
   METHOD trimmed
   METHOD truncate
   METHOD fromBase64
   METHOD fromHex
   METHOD fromPercentEncoding
   METHOD fromRawData
   METHOD number1
   METHOD number2
   METHOD number3
   METHOD number4
   METHOD number5
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QByteArray>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QString>
#include <QList>

/*
QByteArray ()
*/
HB_FUNC_STATIC( QBYTEARRAY_NEW1 )
{
  QByteArray * o = new QByteArray ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QByteArray ( const char * str )
*/
HB_FUNC_STATIC( QBYTEARRAY_NEW2 )
{
  QByteArray * o = new QByteArray ( (const char *) hb_parc(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QByteArray ( const char * data, int size )
*/
HB_FUNC_STATIC( QBYTEARRAY_NEW3 )
{
  QByteArray * o = new QByteArray ( (const char *) hb_parc(1), PINT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QByteArray ( int size, char ch )
*/
HB_FUNC_STATIC( QBYTEARRAY_NEW4 )
{
  char par2 = ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
  QByteArray * o = new QByteArray ( PINT(1), par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QByteArray ( const QByteArray & other )
*/
HB_FUNC_STATIC( QBYTEARRAY_NEW5 )
{
  QByteArray * o = new QByteArray ( *PQBYTEARRAY(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QByteArray ()
//[2]QByteArray ( const char * str )
//[3]QByteArray ( const char * data, int size )
//[4]QByteArray ( int size, char ch )
//[5]QByteArray ( const QByteArray & other )

HB_FUNC_STATIC( QBYTEARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NEW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NEW3 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QByteArray & append ( const QByteArray & ba )
*/
HB_FUNC_STATIC( QBYTEARRAY_APPEND1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->append ( *PQBYTEARRAY(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QByteArray & append ( const QString & str )
*/
HB_FUNC_STATIC( QBYTEARRAY_APPEND2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->append ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & append ( const char * str )
*/
HB_FUNC_STATIC( QBYTEARRAY_APPEND3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->append ( (const char *) hb_parc(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & append ( const char * str, int len )
*/
HB_FUNC_STATIC( QBYTEARRAY_APPEND4 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->append ( (const char *) hb_parc(1), PINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & append ( char ch )
*/
HB_FUNC_STATIC( QBYTEARRAY_APPEND5 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    QByteArray * ptr = new QByteArray( obj->append ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]QByteArray & append ( const QByteArray & ba )
//[2]QByteArray & append ( const QString & str )
//[3]QByteArray & append ( const char * str )
//[4]QByteArray & append ( const char * str, int len )
//[5]QByteArray & append ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_APPEND )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND4 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_APPEND5 );
  }
}

/*
char at ( int i ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_AT )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char i = obj->at ( PINT(1) );
    hb_retni( i );
  }
}


/*
int capacity () const
*/
HB_FUNC_STATIC( QBYTEARRAY_CAPACITY )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->capacity () );
  }
}


/*
void chop ( int n )
*/
HB_FUNC_STATIC( QBYTEARRAY_CHOP )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->chop ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QBYTEARRAY_CLEAR )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const char * constData () const
*/
HB_FUNC_STATIC( QBYTEARRAY_CONSTDATA )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->constData ();
    hb_retc( str1 );
  }
}


/*
bool contains ( const QByteArray & ba ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_CONTAINS1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( (bool) obj->contains ( *PQBYTEARRAY(1) ) );
  }
}


/*
bool contains ( const char * str ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_CONTAINS2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( (bool) obj->contains ( (const char *) hb_parc(1) ) );
  }
}


/*
bool contains ( char ch ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_CONTAINS3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    RBOOL( (bool) obj->contains ( par1 ) );
  }
}


//[1]bool contains ( const QByteArray & ba ) const
//[2]bool contains ( const char * str ) const
//[3]bool contains ( char ch ) const

HB_FUNC_STATIC( QBYTEARRAY_CONTAINS )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_CONTAINS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_CONTAINS2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_CONTAINS3 );
  }
}

/*
int count ( const QByteArray & ba ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_COUNT1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count ( *PQBYTEARRAY(1) ) );
  }
}


/*
int count ( const char * str ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_COUNT2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count ( (const char *) hb_parc(1) ) );
  }
}


/*
int count ( char ch ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_COUNT3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    RINT( obj->count ( par1 ) );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QBYTEARRAY_COUNT4 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}


//[1]int count ( const QByteArray & ba ) const
//[2]int count ( const char * str ) const
//[3]int count ( char ch ) const
//[4]int count () const

HB_FUNC_STATIC( QBYTEARRAY_COUNT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_COUNT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_COUNT2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_COUNT3 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_COUNT4 );
  }
}



//[1]char * data ()
//[2]const char * data () const

//HB_FUNC_STATIC( QBYTEARRAY_DATA )
//{
//  HB_FUNC_EXEC( QBYTEARRAY_DATA1 );
//}

/*
bool endsWith ( const QByteArray & ba ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_ENDSWITH1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->endsWith ( *PQBYTEARRAY(1) ) );
  }
}


/*
bool endsWith ( const char * str ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_ENDSWITH2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->endsWith ( (const char *) hb_parc(1) ) );
  }
}


/*
bool endsWith ( char ch ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_ENDSWITH3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    RBOOL( obj->endsWith ( par1 ) );
  }
}


//[1]bool endsWith ( const QByteArray & ba ) const
//[2]bool endsWith ( const char * str ) const
//[3]bool endsWith ( char ch ) const

HB_FUNC_STATIC( QBYTEARRAY_ENDSWITH )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_ENDSWITH1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_ENDSWITH2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_ENDSWITH3 );
  }
}

/*
QByteArray & fill ( char ch, int size = -1 )
*/
HB_FUNC_STATIC( QBYTEARRAY_FILL )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    QByteArray * ptr = new QByteArray( obj->fill ( par1, OPINT(2,-1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
int indexOf ( const QByteArray & ba, int from = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_INDEXOF1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexOf ( *PQBYTEARRAY(1), OPINT(2,0) ) );
  }
}


/*
int indexOf ( const QString & str, int from = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_INDEXOF2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexOf ( PQSTRING(1), OPINT(2,0) ) );
  }
}


/*
int indexOf ( const char * str, int from = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_INDEXOF3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexOf ( (const char *) hb_parc(1), OPINT(2,0) ) );
  }
}


/*
int indexOf ( char ch, int from = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_INDEXOF4 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    RINT( obj->indexOf ( par1, OPINT(2,0) ) );
  }
}


//[1]int indexOf ( const QByteArray & ba, int from = 0 ) const
//[2]int indexOf ( const QString & str, int from = 0 ) const
//[3]int indexOf ( const char * str, int from = 0 ) const
//[4]int indexOf ( char ch, int from = 0 ) const

HB_FUNC_STATIC( QBYTEARRAY_INDEXOF )
{
  if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INDEXOF1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INDEXOF2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INDEXOF3 ); // WARNING: conflita com [2]
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INDEXOF4 );
  }
}

/*
QByteArray & insert ( int i, const QByteArray & ba )
*/
HB_FUNC_STATIC( QBYTEARRAY_INSERT1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->insert ( PINT(1), *PQBYTEARRAY(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & insert ( int i, const QString & str )
*/
HB_FUNC_STATIC( QBYTEARRAY_INSERT2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->insert ( PINT(1), PQSTRING(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & insert ( int i, const char * str )
*/
HB_FUNC_STATIC( QBYTEARRAY_INSERT3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->insert ( PINT(1), (const char *) hb_parc(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & insert ( int i, const char * str, int len )
*/
HB_FUNC_STATIC( QBYTEARRAY_INSERT4 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->insert ( PINT(1), (const char *) hb_parc(2), PINT(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & insert ( int i, char ch )
*/
HB_FUNC_STATIC( QBYTEARRAY_INSERT5 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par2 = ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
    QByteArray * ptr = new QByteArray( obj->insert ( PINT(1), par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]QByteArray & insert ( int i, const QByteArray & ba )
//[2]QByteArray & insert ( int i, const QString & str )
//[3]QByteArray & insert ( int i, const char * str )
//[4]QByteArray & insert ( int i, const char * str, int len )
//[5]QByteArray & insert ( int i, char ch )

HB_FUNC_STATIC( QBYTEARRAY_INSERT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT4 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_INSERT5 );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QBYTEARRAY_ISEMPTY )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QBYTEARRAY_ISNULL )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
int lastIndexOf ( const QByteArray & ba, int from = -1 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_LASTINDEXOF1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lastIndexOf ( *PQBYTEARRAY(1), OPINT(2,-1) ) );
  }
}


/*
int lastIndexOf ( const QString & str, int from = -1 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_LASTINDEXOF2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lastIndexOf ( PQSTRING(1), OPINT(2,-1) ) );
  }
}


/*
int lastIndexOf ( const char * str, int from = -1 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_LASTINDEXOF3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lastIndexOf ( (const char *) hb_parc(1), OPINT(2,-1) ) );
  }
}


/*
int lastIndexOf ( char ch, int from = -1 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_LASTINDEXOF4 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    RINT( obj->lastIndexOf ( par1, OPINT(2,-1) ) );
  }
}


//[1]int lastIndexOf ( const QByteArray & ba, int from = -1 ) const
//[2]int lastIndexOf ( const QString & str, int from = -1 ) const
//[3]int lastIndexOf ( const char * str, int from = -1 ) const
//[4]int lastIndexOf ( char ch, int from = -1 ) const

HB_FUNC_STATIC( QBYTEARRAY_LASTINDEXOF )
{
  if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF3 ); // WARNING: conflita com [2]
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_LASTINDEXOF4 );
  }
}

/*
QByteArray left ( int len ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_LEFT )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->left ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray leftJustified ( int width, char fill = ' ', bool truncate = false ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_LEFTJUSTIFIED )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par2 = ISNIL(2)? 32 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    QByteArray * ptr = new QByteArray( obj->leftJustified ( PINT(1), par2, OPBOOL(3,false) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
int length () const
*/
HB_FUNC_STATIC( QBYTEARRAY_LENGTH )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->length () );
  }
}


/*
QByteArray mid ( int pos, int len = -1 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_MID )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->mid ( PINT(1), OPINT(2,-1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & prepend ( const QByteArray & ba )
*/
HB_FUNC_STATIC( QBYTEARRAY_PREPEND1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->prepend ( *PQBYTEARRAY(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & prepend ( const char * str )
*/
HB_FUNC_STATIC( QBYTEARRAY_PREPEND2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->prepend ( (const char *) hb_parc(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & prepend ( const char * str, int len )
*/
HB_FUNC_STATIC( QBYTEARRAY_PREPEND3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->prepend ( (const char *) hb_parc(1), PINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & prepend ( char ch )
*/
HB_FUNC_STATIC( QBYTEARRAY_PREPEND4 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    QByteArray * ptr = new QByteArray( obj->prepend ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]QByteArray & prepend ( const QByteArray & ba )
//[2]QByteArray & prepend ( const char * str )
//[3]QByteArray & prepend ( const char * str, int len )
//[4]QByteArray & prepend ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_PREPEND )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_PREPEND1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_PREPEND2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_PREPEND3 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_PREPEND4 );
  }
}

/*
void push_back ( const QByteArray & other )
*/
HB_FUNC_STATIC( QBYTEARRAY_PUSH_BACK1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->push_back ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void push_back ( const char * str )
*/
HB_FUNC_STATIC( QBYTEARRAY_PUSH_BACK2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->push_back ( (const char *) hb_parc(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void push_back ( char ch )
*/
HB_FUNC_STATIC( QBYTEARRAY_PUSH_BACK3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    obj->push_back ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void push_back ( const QByteArray & other )
//[2]void push_back ( const char * str )
//[3]void push_back ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_PUSH_BACK )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_PUSH_BACK1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_PUSH_BACK2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_PUSH_BACK3 );
  }
}

/*
void push_front ( const QByteArray & other )
*/
HB_FUNC_STATIC( QBYTEARRAY_PUSH_FRONT1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->push_front ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void push_front ( const char * str )
*/
HB_FUNC_STATIC( QBYTEARRAY_PUSH_FRONT2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->push_front ( (const char *) hb_parc(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void push_front ( char ch )
*/
HB_FUNC_STATIC( QBYTEARRAY_PUSH_FRONT3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    obj->push_front ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void push_front ( const QByteArray & other )
//[2]void push_front ( const char * str )
//[3]void push_front ( char ch )

HB_FUNC_STATIC( QBYTEARRAY_PUSH_FRONT )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_PUSH_FRONT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_PUSH_FRONT2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_PUSH_FRONT3 );
  }
}

/*
QByteArray & remove ( int pos, int len )
*/
HB_FUNC_STATIC( QBYTEARRAY_REMOVE )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->remove ( PINT(1), PINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray repeated ( int times ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_REPEATED )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->repeated ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( int pos, int len, const QByteArray & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->replace ( PINT(1), PINT(2), *PQBYTEARRAY(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( int pos, int len, const char * after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->replace ( PINT(1), PINT(2), (const char *) hb_parc(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( int pos, int len, const char * after, int alen )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->replace ( PINT(1), PINT(2), (const char *) hb_parc(3), PINT(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( const QByteArray & before, const QByteArray & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE4 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->replace ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( const char * before, const QByteArray & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE5 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->replace ( (const char *) hb_parc(1), *PQBYTEARRAY(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( const char * before, int bsize, const char * after, int asize )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE6 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->replace ( (const char *) hb_parc(1), PINT(2), (const char *) hb_parc(3), PINT(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( const QByteArray & before, const char * after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE7 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->replace ( *PQBYTEARRAY(1), (const char *) hb_parc(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( const QString & before, const QByteArray & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE8 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->replace ( PQSTRING(1), *PQBYTEARRAY(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( const QString & before, const char * after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE9 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->replace ( PQSTRING(1), (const char *) hb_parc(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( const char * before, const char * after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE10 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->replace ( (const char *) hb_parc(1), (const char *) hb_parc(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( char before, const QByteArray & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE11 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    QByteArray * ptr = new QByteArray( obj->replace ( par1, *PQBYTEARRAY(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( char before, const QString & after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE12 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    QByteArray * ptr = new QByteArray( obj->replace ( par1, PQSTRING(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( char before, const char * after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE13 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    QByteArray * ptr = new QByteArray( obj->replace ( par1, (const char *) hb_parc(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & replace ( char before, char after )
*/
HB_FUNC_STATIC( QBYTEARRAY_REPLACE14 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    char par2 = ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
    QByteArray * ptr = new QByteArray( obj->replace ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[01]QByteArray & replace ( int pos, int len, const QByteArray & after )
//[02]QByteArray & replace ( int pos, int len, const char * after )
//[03]QByteArray & replace ( int pos, int len, const char * after, int alen )
//[04]QByteArray & replace ( const QByteArray & before, const QByteArray & after )
//[05]QByteArray & replace ( const char * before, const QByteArray & after )
//[06]QByteArray & replace ( const char * before, int bsize, const char * after, int asize )
//[07]QByteArray & replace ( const QByteArray & before, const char * after )
//[08]QByteArray & replace ( const QString & before, const QByteArray & after )
//[09]QByteArray & replace ( const QString & before, const char * after )
//[10]QByteArray & replace ( const char * before, const char * after )
//[11]QByteArray & replace ( char before, const QByteArray & after )
//[12]QByteArray & replace ( char before, const QString & after )
//[13]QByteArray & replace ( char before, const char * after )
//[14]QByteArray & replace ( char before, char after )

HB_FUNC_STATIC( QBYTEARRAY_REPLACE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQBYTEARRAY(3) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE3 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE4 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE5 );
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE6 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE7 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE8 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE9 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE10 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE11 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE12 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE13 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_REPLACE14 );
  }
}

/*
void reserve ( int size )
*/
HB_FUNC_STATIC( QBYTEARRAY_RESERVE )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reserve ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resize ( int size )
*/
HB_FUNC_STATIC( QBYTEARRAY_RESIZE )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray right ( int len ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_RIGHT )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->right ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray rightJustified ( int width, char fill = ' ', bool truncate = false ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_RIGHTJUSTIFIED )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par2 = ISNIL(2)? 32 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    QByteArray * ptr = new QByteArray( obj->rightJustified ( PINT(1), par2, OPBOOL(3,false) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & setNum ( int n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->setNum ( PINT(1), OPINT(2,10) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & setNum ( uint n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->setNum ( PUINT(1), OPINT(2,10) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & setNum ( short n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->setNum ( PSHORT(1), OPINT(2,10) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & setNum ( ushort n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM4 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->setNum ( PUSHORT(1), OPINT(2,10) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & setNum ( qlonglong n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM5 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->setNum ( PQLONGLONG(1), OPINT(2,10) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & setNum ( qulonglong n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM6 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->setNum ( PQULONGLONG(1), OPINT(2,10) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & setNum ( double n, char f = 'g', int prec = 6 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM7 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    QByteArray * ptr = &obj->setNum ( PDOUBLE(1), par2, OPINT(3,6) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray & setNum ( float n, char f = 'g', int prec = 6 )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETNUM8 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    QByteArray * ptr = &obj->setNum ( PFLOAT(1), par2, OPINT(3,6) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


//[1]QByteArray & setNum ( int n, int base = 10 )
//[2]QByteArray & setNum ( uint n, int base = 10 )
//[3]QByteArray & setNum ( short n, int base = 10 )
//[4]QByteArray & setNum ( ushort n, int base = 10 )
//[5]QByteArray & setNum ( qlonglong n, int base = 10 )
//[6]QByteArray & setNum ( qulonglong n, int base = 10 )
//[7]QByteArray & setNum ( double n, char f = 'g', int prec = 6 )
//[8]QByteArray & setNum ( float n, char f = 'g', int prec = 6 )

// TODO: implementar identifica��o de n�meros inteiros e fracion�rios

HB_FUNC_STATIC( QBYTEARRAY_SETNUM )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_SETNUM1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_SETNUM2 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_SETNUM3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_SETNUM4 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_SETNUM5 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_SETNUM6 );
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_SETNUM7 );
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_SETNUM8 );
  }
}

/*
QByteArray & setRawData ( const char * data, uint size )
*/
HB_FUNC_STATIC( QBYTEARRAY_SETRAWDATA )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->setRawData ( (const char *) hb_parc(1), PUINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray simplified () const
*/
HB_FUNC_STATIC( QBYTEARRAY_SIMPLIFIED )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->simplified () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
int size () const
*/
HB_FUNC_STATIC( QBYTEARRAY_SIZE )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->size () );
  }
}


/*
QList<QByteArray> split ( char sep ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_SPLIT )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    QList<QByteArray> list = obj->split ( par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void squeeze ()
*/
HB_FUNC_STATIC( QBYTEARRAY_SQUEEZE )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->squeeze ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool startsWith ( const QByteArray & ba ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_STARTSWITH1 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->startsWith ( *PQBYTEARRAY(1) ) );
  }
}


/*
bool startsWith ( const char * str ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_STARTSWITH2 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->startsWith ( (const char *) hb_parc(1) ) );
  }
}


/*
bool startsWith ( char ch ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_STARTSWITH3 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    RBOOL( obj->startsWith ( par1 ) );
  }
}


//[1]bool startsWith ( const QByteArray & ba ) const
//[2]bool startsWith ( const char * str ) const
//[3]bool startsWith ( char ch ) const

HB_FUNC_STATIC( QBYTEARRAY_STARTSWITH )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_STARTSWITH1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_STARTSWITH2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QBYTEARRAY_STARTSWITH3 );
  }
}

/*
QByteArray toBase64 () const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOBASE64 )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toBase64 () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
double toDouble ( bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TODOUBLE )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    RDOUBLE( obj->toDouble ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
float toFloat ( bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOFLOAT )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    RFLOAT( obj->toFloat ( &par1 ) );
    hb_storl( par1, 1 );
  }
}


/*
QByteArray toHex () const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOHEX )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toHex () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
int toInt ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOINT )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    RINT( obj->toInt ( &par1, OPINT(2,10) ) );
    hb_storl( par1, 1 );
  }
}


/*
long toLong ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOLONG )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    long l = obj->toLong ( &par1, OPINT(2,10) );
    hb_retnl( l );
    hb_storl( par1, 1 );
  }
}


/*
qlonglong toLongLong ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOLONGLONG )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    RQLONGLONG( obj->toLongLong ( &par1, OPINT(2,10) ) );
    hb_storl( par1, 1 );
  }
}


/*
QByteArray toLower () const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOLOWER )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toLower () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray toPercentEncoding ( const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray(), char percent = '%' ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOPERCENTENCODING )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    char par3 = ISNIL(3)? 37 : (ISCHAR(3)? (char) hb_parc(3)[0] : (ISNUM(3)? hb_parni(3) : 0));
    QByteArray * ptr = new QByteArray( obj->toPercentEncoding ( par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
short toShort ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOSHORT )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    RSHORT( obj->toShort ( &par1, OPINT(2,10) ) );
    hb_storl( par1, 1 );
  }
}


/*
uint toUInt ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOUINT )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    hb_retni( (uint) obj->toUInt ( &par1, OPINT(2,10) ) );
    hb_storl( par1, 1 );
  }
}


/*
ulong toULong ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOULONG )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    ulong l = obj->toULong ( &par1, OPINT(2,10) );
    hb_retnl( l );
    hb_storl( par1, 1 );
  }
}


/*
qulonglong toULongLong ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOULONGLONG )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    RQULONGLONG( obj->toULongLong ( &par1, OPINT(2,10) ) );
    hb_storl( par1, 1 );
  }
}


/*
ushort toUShort ( bool * ok = 0, int base = 10 ) const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOUSHORT )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    RUSHORT( obj->toUShort ( &par1, OPINT(2,10) ) );
    hb_storl( par1, 1 );
  }
}


/*
QByteArray toUpper () const
*/
HB_FUNC_STATIC( QBYTEARRAY_TOUPPER )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toUpper () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray trimmed () const
*/
HB_FUNC_STATIC( QBYTEARRAY_TRIMMED )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->trimmed () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void truncate ( int pos )
*/
HB_FUNC_STATIC( QBYTEARRAY_TRUNCATE )
{
  QByteArray * obj = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->truncate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QByteArray fromBase64 ( const QByteArray & base64 )
*/
HB_FUNC_STATIC( QBYTEARRAY_FROMBASE64 )
{
  QByteArray * ptr = new QByteArray( QByteArray::fromBase64 ( *PQBYTEARRAY(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
QByteArray fromHex ( const QByteArray & hexEncoded )
*/
HB_FUNC_STATIC( QBYTEARRAY_FROMHEX )
{
  QByteArray * ptr = new QByteArray( QByteArray::fromHex ( *PQBYTEARRAY(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
QByteArray fromPercentEncoding ( const QByteArray & input, char percent = '%' )
*/
HB_FUNC_STATIC( QBYTEARRAY_FROMPERCENTENCODING )
{
  char par2 = ISNIL(2)? 37 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
  QByteArray * ptr = new QByteArray( QByteArray::fromPercentEncoding ( *PQBYTEARRAY(1), par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
QByteArray fromRawData ( const char * data, int size )
*/
HB_FUNC_STATIC( QBYTEARRAY_FROMRAWDATA )
{
  QByteArray * ptr = new QByteArray( QByteArray::fromRawData ( (const char *) hb_parc(1), PINT(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
QByteArray number ( int n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_NUMBER1 )
{
  QByteArray * ptr = new QByteArray( QByteArray::number ( PINT(1), OPINT(2,10) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
QByteArray number ( uint n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_NUMBER2 )
{
  QByteArray * ptr = new QByteArray( QByteArray::number ( PUINT(1), OPINT(2,10) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
QByteArray number ( qlonglong n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_NUMBER3 )
{
  QByteArray * ptr = new QByteArray( QByteArray::number ( PQLONGLONG(1), OPINT(2,10) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
QByteArray number ( qulonglong n, int base = 10 )
*/
HB_FUNC_STATIC( QBYTEARRAY_NUMBER4 )
{
  QByteArray * ptr = new QByteArray( QByteArray::number ( PQULONGLONG(1), OPINT(2,10) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
QByteArray number ( double n, char f = 'g', int prec = 6 )
*/
HB_FUNC_STATIC( QBYTEARRAY_NUMBER5 )
{
  char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
  QByteArray * ptr = new QByteArray( QByteArray::number ( PDOUBLE(1), par2, OPINT(3,6) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}

$extraMethods

#pragma ENDDUMP
