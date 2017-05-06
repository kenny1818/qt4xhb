/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QFontInfo

   DATA pointer
   DATA class_id INIT Class_Id_QFontInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bold
   METHOD exactMatch
   METHOD family
   METHOD fixedPitch
   METHOD italic
   METHOD pixelSize
   METHOD pointSize
   METHOD pointSizeF
   METHOD rawMode
   METHOD style
   METHOD styleHint
   METHOD styleName
   METHOD weight
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFontInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFontInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QFontInfo ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTINFO_NEW1 )
{
  QFontInfo * o = NULL;
  QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFontInfo ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QFontInfo ( const QFontInfo & fi )
*/
HB_FUNC_STATIC( QFONTINFO_NEW2 )
{
  QFontInfo * o = NULL;
  QFontInfo * par1 = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFontInfo ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QFontInfo ( const QFont & font )
//[2]QFontInfo ( const QFontInfo & fi )

HB_FUNC_STATIC( QFONTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQFONTINFO(1) )
  {
    HB_FUNC_EXEC( QFONTINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFONTINFO_DELETE )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool bold () const
*/
HB_FUNC_STATIC( QFONTINFO_BOLD )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->bold (  ) );
  }
}


/*
bool exactMatch () const
*/
HB_FUNC_STATIC( QFONTINFO_EXACTMATCH )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->exactMatch (  ) );
  }
}


/*
QString family () const
*/
HB_FUNC_STATIC( QFONTINFO_FAMILY )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->family (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
bool fixedPitch () const
*/
HB_FUNC_STATIC( QFONTINFO_FIXEDPITCH )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->fixedPitch (  ) );
  }
}


/*
bool italic () const
*/
HB_FUNC_STATIC( QFONTINFO_ITALIC )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->italic (  ) );
  }
}


/*
int pixelSize () const
*/
HB_FUNC_STATIC( QFONTINFO_PIXELSIZE )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->pixelSize (  ) );
  }
}


/*
int pointSize () const
*/
HB_FUNC_STATIC( QFONTINFO_POINTSIZE )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->pointSize (  ) );
  }
}


/*
qreal pointSizeF () const
*/
HB_FUNC_STATIC( QFONTINFO_POINTSIZEF )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->pointSizeF (  );
    hb_retnd( r );
  }
}


/*
bool rawMode () const
*/
HB_FUNC_STATIC( QFONTINFO_RAWMODE )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->rawMode (  ) );
  }
}


/*
QFont::Style style () const
*/
HB_FUNC_STATIC( QFONTINFO_STYLE )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->style (  ) );
  }
}


/*
QFont::StyleHint styleHint () const
*/
HB_FUNC_STATIC( QFONTINFO_STYLEHINT )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->styleHint (  ) );
  }
}


/*
QString styleName () const
*/
HB_FUNC_STATIC( QFONTINFO_STYLENAME )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->styleName (  );
    hb_retc( RQSTRING(str1) );
  }
}


/*
int weight () const
*/
HB_FUNC_STATIC( QFONTINFO_WEIGHT )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->weight (  ) );
  }
}


HB_FUNC_STATIC( QFONTINFO_NEWFROM )
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

HB_FUNC_STATIC( QFONTINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFONTINFO_NEWFROM );
}

HB_FUNC_STATIC( QFONTINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFONTINFO_NEWFROM );
}

HB_FUNC_STATIC( QFONTINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QFONTINFO_SETSELFDESTRUCTION )
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
