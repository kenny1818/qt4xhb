$header

#include "hbclass.ch"

CLASS QXmlSimpleReader INHERIT QXmlReader

   DATA self_destruction INIT .F.

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

/*
QXmlSimpleReader ()
*/
$constructor=|new|

$deleteMethod

/*
virtual bool parse ( const QXmlInputSource * input, bool incremental )
*/
$virtualMethod=|bool|parse|const QXmlInputSource *,bool

/*
virtual bool parseContinue ()
*/
$virtualMethod=|bool|parseContinue|

#pragma ENDDUMP
