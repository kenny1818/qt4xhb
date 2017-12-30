$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMDIAREA
REQUEST QMENU
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QMdiSubWindow INHERIT QWidget

   METHOD new
   METHOD isShaded
   METHOD keyboardPageStep
   METHOD keyboardSingleStep
   METHOD mdiArea
   METHOD setKeyboardPageStep
   METHOD setKeyboardSingleStep
   METHOD setOption
   METHOD setSystemMenu
   METHOD setWidget
   METHOD systemMenu
   METHOD testOption
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD showShaded
   METHOD showSystemMenu

   METHOD onAboutToActivate
   METHOD onWindowStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMdiSubWindow>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QMdiSubWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$prototype=bool isShaded () const
$method=|bool|isShaded|

$prototype=int keyboardPageStep () const
$method=|int|keyboardPageStep|

$prototype=int keyboardSingleStep () const
$method=|int|keyboardSingleStep|

$prototype=QMdiArea * mdiArea () const
$method=|QMdiArea *|mdiArea|

$prototype=void setKeyboardPageStep ( int step )
$method=|void|setKeyboardPageStep|int

$prototype=void setKeyboardSingleStep ( int step )
$method=|void|setKeyboardSingleStep|int

$prototype=void setOption ( SubWindowOption option, bool on = true )
$method=|void|setOption|QMdiSubWindow::SubWindowOption,bool=true

$prototype=void setSystemMenu ( QMenu * systemMenu )
$method=|void|setSystemMenu|QMenu *

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=QMenu * systemMenu () const
$method=|QMenu *|systemMenu|

$prototype=bool testOption ( SubWindowOption option ) const
$method=|bool|testOption|QMdiSubWindow::SubWindowOption

$prototype=QWidget * widget () const
$method=|QWidget *|widget|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void showShaded ()
$method=|void|showShaded|

$prototype=void showSystemMenu ()
$method=|void|showSystemMenu|

#pragma ENDDUMP
