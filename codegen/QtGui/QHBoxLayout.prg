%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QHBoxLayout INHERIT QBoxLayout

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHBoxLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QHBoxLayout ()
$internalConstructor=|new1|

$prototype=QHBoxLayout ( QWidget * parent )
$internalConstructor=|new2|QWidget *

//[1]QHBoxLayout ()
//[2]QHBoxLayout ( QWidget * parent )

HB_FUNC_STATIC( QHBOXLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QHBoxLayout_new1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QHBoxLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

#pragma ENDDUMP
