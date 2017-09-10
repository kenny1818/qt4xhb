$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCHAR
#endif

CLASS QXmlInputSource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD data
   METHOD fetchData
   METHOD next
   METHOD reset
   METHOD setData1
   METHOD setData2
   METHOD setData

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlInputSource>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlInputSource ()
*/
$constructor=|new1|

/*
QXmlInputSource ( QIODevice * dev )
*/
$constructor=|new2|QIODevice *

//[1]QXmlInputSource ()
//[2]QXmlInputSource ( QIODevice * dev )

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
virtual QString data () const
*/
$virtualMethod=|QString|data|

/*
virtual void fetchData ()
*/
$virtualMethod=|void|fetchData|

/*
virtual QChar next ()
*/
$virtualMethod=|QChar|next|

/*
virtual void reset ()
*/
$virtualMethod=|void|reset|

/*
virtual void setData ( const QString & dat )
*/
$virtualMethod=|void|setData,setData1|const QString &

/*
virtual void setData ( const QByteArray & dat )
*/
$virtualMethod=|void|setData,setData2|const QByteArray &

//[1]virtual void setData ( const QString & dat )
//[2]virtual void setData ( const QByteArray & dat )

HB_FUNC_STATIC( QXMLINPUTSOURCE_SETDATA )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_SETDATA1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QXMLINPUTSOURCE_SETDATA2 );
  }
}

$extraMethods

#pragma ENDDUMP
