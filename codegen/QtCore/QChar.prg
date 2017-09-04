$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCHAR
#endif

CLASS QChar

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new10
   METHOD new
   METHOD delete
   METHOD category
   METHOD decompositionTag
   METHOD digitValue
   METHOD direction
   METHOD hasMirrored
   METHOD isDigit
   METHOD isHighSurrogate
   METHOD isLetter
   METHOD isLetterOrNumber
   METHOD isLowSurrogate
   METHOD isLower
   METHOD isMark
   METHOD isNull
   METHOD isNumber
   METHOD isPrint
   METHOD isPunct
   METHOD isSpace
   METHOD isSymbol
   METHOD isTitleCase
   METHOD isUpper
   METHOD joining
   METHOD mirroredChar
   METHOD toCaseFolded
   METHOD toLower
   METHOD toTitleCase
   METHOD toUpper
   METHOD unicodeVersion
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QChar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QChar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QChar ()
*/
HB_FUNC_STATIC( QCHAR_NEW1 )
{
  QChar * o = new QChar ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QChar ( char ch )
*/
HB_FUNC_STATIC( QCHAR_NEW2 )
{
  char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QChar ( uchar ch )
*/
HB_FUNC_STATIC( QCHAR_NEW3 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QChar ( QLatin1Char ch )
*/
HB_FUNC_STATIC( QCHAR_NEW4 )
{
  QLatin1Char * par1 = (QLatin1Char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QChar * o = new QChar ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QChar ( uchar cell, uchar row )
*/
HB_FUNC_STATIC( QCHAR_NEW5 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  uchar par2 = ISCHAR(2)? (uchar) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
  QChar * o = new QChar ( par1, par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QChar ( ushort code )
*/
HB_FUNC_STATIC( QCHAR_NEW6 )
{
  QChar * o = new QChar ( PUSHORT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QChar ( short code )
*/
HB_FUNC_STATIC( QCHAR_NEW7 )
{
  QChar * o = new QChar ( PSHORT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QChar ( uint code )
*/
HB_FUNC_STATIC( QCHAR_NEW8 )
{
  QChar * o = new QChar ( PUINT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QChar ( int code )
*/
HB_FUNC_STATIC( QCHAR_NEW9 )
{
  QChar * o = new QChar ( PINT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QChar ( SpecialCharacter ch )
*/
HB_FUNC_STATIC( QCHAR_NEW10 )
{
  QChar * o = new QChar ( (QChar::SpecialCharacter) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[01]QChar ()
//[02]QChar ( char ch )
//[03]QChar ( uchar ch )
//[04]QChar ( QLatin1Char ch )
//[05]QChar ( uchar cell, uchar row )
//[06]QChar ( ushort code )
//[07]QChar ( short code )
//[08]QChar ( uint code )
//[09]QChar ( int code )
//[10]QChar ( SpecialCharacter ch )

HB_FUNC_STATIC( QCHAR_NEW )
{
  HB_FUNC_EXEC( QCHAR_NEW1 );
}

HB_FUNC_STATIC( QCHAR_DELETE )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Category category () const
*/
HB_FUNC_STATIC( QCHAR_CATEGORY )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->category () );
  }
}





/*
Decomposition decompositionTag () const
*/
HB_FUNC_STATIC( QCHAR_DECOMPOSITIONTAG )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->decompositionTag () );
  }
}


/*
int digitValue () const
*/
HB_FUNC_STATIC( QCHAR_DIGITVALUE )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->digitValue () );
  }
}


/*
Direction direction () const
*/
HB_FUNC_STATIC( QCHAR_DIRECTION )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->direction () );
  }
}


/*
bool hasMirrored () const
*/
HB_FUNC_STATIC( QCHAR_HASMIRRORED )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasMirrored () );
  }
}


/*
bool isDigit () const
*/
HB_FUNC_STATIC( QCHAR_ISDIGIT )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDigit () );
  }
}


/*
bool isHighSurrogate () const
*/
HB_FUNC_STATIC( QCHAR_ISHIGHSURROGATE )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isHighSurrogate () );
  }
}


/*
bool isLetter () const
*/
HB_FUNC_STATIC( QCHAR_ISLETTER )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isLetter () );
  }
}


/*
bool isLetterOrNumber () const
*/
HB_FUNC_STATIC( QCHAR_ISLETTERORNUMBER )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isLetterOrNumber () );
  }
}


/*
bool isLowSurrogate () const
*/
HB_FUNC_STATIC( QCHAR_ISLOWSURROGATE )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isLowSurrogate () );
  }
}


/*
bool isLower () const
*/
HB_FUNC_STATIC( QCHAR_ISLOWER )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isLower () );
  }
}


/*
bool isMark () const
*/
HB_FUNC_STATIC( QCHAR_ISMARK )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isMark () );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QCHAR_ISNULL )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isNumber () const
*/
HB_FUNC_STATIC( QCHAR_ISNUMBER )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNumber () );
  }
}


/*
bool isPrint () const
*/
HB_FUNC_STATIC( QCHAR_ISPRINT )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isPrint () );
  }
}


/*
bool isPunct () const
*/
HB_FUNC_STATIC( QCHAR_ISPUNCT )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isPunct () );
  }
}


/*
bool isSpace () const
*/
HB_FUNC_STATIC( QCHAR_ISSPACE )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSpace () );
  }
}


/*
bool isSymbol () const
*/
HB_FUNC_STATIC( QCHAR_ISSYMBOL )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSymbol () );
  }
}


/*
bool isTitleCase () const
*/
HB_FUNC_STATIC( QCHAR_ISTITLECASE )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isTitleCase () );
  }
}


/*
bool isUpper () const
*/
HB_FUNC_STATIC( QCHAR_ISUPPER )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isUpper () );
  }
}


/*
Joining joining () const
*/
HB_FUNC_STATIC( QCHAR_JOINING )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->joining () );
  }
}


/*
QChar mirroredChar () const
*/
HB_FUNC_STATIC( QCHAR_MIRROREDCHAR )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->mirroredChar () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}




/*
QChar toCaseFolded () const
*/
HB_FUNC_STATIC( QCHAR_TOCASEFOLDED )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->toCaseFolded () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}



/*
QChar toLower () const
*/
HB_FUNC_STATIC( QCHAR_TOLOWER )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->toLower () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
QChar toTitleCase () const
*/
HB_FUNC_STATIC( QCHAR_TOTITLECASE )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->toTitleCase () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
QChar toUpper () const
*/
HB_FUNC_STATIC( QCHAR_TOUPPER )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->toUpper () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}




/*
UnicodeVersion unicodeVersion () const
*/
HB_FUNC_STATIC( QCHAR_UNICODEVERSION )
{
  QChar * obj = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->unicodeVersion () );
  }
}

// TODO: implementar met�dos est�ticos

$extraMethods

#pragma ENDDUMP
