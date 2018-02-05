%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMTEXT
#endif

CLASS QDomText INHERIT QDomCharacterData

   METHOD new
   METHOD nodeType
   METHOD splitText

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomText>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDomText ()
$internalConstructor=|new1|

$prototype=QDomText ( const QDomText & x )
$internalConstructor=|new2|const QDomText &

//[1]QDomText ()
//[2]QDomText ( const QDomText & x )

HB_FUNC_STATIC( QDOMTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomText_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMTEXT(1) )
  {
    QDomText_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=QDomText splitText ( int offset )
$method=|QDomText|splitText|int

#pragma ENDDUMP
