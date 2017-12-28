$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QDialog INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD isSizeGripEnabled
   METHOD result
   METHOD setModal
   METHOD setResult
   METHOD setSizeGripEnabled
   METHOD minimumSizeHint
   METHOD setVisible
   METHOD sizeHint
   METHOD accept
   METHOD done
   METHOD exec
   METHOD open
   METHOD reject

   METHOD onAccepted
   METHOD onFinished
   METHOD onRejected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=bool isSizeGripEnabled () const
$method=|bool|isSizeGripEnabled|

$prototype=int result () const
$method=|int|result|

$prototype=void setModal ( bool modal )
$method=|void|setModal|bool

$prototype=void setResult ( int i )
$method=|void|setResult|int

$prototype=void setSizeGripEnabled ( bool )
$method=|void|setSizeGripEnabled|bool

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=virtual void accept ()
$virtualMethod=|void|accept|

$prototype=virtual void done ( int r )
$virtualMethod=|void|done|int

$prototype=int exec ()
$method=|int|exec|

$prototype=void open ()
$method=|void|open|

$prototype=virtual void reject ()
$virtualMethod=|void|reject|

#pragma ENDDUMP
