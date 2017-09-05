$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
#endif

CLASS QGraphicsOpacityEffect INHERIT QGraphicsEffect

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD opacityMask
   METHOD setOpacity
   METHOD setOpacityMask

   METHOD onOpacityChanged
   METHOD onOpacityMaskChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsOpacityEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsOpacityEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_NEW )
{
  QGraphicsOpacityEffect * o = new QGraphicsOpacityEffect ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
qreal opacity () const
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_OPACITY )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->opacity () );
  }
}

/*
QBrush opacityMask () const
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_OPACITYMASK )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->opacityMask () );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}

/*
void setOpacity ( qreal opacity )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_SETOPACITY )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOpacity ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOpacityMask ( const QBrush & mask )
*/
HB_FUNC_STATIC( QGRAPHICSOPACITYEFFECT_SETOPACITYMASK )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOpacityMask ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
