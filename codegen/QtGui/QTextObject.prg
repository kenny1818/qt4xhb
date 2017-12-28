$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENT
REQUEST QTEXTFORMAT
#endif

CLASS QTextObject INHERIT QObject

   METHOD document
   METHOD format
   METHOD formatIndex
   METHOD objectIndex

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTextDocument * document () const
$method=|QTextDocument *|document|

$prototype=QTextFormat format () const
$method=|QTextFormat|format|

$prototype=int formatIndex () const
$method=|int|formatIndex|

$prototype=int objectIndex () const
$method=|int|objectIndex|

#pragma ENDDUMP
