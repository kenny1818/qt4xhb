%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QStyleOption

   METHOD new
%%   METHOD delete

   METHOD text
   METHOD icon

   METHOD setText
   METHOD setIcon

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionToolBox()
$internalConstructor=|new1|

$prototype=QStyleOptionToolBox(const QStyleOptionToolBox &other)
$internalConstructor=|new2|const QStyleOptionToolBox &

$prototype=QStyleOptionToolBox(int version) (protected)

//[1]QStyleOptionToolBox()
//[2]QStyleOptionToolBox(const QStyleOptionToolBox &other)
//[3]QStyleOptionToolBox(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionToolBox_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTOOLBOX(1) )
  {
    QStyleOptionToolBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=QString text
$variableMethod=|QString|text|
$variableMethod=|void|text,setText|QString

$prototype=QIcon icon
$variableMethod=|QIcon|icon|
$variableMethod=|void|icon,setIcon|QIcon

#pragma ENDDUMP
