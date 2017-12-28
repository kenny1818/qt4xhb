$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QTextBrowser INHERIT QTextEdit

   METHOD new
   METHOD backwardHistoryCount
   METHOD clearHistory
   METHOD forwardHistoryCount
   METHOD historyTitle
   METHOD historyUrl
   METHOD isBackwardAvailable
   METHOD isForwardAvailable
   METHOD openExternalLinks
   METHOD openLinks
   METHOD searchPaths
   METHOD setOpenExternalLinks
   METHOD setOpenLinks
   METHOD setSearchPaths
   METHOD source
   METHOD loadResource
   METHOD backward
   METHOD forward
   METHOD home
   METHOD reload
   METHOD setSource

   METHOD onAnchorClicked
   METHOD onBackwardAvailable
   METHOD onForwardAvailable
   METHOD onHighlighted1
   METHOD onHighlighted2
   METHOD onHistoryChanged
   METHOD onSourceChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextBrowser>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTextBrowser ( QWidget * parent = 0 )
HB_FUNC_STATIC( QTEXTBROWSER_NEW )
{
  QTextBrowser * o = new QTextBrowser ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$prototype=int backwardHistoryCount () const
$method=|int|backwardHistoryCount|

$prototype=void clearHistory ()
$method=|void|clearHistory|

$prototype=int forwardHistoryCount () const
$method=|int|forwardHistoryCount|

$prototype=QString historyTitle ( int i ) const
$method=|QString|historyTitle|int

$prototype=QUrl historyUrl ( int i ) const
$method=|QUrl|historyUrl|int

$prototype=bool isBackwardAvailable () const
$method=|bool|isBackwardAvailable|

$prototype=bool isForwardAvailable () const
$method=|bool|isForwardAvailable|

$prototype=bool openExternalLinks () const
$method=|bool|openExternalLinks|

$prototype=bool openLinks () const
$method=|bool|openLinks|

$prototype=QStringList searchPaths () const
$method=|QStringList|searchPaths|

$prototype=void setOpenExternalLinks ( bool open )
$method=|void|setOpenExternalLinks|bool

$prototype=void setOpenLinks ( bool open )
$method=|void|setOpenLinks|bool

$prototype=void setSearchPaths ( const QStringList & paths )
$method=|void|setSearchPaths|const QStringList &

$prototype=QUrl source () const
$method=|QUrl|source|

$prototype=virtual QVariant loadResource ( int type, const QUrl & name )
$virtualMethod=|QVariant|loadResource|int,const QUrl &

$prototype=virtual void backward ()
$virtualMethod=|void|backward|

$prototype=virtual void forward ()
$virtualMethod=|void|forward|

$prototype=virtual void home ()
$virtualMethod=|void|home|

$prototype=virtual void reload ()
$virtualMethod=|void|reload|

$prototype=virtual void setSource ( const QUrl & name )
$virtualMethod=|void|setSource|const QUrl &

#pragma ENDDUMP
