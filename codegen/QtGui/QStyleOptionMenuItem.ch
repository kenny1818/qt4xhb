%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QStyleOptionMenuItem::StyleOptionType
*/
#define QStyleOptionMenuItem_Type                                    QStyleOption_SO_MenuItem

/*
enum QStyleOptionMenuItem::StyleOptionVersion
*/
#define QStyleOptionMenuItem_Version                                 1

/*
enum QStyleOptionMenuItem::MenuItemType
*/
#define QStyleOptionMenuItem_Normal                                  0
#define QStyleOptionMenuItem_DefaultItem                             1
#define QStyleOptionMenuItem_Separator                               2
#define QStyleOptionMenuItem_SubMenu                                 3
#define QStyleOptionMenuItem_Scroller                                4
#define QStyleOptionMenuItem_TearOff                                 5
#define QStyleOptionMenuItem_Margin                                  6
#define QStyleOptionMenuItem_EmptyArea                               7

/*
enum QStyleOptionMenuItem::CheckType
*/
#define QStyleOptionMenuItem_NotCheckable                            0
#define QStyleOptionMenuItem_Exclusive                               1
#define QStyleOptionMenuItem_NonExclusive                            2
