$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST UCHAR
REQUEST QLOCALE
#endif

CLASS QResource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD data
   METHOD fileName
   METHOD isCompressed
   METHOD isValid
   METHOD locale
   METHOD setFileName
   METHOD setLocale
   METHOD size
   METHOD registerResource
   METHOD unregisterResource

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QResource>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QResource ( const QString & file = QString(), const QLocale & locale = QLocale() )
$constructor=|new|const QString &=QString(),const QLocale &=QLocale()

$deleteMethod

$prototype=QString absoluteFilePath () const
$method=|QString|absoluteFilePath|

$prototype=const uchar * data () const
$method=|const uchar *|data|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=bool isCompressed () const
$method=|bool|isCompressed|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QLocale locale () const
$method=|QLocale|locale|

$prototype=void setFileName ( const QString & file )
$method=|void|setFileName|const QString &

$prototype=void setLocale ( const QLocale & locale )
$method=|void|setLocale|const QLocale &

$prototype=qint64 size () const
$method=|qint64|size|

$prototype=static bool registerResource ( const QString & rccFileName, const QString & mapRoot = QString() )
$staticMethod=|bool|registerResource|const QString &,const QString &=QString()

$prototype=static bool unregisterResource ( const QString & rccFileName, const QString & mapRoot = QString() )
$staticMethod=|bool|unregisterResource|const QString &,const QString &=QString()

$extraMethods

#pragma ENDDUMP
