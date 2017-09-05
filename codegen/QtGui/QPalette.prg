$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
REQUEST QPALETTE
#endif

CLASS QPalette

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
   METHOD alternateBase
   METHOD base
   METHOD brightText
   METHOD brush1
   METHOD brush2
   METHOD brush
   METHOD button
   METHOD buttonText
   METHOD cacheKey
   METHOD color1
   METHOD color2
   METHOD color
   METHOD currentColorGroup
   METHOD dark
   METHOD highlight
   METHOD highlightedText
   METHOD isBrushSet
   METHOD isCopyOf
   METHOD isEqual
   METHOD light
   METHOD link
   METHOD linkVisited
   METHOD mid
   METHOD midlight
   METHOD resolve
   METHOD setBrush1
   METHOD setBrush2
   METHOD setBrush
   METHOD setColor1
   METHOD setColor2
   METHOD setColor
   METHOD setColorGroup
   METHOD setCurrentColorGroup
   METHOD shadow
   METHOD text
   METHOD toolTipBase
   METHOD toolTipText
   METHOD window
   METHOD windowText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPalette>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPalette ()
*/
HB_FUNC_STATIC( QPALETTE_NEW1 )
{
  QPalette * o = new QPalette ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPalette ( const QColor & button )
*/
HB_FUNC_STATIC( QPALETTE_NEW2 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
  QPalette * o = new QPalette ( par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPalette ( Qt::GlobalColor button )
*/
HB_FUNC_STATIC( QPALETTE_NEW3 )
{
  QPalette * o = new QPalette ( (Qt::GlobalColor) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPalette ( const QColor & button, const QColor & window )
*/
HB_FUNC_STATIC( QPALETTE_NEW4 )
{
  QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
  QColor par2 = ISOBJECT(2)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(2));
  QPalette * o = new QPalette ( par1, par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPalette ( const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
*/
HB_FUNC_STATIC( QPALETTE_NEW5 )
{
  QPalette * o = new QPalette ( *PQBRUSH(1), *PQBRUSH(2), *PQBRUSH(3), *PQBRUSH(4), *PQBRUSH(5), *PQBRUSH(6), *PQBRUSH(7), *PQBRUSH(8), *PQBRUSH(9) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPalette ( const QPalette & p )
*/
HB_FUNC_STATIC( QPALETTE_NEW6 )
{
  QPalette * o = new QPalette ( *PQPALETTE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QPalette ()
//[2]QPalette ( const QColor & button )
//[3]QPalette ( Qt::GlobalColor button )
//[4]QPalette ( const QColor & button, const QColor & window )
//[5]QPalette ( const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
//[6]QPalette ( const QPalette & p )

HB_FUNC_STATIC( QPALETTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPALETTE_NEW1 );
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    HB_FUNC_EXEC( QPALETTE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPALETTE_NEW3 );
  }
  else if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QPALETTE_NEW4 );
  }
  else if( ISNUMPAR(9) && ISQBRUSH(1) && ISQBRUSH(2) && ISQBRUSH(3) && ISQBRUSH(4) && ISQBRUSH(5) && ISQBRUSH(6) && ISQBRUSH(7) && ISQBRUSH(8) && ISQBRUSH(9) )
  {
    HB_FUNC_EXEC( QPALETTE_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QBrush & alternateBase () const
*/
HB_FUNC_STATIC( QPALETTE_ALTERNATEBASE )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->alternateBase ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & base () const
*/
HB_FUNC_STATIC( QPALETTE_BASE )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->base ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & brightText () const
*/
HB_FUNC_STATIC( QPALETTE_BRIGHTTEXT )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->brightText ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & brush ( ColorGroup group, ColorRole role ) const
*/
HB_FUNC_STATIC( QPALETTE_BRUSH1 )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    const QBrush * ptr = &obj->brush ( (QPalette::ColorGroup) par1, (QPalette::ColorRole) par2 );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & brush ( ColorRole role ) const
*/
HB_FUNC_STATIC( QPALETTE_BRUSH2 )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QBrush * ptr = &obj->brush ( (QPalette::ColorRole) par1 );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

//[1]const QBrush & brush ( ColorGroup group, ColorRole role ) const
//[2]const QBrush & brush ( ColorRole role ) const

HB_FUNC_STATIC( QPALETTE_BRUSH )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPALETTE_BRUSH1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPALETTE_BRUSH2 );
  }
}

/*
const QBrush & button () const
*/
HB_FUNC_STATIC( QPALETTE_BUTTON )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->button ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & buttonText () const
*/
HB_FUNC_STATIC( QPALETTE_BUTTONTEXT )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->buttonText ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
qint64 cacheKey () const
*/
HB_FUNC_STATIC( QPALETTE_CACHEKEY )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->cacheKey () );
  }
}

/*
const QColor & color ( ColorGroup group, ColorRole role ) const
*/
HB_FUNC_STATIC( QPALETTE_COLOR1 )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    const QColor * ptr = &obj->color ( (QPalette::ColorGroup) par1, (QPalette::ColorRole) par2 );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR" );
  }
}

/*
const QColor & color ( ColorRole role ) const
*/
HB_FUNC_STATIC( QPALETTE_COLOR2 )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const QColor * ptr = &obj->color ( (QPalette::ColorRole) par1 );
    _qt4xhb_createReturnClass ( ptr, "QCOLOR" );
  }
}

//[1]const QColor & color ( ColorGroup group, ColorRole role ) const
//[2]const QColor & color ( ColorRole role ) const

HB_FUNC_STATIC( QPALETTE_COLOR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPALETTE_COLOR1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPALETTE_COLOR2 );
  }
}

