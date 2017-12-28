$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QHelpEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHelpEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QHelpEvent ( Type type, const QPoint & pos, const QPoint & globalPos )
HB_FUNC_STATIC( QHELPEVENT_NEW )
{
  QHelpEvent * o = new QHelpEvent ( (QEvent::Type) hb_parni(1), *PQPOINT(2), *PQPOINT(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=const QPoint & globalPos () const
HB_FUNC_STATIC( QHELPEVENT_GLOBALPOS )
{
  QHelpEvent * obj = (QHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->globalPos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}

$prototype=int globalX () const
$method=|int|globalX|

$prototype=int globalY () const
$method=|int|globalY|

$prototype=const QPoint & pos () const
HB_FUNC_STATIC( QHELPEVENT_POS )
{
  QHelpEvent * obj = (QHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->pos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}

$prototype=int x () const
$method=|int|x|

$prototype=int y () const
$method=|int|y|

#pragma ENDDUMP
