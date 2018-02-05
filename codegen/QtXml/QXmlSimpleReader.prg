%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QXmlSimpleReader INHERIT QXmlReader

   METHOD new
   METHOD delete
   METHOD parse
   METHOD parseContinue

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlSimpleReader>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QXmlSimpleReader ()
$constructor=|new|

$deleteMethod

$prototype=virtual bool parse ( const QXmlInputSource * input, bool incremental )
$virtualMethod=|bool|parse|const QXmlInputSource *,bool

$prototype=virtual bool parseContinue ()
$virtualMethod=|bool|parseContinue|

#pragma ENDDUMP
