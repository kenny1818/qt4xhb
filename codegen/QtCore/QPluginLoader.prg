$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QPluginLoader INHERIT QObject

   METHOD new
   METHOD delete
   METHOD errorString
   METHOD fileName
   METHOD instance
   METHOD isLoaded
   METHOD load
   METHOD loadHints
   METHOD setFileName
   METHOD setLoadHints
   METHOD unload

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPluginLoader>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QPluginLoader ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QPluginLoader ( const QString & fileName, QObject * parent = 0 )
$internalConstructor=|new2|const QString &,QObject *=0

//[1]QPluginLoader ( QObject * parent = 0 )
//[2]QPluginLoader ( const QString & fileName, QObject * parent = 0 )

HB_FUNC_STATIC( QPLUGINLOADER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QPluginLoader_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QPluginLoader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=QObject * instance ()
$method=|QObject *|instance|

$prototype=bool isLoaded () const
$method=|bool|isLoaded|

$prototype=bool load ()
$method=|bool|load|

$prototype=QLibrary::LoadHints loadHints () const
$method=|QLibrary::LoadHints|loadHints|

$prototype=void setFileName ( const QString & fileName )
$method=|void|setFileName|const QString &

$prototype=void setLoadHints ( QLibrary::LoadHints loadHints )
$method=|void|setLoadHints|QLibrary::LoadHints

$prototype=bool unload ()
$method=|bool|unload|

#pragma ENDDUMP
