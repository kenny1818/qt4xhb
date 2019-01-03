%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QStyleOptionToolBox::StyleOptionType
*/
#define QStyleOptionToolBox_Type                                     QStyleOption_SO_ToolBox

/*
enum QStyleOptionToolBox::StyleOptionVersion
*/
#define QStyleOptionToolBox_Version                                  2

/*
enum QStyleOptionToolBox::TabPosition
*/
#define QStyleOptionToolBox_Beginning                                0
#define QStyleOptionToolBox_Middle                                   1
#define QStyleOptionToolBox_End                                      2
#define QStyleOptionToolBox_OnlyOneTab                               3

/*
enum QStyleOptionToolBox::SelectedPosition
*/
#define QStyleOptionToolBox_NotAdjacent                              0
#define QStyleOptionToolBox_NextIsSelected                           1
#define QStyleOptionToolBox_PreviousIsSelected                       2
