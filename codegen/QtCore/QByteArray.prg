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
$constructor=|new1|

/*
QByteArray ( const char * str )
*/
$constructor=|new2|const char *

/*
QByteArray ( const char * data, int size )
*/
$constructor=|new3|const char *,int

/*
QByteArray ( int size, char ch )
*/
$constructor=|new4|int,char

/*
QByteArray ( const QByteArray & other )
*/
$constructor=|new5|const QByteArray &

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
$method=|QByteArray &|append,append1|const QByteArray &

/*
QByteArray & append ( const QString & str )
*/
$method=|QByteArray &|append,append2|const QString &

/*
QByteArray & append ( const char * str )
*/
$method=|QByteArray &|append,append3|const char *

/*
QByteArray & append ( const char * str, int len )
*/
$method=|QByteArray &|append,append4|const char *,int

/*
QByteArray & append ( char ch )
*/
$method=|QByteArray &|append,append5|char

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
char at ( int i ) const
*/
$method=|char|at|int

/*
int capacity () const
*/
$method=|int|capacity|

/*
void chop ( int n )
*/
$method=|void|chop|int

/*
void clear ()
*/
$method=|void|clear|

/*
const char * constData () const
*/
$method=|const char *|constData|

/*
bool contains ( const QByteArray & ba ) const
*/
$method=|bool|contains,contains1|const QByteArray &

/*
bool contains ( const char * str ) const
*/
$method=|bool|contains,contains2|const char *

/*
bool contains ( char ch ) const
*/
$method=|bool|contains,contains3|char

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int count ( const QByteArray & ba ) const
*/
$method=|int|count,count1|const QByteArray &

/*
int count ( const char * str ) const
*/
$method=|int|count,count2|const char *

/*
int count ( char ch ) const
*/
$method=|int|count,count3|char

/*
int count () const
*/
$method=|int|count,count4|

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
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
$method=|bool|endsWith,endsWith1|const QByteArray &

/*
bool endsWith ( const char * str ) const
*/
$method=|bool|endsWith,endsWith2|const char *

/*
bool endsWith ( char ch ) const
*/
$method=|bool|endsWith,endsWith3|char

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray & fill ( char ch, int size = -1 )
*/
$method=|QByteArray &|fill,fill1|char,int=-1

/*
int indexOf ( const QByteArray & ba, int from = 0 ) const
*/
$method=|int|indexOf,indexOf1|const QByteArray &,int=0

/*
int indexOf ( const QString & str, int from = 0 ) const
*/
$method=|int|indexOf,indexOf2|const QString &,int=0

/*
int indexOf ( const char * str, int from = 0 ) const
*/
$method=|int|indexOf,indexOf3|const char *,int=0

/*
int indexOf ( char ch, int from = 0 ) const
*/
$method=|int|indexOf,indexOf4|char,int=0

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray & insert ( int i, const QByteArray & ba )
*/
$method=|QByteArray &|insert,insert1|int,const QByteArray &

/*
QByteArray & insert ( int i, const QString & str )
*/
$method=|QByteArray &|insert,insert2|int,const QString &

/*
QByteArray & insert ( int i, const char * str )
*/
$method=|QByteArray &|insert,insert3|int,const char *

/*
QByteArray & insert ( int i, const char * str, int len )
*/
$method=|QByteArray &|insert,insert4|int,const char *,int

/*
QByteArray & insert ( int i, char ch )
*/
$method=|QByteArray &|insert,insert5|int,char

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
int lastIndexOf ( const QByteArray & ba, int from = -1 ) const
*/
$method=|int|lastIndexOf,lastIndexOf1|const QByteArray &,int=-1

/*
int lastIndexOf ( const QString & str, int from = -1 ) const
*/
$method=|int|lastIndexOf,lastIndexOf2|const QString &,int=-1

/*
int lastIndexOf ( const char * str, int from = -1 ) const
*/
$method=|int|lastIndexOf,lastIndexOf3|const char *,int=-1

/*
int lastIndexOf ( char ch, int from = -1 ) const
*/
$method=|int|lastIndexOf,lastIndexOf4|char,int=-1

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray left ( int len ) const
*/
$method=|QByteArray|left|int

/*
QByteArray leftJustified ( int width, char fill = ' ', bool truncate = false ) const
*/
$method=|QByteArray|leftJustified|int,char=' ',bool=false

/*
int length () const
*/
$method=|int|length|

/*
QByteArray mid ( int pos, int len = -1 ) const
*/
$method=|QByteArray|mid|int,int=-1

