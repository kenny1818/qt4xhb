/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTCHARFORMAT
REQUEST QGLYPHRUN

CLASS QTextFragment

   DATA pointer
   DATA class_id INIT Class_Id_QTextFragment
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD charFormat
   METHOD charFormatIndex
   METHOD contains
   METHOD glyphRuns
   METHOD isValid
   METHOD length
   METHOD position
   METHOD text
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTextFragment
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextFragment
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextFragment
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextFragment
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextFragment
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextFragment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextFragment>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTextFragment ()
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_NEW1 )
{
  QTextFragment * o = NULL;
  o = new QTextFragment (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTextFragment ( const QTextFragment & other )
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_NEW2 )
{
  QTextFragment * o = NULL;
  QTextFragment * par1 = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextFragment ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QTextFragment ()
//[2]QTextFragment ( const QTextFragment & other )

HB_FUNC_STATIC( QTEXTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTFRAGMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTFRAGMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTFRAGMENT_DELETE )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QTextCharFormat charFormat () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CHARFORMAT )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->charFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
int charFormatIndex () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CHARFORMATINDEX )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->charFormatIndex (  );
    hb_retni( i );
  }
}


/*
bool contains ( int position ) const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_CONTAINS )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->contains ( par1 ) );
  }
}


/*
QList<QGlyphRun> glyphRuns () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_GLYPHRUNS )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QGlyphRun> list = obj->glyphRuns (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGLYPHRUN" );
    #else
    pDynSym = hb_dynsymFindName( "QGLYPHRUN" );
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
        hb_itemPutPtr( pItem, (QGlyphRun *) new QGlyphRun ( list[i] ) );
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
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_ISVALID )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int length () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_LENGTH )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->length (  );
    hb_retni( i );
  }
}


/*
int position () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_POSITION )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->position (  );
    hb_retni( i );
  }
}


/*
QString text () const
*/
HB_FUNC_STATIC( QTEXTFRAGMENT_TEXT )
{
  QTextFragment * obj = (QTextFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->text (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}




#pragma ENDDUMP
