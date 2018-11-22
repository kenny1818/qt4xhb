%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QCompleter::CompletionMode
*/
#define QCompleter_PopupCompletion                                   0
#define QCompleter_InlineCompletion                                  2
#define QCompleter_UnfilteredPopupCompletion                         1

/*
enum QCompleter::ModelSorting
*/
#define QCompleter_UnsortedModel                                     0
#define QCompleter_CaseSensitivelySortedModel                        1
#define QCompleter_CaseInsensitivelySortedModel                      2