/*
ColorGroup currentColorGroup () const
*/
HB_FUNC_STATIC( QPALETTE_CURRENTCOLORGROUP )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->currentColorGroup () );
  }
}

/*
const QBrush & dark () const
*/
HB_FUNC_STATIC( QPALETTE_DARK )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->dark ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & highlight () const
*/
HB_FUNC_STATIC( QPALETTE_HIGHLIGHT )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->highlight ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & highlightedText () const
*/
HB_FUNC_STATIC( QPALETTE_HIGHLIGHTEDTEXT )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->highlightedText ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
bool isBrushSet ( ColorGroup cg, ColorRole cr ) const
*/
HB_FUNC_STATIC( QPALETTE_ISBRUSHSET )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    RBOOL( obj->isBrushSet ( (QPalette::ColorGroup) par1, (QPalette::ColorRole) par2 ) );
  }
}

/*
bool isCopyOf ( const QPalette & p ) const
*/
HB_FUNC_STATIC( QPALETTE_ISCOPYOF )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isCopyOf ( *PQPALETTE(1) ) );
  }
}

/*
bool isEqual ( ColorGroup cg1, ColorGroup cg2 ) const
*/
HB_FUNC_STATIC( QPALETTE_ISEQUAL )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    RBOOL( obj->isEqual ( (QPalette::ColorGroup) par1, (QPalette::ColorGroup) par2 ) );
  }
}

/*
const QBrush & light () const
*/
HB_FUNC_STATIC( QPALETTE_LIGHT )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->light ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & link () const
*/
HB_FUNC_STATIC( QPALETTE_LINK )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->link ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & linkVisited () const
*/
HB_FUNC_STATIC( QPALETTE_LINKVISITED )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->linkVisited ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & mid () const
*/
HB_FUNC_STATIC( QPALETTE_MID )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->mid ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & midlight () const
*/
HB_FUNC_STATIC( QPALETTE_MIDLIGHT )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->midlight ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
QPalette resolve ( const QPalette & other ) const
*/
HB_FUNC_STATIC( QPALETTE_RESOLVE )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->resolve ( *PQPALETTE(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}

/*
void setBrush ( ColorRole role, const QBrush & brush )
*/
HB_FUNC_STATIC( QPALETTE_SETBRUSH1 )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBrush ( (QPalette::ColorRole) par1, *PQBRUSH(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBrush ( ColorGroup group, ColorRole role, const QBrush & brush )
*/
HB_FUNC_STATIC( QPALETTE_SETBRUSH2 )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setBrush ( (QPalette::ColorGroup) par1, (QPalette::ColorRole) par2, *PQBRUSH(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setBrush ( ColorRole role, const QBrush & brush )
//[2]void setBrush ( ColorGroup group, ColorRole role, const QBrush & brush )

HB_FUNC_STATIC( QPALETTE_SETBRUSH )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQBRUSH(2) )
  {
    HB_FUNC_EXEC( QPALETTE_SETBRUSH1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQBRUSH(3) )
  {
    HB_FUNC_EXEC( QPALETTE_SETBRUSH2 );
  }
}

/*
void setColor ( ColorGroup group, ColorRole role, const QColor & color )
*/
HB_FUNC_STATIC( QPALETTE_SETCOLOR1 )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QColor par3 = ISOBJECT(3)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(3));
    obj->setColor ( (QPalette::ColorGroup) par1, (QPalette::ColorRole) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColor ( ColorRole role, const QColor & color )
*/
HB_FUNC_STATIC( QPALETTE_SETCOLOR2 )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QColor par2 = ISOBJECT(2)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(2));
    obj->setColor ( (QPalette::ColorRole) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setColor ( ColorGroup group, ColorRole role, const QColor & color )
//[2]void setColor ( ColorRole role, const QColor & color )

HB_FUNC_STATIC( QPALETTE_SETCOLOR )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && (ISQCOLOR(3)||ISCHAR(3)) )
  {
    HB_FUNC_EXEC( QPALETTE_SETCOLOR1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && (ISQCOLOR(2)||ISCHAR(3)) )
  {
    HB_FUNC_EXEC( QPALETTE_SETCOLOR2 );
  }
}

/*
void setColorGroup ( ColorGroup cg, const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
*/
HB_FUNC_STATIC( QPALETTE_SETCOLORGROUP )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setColorGroup ( (QPalette::ColorGroup) par1, *PQBRUSH(2), *PQBRUSH(3), *PQBRUSH(4), *PQBRUSH(5), *PQBRUSH(6), *PQBRUSH(7), *PQBRUSH(8), *PQBRUSH(9), *PQBRUSH(10) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentColorGroup ( ColorGroup cg )
*/
HB_FUNC_STATIC( QPALETTE_SETCURRENTCOLORGROUP )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCurrentColorGroup ( (QPalette::ColorGroup) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QBrush & shadow () const
*/
HB_FUNC_STATIC( QPALETTE_SHADOW )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->shadow ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & text () const
*/
HB_FUNC_STATIC( QPALETTE_TEXT )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->text ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & toolTipBase () const
*/
HB_FUNC_STATIC( QPALETTE_TOOLTIPBASE )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->toolTipBase ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & toolTipText () const
*/
HB_FUNC_STATIC( QPALETTE_TOOLTIPTEXT )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->toolTipText ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & window () const
*/
HB_FUNC_STATIC( QPALETTE_WINDOW )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->window ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & windowText () const
*/
HB_FUNC_STATIC( QPALETTE_WINDOWTEXT )
{
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBrush * ptr = &obj->windowText ();
    _qt4xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

$extraMethods

#pragma ENDDUMP
