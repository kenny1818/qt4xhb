/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QTextOption::Flag
flags QTextOption::Flags
*/
#define QTextOption_IncludeTrailingSpaces                            0x80000000
#define QTextOption_ShowTabsAndSpaces                                0x1
#define QTextOption_ShowLineAndParagraphSeparators                   0x2
#define QTextOption_AddSpaceForLineAndParagraphSeparators            0x4
#define QTextOption_SuppressColors                                   0x8

/*
enum QTextOption::TabType
*/
#define QTextOption_LeftTab                                          0
#define QTextOption_RightTab                                         1
#define QTextOption_CenterTab                                        2
#define QTextOption_DelimiterTab                                     3

/*
enum QTextOption::WrapMode
*/
#define QTextOption_NoWrap                                           0
#define QTextOption_WordWrap                                         1
#define QTextOption_ManualWrap                                       2
#define QTextOption_WrapAnywhere                                     3
#define QTextOption_WrapAtWordBoundaryOrAnywhere                     4
