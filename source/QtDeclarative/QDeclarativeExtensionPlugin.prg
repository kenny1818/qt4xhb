/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QDeclarativeExtensionPlugin INHERIT QObject

   METHOD initializeEngine
   METHOD registerTypes

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDeclarativeExtensionPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtDeclarative/QDeclarativeExtensionPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
virtual void initializeEngine( QDeclarativeEngine * engine, const char * uri )
*/
HB_FUNC_STATIC( QDECLARATIVEEXTENSIONPLUGIN_INITIALIZEENGINE )
{
  QDeclarativeExtensionPlugin * obj = (QDeclarativeExtensionPlugin *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQDECLARATIVEENGINE(1) && ISCHAR(2) )
    {
#endif
      obj->initializeEngine( PQDECLARATIVEENGINE(1), PCONSTCHAR(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void registerTypes( const char * uri ) = 0
*/
HB_FUNC_STATIC( QDECLARATIVEEXTENSIONPLUGIN_REGISTERTYPES )
{
  QDeclarativeExtensionPlugin * obj = (QDeclarativeExtensionPlugin *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->registerTypes( PCONSTCHAR(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