/*
QByteArray & prepend ( const QByteArray & ba )
*/
$method=|QByteArray &|prepend,prepend1|const QByteArray &

/*
QByteArray & prepend ( const char * str )
*/
$method=|QByteArray &|prepend,prepend2|const char *

/*
QByteArray & prepend ( const char * str, int len )
*/
$method=|QByteArray &|prepend,prepend3|const char *,int

/*
QByteArray & prepend ( char ch )
*/
$method=|QByteArray &|prepend,prepend4|char

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void push_back ( const QByteArray & other )
*/
$method=|void|push_back,push_back1|const QByteArray &

/*
void push_back ( const char * str )
*/
$method=|void|push_back,push_back2|const char *

/*
void push_back ( char ch )
*/
$method=|void|push_back,push_back3|char

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void push_front ( const QByteArray & other )
*/
$method=|void|push_front,push_front1|const QByteArray &

/*
void push_front ( const char * str )
*/
$method=|void|push_front,push_front2|const char *

/*
void push_front ( char ch )
*/
$method=|void|push_front,push_front3|char

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray & remove ( int pos, int len )
*/
$method=|QByteArray &|remove|int,int

/*
QByteArray repeated ( int times ) const
*/
$method=|QByteArray|repeated|int

/*
QByteArray & replace ( int pos, int len, const QByteArray & after )
*/
$method=|QByteArray &|replace,replace1|int,int,const QByteArray &

/*
QByteArray & replace ( int pos, int len, const char * after )
*/
$method=|QByteArray &|replace,replace2|int,int,const char *

/*
QByteArray & replace ( int pos, int len, const char * after, int alen )
*/
$method=|QByteArray &|replace,replace3|int,int,const char *,int

/*
QByteArray & replace ( const QByteArray & before, const QByteArray & after )
*/
$method=|QByteArray &|replace,replace4|const QByteArray &,const QByteArray &

/*
QByteArray & replace ( const char * before, const QByteArray & after )
*/
$method=|QByteArray &|replace,replace5|const char *,const QByteArray &

/*
QByteArray & replace ( const char * before, int bsize, const char * after, int asize )
*/
$method=|QByteArray &|replace,replace6|const char *,int,const char *,int

/*
QByteArray & replace ( const QByteArray & before, const char * after )
*/
$method=|QByteArray &|replace,replace7|const QByteArray &,const char *

/*
QByteArray & replace ( const QString & before, const QByteArray & after )
*/
$method=|QByteArray &|replace,replace8|const QString &,const QByteArray &

/*
QByteArray & replace ( const QString & before, const char * after )
*/
$method=|QByteArray &|replace,replace9|const QString &,const char *

/*
QByteArray & replace ( const char * before, const char * after )
*/
$method=|QByteArray &|replace,replace10|const char *,const char *

/*
QByteArray & replace ( char before, const QByteArray & after )
*/
$method=|QByteArray &|replace,replace11|char,const QByteArray &

/*
QByteArray & replace ( char before, const QString & after )
*/
$method=|QByteArray &|replace,replace12|char,const QString &

/*
QByteArray & replace ( char before, const char * after )
*/
$method=|QByteArray &|replace,replace13|char,const char *

/*
QByteArray & replace ( char before, char after )
*/
$method=|QByteArray &|replace,replace14|char,char

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void reserve ( int size )
*/
$method=|void|reserve|int

/*
void resize ( int size )
*/
$method=|void|resize|int

/*
QByteArray right ( int len ) const
*/
$method=|QByteArray|right|int

/*
QByteArray rightJustified ( int width, char fill = ' ', bool truncate = false ) const
*/
$method=|QByteArray|rightJustified|int,char=' ',bool=false

/*
QByteArray & setNum ( int n, int base = 10 )
*/
$method=|QByteArray &|setNum,setNum1|int,int=10

/*
QByteArray & setNum ( uint n, int base = 10 )
*/
$method=|QByteArray &|setNum,setNum2|uint,int=10

/*
QByteArray & setNum ( short n, int base = 10 )
*/
$method=|QByteArray &|setNum,setNum3|short,int=10

/*
QByteArray & setNum ( ushort n, int base = 10 )
*/
$method=|QByteArray &|setNum,setNum4|ushort,int=10

/*
QByteArray & setNum ( qlonglong n, int base = 10 )
*/
$method=|QByteArray &|setNum,setNum5|qlonglong,int=10

