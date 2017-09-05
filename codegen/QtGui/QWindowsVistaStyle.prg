$header

#include "hbclass.ch"

CLASS QWindowsVistaStyle INHERIT QWindowsXPStyle

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWindowsVistaStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWindowsVistaStyle ()
*/
HB_FUNC_STATIC( QWINDOWSVISTASTYLE_NEW )
{
  QWindowsVistaStyle * o = new QWindowsVistaStyle ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

#pragma ENDDUMP
