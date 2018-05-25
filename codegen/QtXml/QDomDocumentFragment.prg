%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDomNode

   METHOD new
   METHOD nodeType

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomDocumentFragment ()
$internalConstructor=|new1|

$prototype=QDomDocumentFragment ( const QDomDocumentFragment & x )
$internalConstructor=|new2|const QDomDocumentFragment &

//[1]QDomDocumentFragment ()
//[2]QDomDocumentFragment ( const QDomDocumentFragment & x )

HB_FUNC_STATIC( QDOMDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomDocumentFragment_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTFRAGMENT(1) )
  {
    QDomDocumentFragment_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

#pragma ENDDUMP
