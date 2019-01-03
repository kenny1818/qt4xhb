%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QHeaderView::ResizeMode
*/
#define QHeaderView_Interactive                                      0
#define QHeaderView_Fixed                                            2
#define QHeaderView_Stretch                                          1
#define QHeaderView_ResizeToContents                                 3
// obsolete
#define QHeaderView_Custom                                           QHeaderView_Fixed
