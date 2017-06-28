/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QKeySequence

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD count
   METHOD isEmpty
   METHOD matches
   METHOD toString
   METHOD fromString
   METHOD keyBindings
   METHOD mnemonic

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QKeySequence
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QKeySequence>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QList>

/*
QKeySequence ()
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW1 )
{
  QKeySequence * o = new QKeySequence ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QKeySequence ( const QString & key )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW2 )
{
  QKeySequence * o = new QKeySequence ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QKeySequence ( const QString & key, SequenceFormat format )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW3 )
{
  QKeySequence * o = new QKeySequence ( PQSTRING(1), (QKeySequence::SequenceFormat) hb_parni(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QKeySequence ( int k1, int k2 = 0, int k3 = 0, int k4 = 0 )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW4 )
{
  QKeySequence * o = new QKeySequence ( PINT(1), OPINT(2,0), OPINT(3,0), OPINT(4,0) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QKeySequence ( const QKeySequence & keysequence )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW5 )
{
  QKeySequence * o = new QKeySequence ( *PQKEYSEQUENCE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QKeySequence ( StandardKey key )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_NEW6 )
{
  QKeySequence * o = new QKeySequence ( (QKeySequence::StandardKey) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QKeySequence ()
//[2]QKeySequence ( const QString & key )
//[3]QKeySequence ( const QString & key, SequenceFormat format )
//[4]QKeySequence ( int k1, int k2 = 0, int k3 = 0, int k4 = 0 )
//[5]QKeySequence ( const QKeySequence & keysequence )
//[6]QKeySequence ( StandardKey key )

/*
  Para resolver o conflito entre [4] e [6], [6] � analisado em
  primeiro lugar, seguido por [4]. Desta forma, se for 1 par�metro
  num�rico, ser� considerado [6]. Se forem de 2 a 4 par�metros
  num�ricos, ser� considerado [4].
*/

HB_FUNC_STATIC( QKEYSEQUENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCE_NEW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCE_NEW6 );
  }
  else if( ISBETWEEN(1,4) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQKEYSEQUENCE(1) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCE_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QKEYSEQUENCE_DELETE )
{
  QKeySequence * obj = (QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
uint count () const
*/
HB_FUNC_STATIC( QKEYSEQUENCE_COUNT )
{
  QKeySequence * obj = (QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->count () );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QKEYSEQUENCE_ISEMPTY )
{
  QKeySequence * obj = (QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
SequenceMatch matches ( const QKeySequence & seq ) const
*/
HB_FUNC_STATIC( QKEYSEQUENCE_MATCHES )
{
  QKeySequence * obj = (QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->matches ( *PQKEYSEQUENCE(1) ) );
  }
}

/*
QString toString ( SequenceFormat format = PortableText ) const
*/
HB_FUNC_STATIC( QKEYSEQUENCE_TOSTRING )
{
  QKeySequence * obj = (QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QKeySequence::PortableText : hb_parni(1);
    RQSTRING( obj->toString ( (QKeySequence::SequenceFormat) par1 ) );
  }
}

/*
QKeySequence fromString ( const QString & str, SequenceFormat format = PortableText )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_FROMSTRING )
{
  int par2 = ISNIL(2)? (int) QKeySequence::PortableText : hb_parni(2);
  QKeySequence * ptr = new QKeySequence( QKeySequence::fromString ( PQSTRING(1), (QKeySequence::SequenceFormat) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
}

/*
QList<QKeySequence> keyBindings ( StandardKey key )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_KEYBINDINGS )
{
  int par1 = hb_parni(1);
  QList<QKeySequence> list = QKeySequence::keyBindings ( (QKeySequence::StandardKey) par1 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QKEYSEQUENCE" );
  #else
  pDynSym = hb_dynsymFindName( "QKEYSEQUENCE" );
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
      hb_itemPutPtr( pItem, (QKeySequence *) new QKeySequence ( list[i] ) );
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

/*
QKeySequence mnemonic ( const QString & text )
*/
HB_FUNC_STATIC( QKEYSEQUENCE_MNEMONIC )
{
  QKeySequence * ptr = new QKeySequence( QKeySequence::mnemonic ( PQSTRING(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
}

HB_FUNC_STATIC( QKEYSEQUENCE_NEWFROM )
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

HB_FUNC_STATIC( QKEYSEQUENCE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QKEYSEQUENCE_NEWFROM );
}

HB_FUNC_STATIC( QKEYSEQUENCE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QKEYSEQUENCE_NEWFROM );
}

HB_FUNC_STATIC( QKEYSEQUENCE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QKEYSEQUENCE_SETSELFDESTRUCTION )
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
