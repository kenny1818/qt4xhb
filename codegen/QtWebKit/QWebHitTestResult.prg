$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QWEBELEMENT
REQUEST QWEBFRAME
REQUEST QURL
REQUEST QPIXMAP
REQUEST QPOINT
#endif

CLASS QWebHitTestResult

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alternateText
   METHOD boundingRect
   METHOD element
   METHOD enclosingBlockElement
   METHOD frame
   METHOD imageUrl
   METHOD isContentEditable
   METHOD isContentSelected
   METHOD isNull
   METHOD linkElement
   METHOD linkTargetFrame
   METHOD linkText
   METHOD linkTitle
   METHOD linkUrl
   METHOD pixmap
   METHOD pos
   METHOD title

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebHitTestResult>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QWebElement>

$prototype=QWebHitTestResult ()
$internalConstructor=|new1|

$prototype=QWebHitTestResult ( const QWebHitTestResult & other )
$internalConstructor=|new2|const QWebHitTestResult &

//[1]QWebHitTestResult ()
//[2]QWebHitTestResult ( const QWebHitTestResult & other )

HB_FUNC_STATIC( QWEBHITTESTRESULT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QWebHitTestResult_new1();
  }
  else if( ISNUMPAR(1) && ISQWEBHITTESTRESULT(1) )
  {
    QWebHitTestResult_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString alternateText () const
$method=|QString|alternateText|

$prototype=QRect boundingRect () const
$method=|QRect|boundingRect|

$prototype=QWebElement element () const
$method=|QWebElement|element|

$prototype=QWebElement enclosingBlockElement () const
$method=|QWebElement|enclosingBlockElement|

$prototype=QWebFrame * frame () const
$method=|QWebFrame *|frame|

$prototype=QUrl imageUrl () const
$method=|QUrl|imageUrl|

$prototype=bool isContentEditable () const
$method=|bool|isContentEditable|

$prototype=bool isContentSelected () const
$method=|bool|isContentSelected|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QWebElement linkElement () const
$method=|QWebElement|linkElement|

$prototype=QWebFrame * linkTargetFrame () const
$method=|QWebFrame *|linkTargetFrame|

$prototype=QString linkText () const
$method=|QString|linkText|

$prototype=QUrl linkTitle () const
$method=|QUrl|linkTitle|

$prototype=QUrl linkUrl () const
$method=|QUrl|linkUrl|

$prototype=QPixmap pixmap () const
$method=|QPixmap|pixmap|

$prototype=QPoint pos () const
$method=|QPoint|pos|

$prototype=QString title () const
$method=|QString|title|

$extraMethods

#pragma ENDDUMP
