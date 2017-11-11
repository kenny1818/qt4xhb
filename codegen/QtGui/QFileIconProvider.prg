$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QFileIconProvider

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD icon
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFileIconProvider>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFileIconProvider()
*/
$constructor=|new|

$deleteMethod

/*
virtual QIcon icon(IconType type) const
*/
$internalVirtualMethod=|QIcon|icon,icon1|QFileIconProvider::IconType

/*
virtual QIcon icon(const QFileInfo & info) const
*/
$internalVirtualMethod=|QIcon|icon,icon2|const QFileInfo &

//[1]virtual QIcon icon(IconType type) const
//[2]virtual QIcon icon(const QFileInfo & info) const

HB_FUNC_STATIC( QFILEICONPROVIDER_ICON )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFileIconProvider_icon1();
  }
  else if( ISNUMPAR(1) && ISQFILEINFO(1) )
  {
    QFileIconProvider_icon2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QString type(const QFileInfo & info) const
*/
$virtualMethod=|QString|type|const QFileInfo &

$extraMethods

#pragma ENDDUMP
