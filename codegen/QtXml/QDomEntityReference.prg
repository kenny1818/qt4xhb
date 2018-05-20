%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QDomNode

   METHOD new
   METHOD nodeType

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomEntityReference ()
$internalConstructor=|new1|

$prototype=QDomEntityReference ( const QDomEntityReference & x )
$internalConstructor=|new2|const QDomEntityReference &

//[1]QDomEntityReference ()
//[2]QDomEntityReference ( const QDomEntityReference & x )

HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomEntityReference_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMENTITYREFERENCE(1) )
  {
    QDomEntityReference_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

#pragma ENDDUMP
