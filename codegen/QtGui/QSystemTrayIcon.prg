$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMENU
REQUEST QRECT
REQUEST QICON
#endif

CLASS QSystemTrayIcon INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD contextMenu
   METHOD geometry
   METHOD icon
   METHOD isVisible
   METHOD setContextMenu
   METHOD setIcon
   METHOD setToolTip
   METHOD showMessage
   METHOD toolTip
   METHOD hide
   METHOD setVisible
   METHOD show
   METHOD isSystemTrayAvailable
   METHOD supportsMessages

   METHOD onActivated
   METHOD onMessageClicked

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSystemTrayIcon>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSystemTrayIcon ( QObject * parent = 0 )
*/
$constructor=|new1|QObject *=0

/*
QSystemTrayIcon ( const QIcon & icon, QObject * parent = 0 )
*/
$constructor=|new2|const QIcon &,QObject *=0

//[1]QSystemTrayIcon ( QObject * parent = 0 )
//[2]QSystemTrayIcon ( const QIcon & icon, QObject * parent = 0 )

HB_FUNC_STATIC( QSYSTEMTRAYICON_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSYSTEMTRAYICON_NEW1 );
  }
  else if( ISBETWEEN(1,2) && (ISQICON(1)||ISCHAR(1)) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSYSTEMTRAYICON_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QMenu * contextMenu () const
*/
$method=|QMenu *|contextMenu|

/*
QRect geometry () const
*/
$method=|QRect|geometry|

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
void setContextMenu ( QMenu * menu )
*/
$method=|void|setContextMenu|QMenu *

/*
void setIcon ( const QIcon & icon )
*/
$method=|void|setIcon|const QIcon &

/*
void setToolTip ( const QString & tip )
*/
$method=|void|setToolTip|const QString &

/*
void showMessage ( const QString & title, const QString & message, MessageIcon icon = Information, int millisecondsTimeoutHint = 10000 )
*/
$method=|void|showMessage|const QString &,const QString &,QSystemTrayIcon::MessageIcon=QSystemTrayIcon::Information,int=10000

/*
QString toolTip () const
*/
$method=|QString|toolTip|

/*
void hide ()
*/
$method=|void|hide|

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
void show ()
*/
$method=|void|show|

/*
static bool isSystemTrayAvailable ()
*/
$staticMethod=|bool|isSystemTrayAvailable|

/*
static bool supportsMessages ()
*/
$staticMethod=|bool|supportsMessages|

#pragma ENDDUMP