/*
QByteArray & setNum ( qulonglong n, int base = 10 )
*/
$method=|QByteArray &|setNum,setNum6|qulonglong,int=10

/*
QByteArray & setNum ( double n, char f = 'g', int prec = 6 )
*/
$method=|QByteArray &|setNum,setNum7|double,char='g',int=6

/*
QByteArray & setNum ( float n, char f = 'g', int prec = 6 )
*/
$method=|QByteArray &|setNum,setNum8|float,char='g',int=6

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray & setRawData ( const char * data, uint size )
*/
$method=|QByteArray &|setRawData|const char *,uint

/*
QByteArray simplified () const
*/
$method=|QByteArray|simplified|

/*
int size () const
*/
$method=|int|size|

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
$method=|void|squeeze|

/*
bool startsWith ( const QByteArray & ba ) const
*/
$method=|bool|startsWithm,startsWith1|const QByteArray &

/*
bool startsWith ( const char * str ) const
*/
$method=|bool|startsWith,startsWith2|const char *

/*
bool startsWith ( char ch ) const
*/
$method=|bool|startsWith,startsWith3|char

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray toBase64 () const
*/
$method=|QByteArray|toBase64|

/*
double toDouble ( bool * ok = 0 ) const
*/
$method=|double|toDouble|bool *=0

/*
float toFloat ( bool * ok = 0 ) const
*/
$method=|float|toFloat|bool *=0

/*
QByteArray toHex () const
*/
$method=|QByteArray|toHex|

/*
int toInt ( bool * ok = 0, int base = 10 ) const
*/
$method=|int|toInt|bool *=0,int=10

/*
long toLong ( bool * ok = 0, int base = 10 ) const
*/
$method=|long|toLong|bool *=0,int=10

/*
qlonglong toLongLong ( bool * ok = 0, int base = 10 ) const
*/
$method=|qlonglong|toLongLong|bool *=0,int=10

/*
QByteArray toLower () const
*/
$method=|QByteArray|toLower|

/*
QByteArray toPercentEncoding ( const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray(), char percent = '%' ) const
*/
$method=|QByteArray|toPercentEncoding|const QByteArray &=QByteArray(),const QByteArray &=QByteArray(),char='%'

/*
short toShort ( bool * ok = 0, int base = 10 ) const
*/
$method=|short|toShort|bool *=0,int=10

/*
uint toUInt ( bool * ok = 0, int base = 10 ) const
*/
$method=|uint|toUInt|bool *=0,int=10

/*
ulong toULong ( bool * ok = 0, int base = 10 ) const
*/
$method=|ulong|toULong|bool *=0,int=10

/*
qulonglong toULongLong ( bool * ok = 0, int base = 10 ) const
*/
$method=|qulonglong|toULongLong|bool *=0,int=10

/*
ushort toUShort ( bool * ok = 0, int base = 10 ) const
*/
$method=|ushort|toUShort|bool *=0,int=10

/*
QByteArray toUpper () const
*/
$method=|QByteArray|toUpper|

/*
QByteArray trimmed () const
*/
$method=|QByteArray|trimmed|

/*
void truncate ( int pos )
*/
$method=|void|truncate|int

/*
static QByteArray fromBase64 ( const QByteArray & base64 )
*/
$staticMethod=|QByteArray|fromBase64|const QByteArray &

/*
static QByteArray fromHex ( const QByteArray & hexEncoded )
*/
$staticMethod=|QByteArray|fromHex|const QByteArray &

/*
static QByteArray fromPercentEncoding ( const QByteArray & input, char percent = '%' )
*/
$staticMethod=|QByteArray|fromPercentEncoding|const QByteArray &,char='%'

/*
static QByteArray fromRawData ( const char * data, int size )
*/
$staticMethod=|QByteArray|fromRawData|const char *,int

/*
static QByteArray number ( int n, int base = 10 )
*/
$staticMethod=|QByteArray|number,number1|int,int=10

/*
static QByteArray number ( uint n, int base = 10 )
*/
$staticMethod=|QByteArray|number,number2|uint,int=10

/*
static QByteArray number ( qlonglong n, int base = 10 )
*/
$staticMethod=|QByteArray|number.number3|qlonglong,int=10

/*
static QByteArray number ( qulonglong n, int base = 10 )
*/
$staticMethod=|QByteArray|number,number4|qulonglong,int=10

/*
static QByteArray number ( double n, char f = 'g', int prec = 6 )
*/
$staticMethod=|QByteArray|number,number5|double,char='g',int=6

$extraMethods

#pragma ENDDUMP
