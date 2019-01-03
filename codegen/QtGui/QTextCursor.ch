%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QTextCursor::MoveMode
*/
#define QTextCursor_MoveAnchor                                       0
#define QTextCursor_KeepAnchor                                       1

/*
enum QTextCursor::MoveOperation
*/
#define QTextCursor_NoMove                                           0
#define QTextCursor_Start                                            1
#define QTextCursor_StartOfLine                                      3
#define QTextCursor_StartOfBlock                                     4
#define QTextCursor_StartOfWord                                      5
#define QTextCursor_PreviousBlock                                    6
#define QTextCursor_PreviousCharacter                                7
#define QTextCursor_PreviousWord                                     8
#define QTextCursor_Up                                               2
#define QTextCursor_Left                                             9
#define QTextCursor_WordLeft                                         10
#define QTextCursor_End                                              11
#define QTextCursor_EndOfLine                                        13
#define QTextCursor_EndOfWord                                        14
#define QTextCursor_EndOfBlock                                       15
#define QTextCursor_NextBlock                                        16
#define QTextCursor_NextCharacter                                    17
#define QTextCursor_NextWord                                         18
#define QTextCursor_Down                                             12
#define QTextCursor_Right                                            19
#define QTextCursor_WordRight                                        20
#define QTextCursor_NextCell                                         21
#define QTextCursor_PreviousCell                                     22
#define QTextCursor_NextRow                                          23
#define QTextCursor_PreviousRow                                      24

/*
enum QTextCursor::SelectionType
*/
#define QTextCursor_Document                                         3
#define QTextCursor_BlockUnderCursor                                 2
#define QTextCursor_LineUnderCursor                                  1
#define QTextCursor_WordUnderCursor                                  0
