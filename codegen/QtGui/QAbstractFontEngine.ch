%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QAbstractFontEngine::Capability
flags QAbstractFontEngine::Capabilities
*/
#define QAbstractFontEngine_CanRenderGlyphs_Gray                     4
#define QAbstractFontEngine_CanRenderGlyphs_Mono                     2
#define QAbstractFontEngine_CanRenderGlyphs                          hb_bitor(QAbstractFontEngine_CanRenderGlyphs_Mono,QAbstractFontEngine_CanRenderGlyphs_Gray)
#define QAbstractFontEngine_CanOutlineGlyphs                         1

/*
enum QAbstractFontEngine::FontProperty
*/
#define QAbstractFontEngine_Ascent                                   0
#define QAbstractFontEngine_Descent                                  1
#define QAbstractFontEngine_Leading                                  2
#define QAbstractFontEngine_XHeight                                  3
#define QAbstractFontEngine_AverageCharWidth                         4
#define QAbstractFontEngine_LineThickness                            5
#define QAbstractFontEngine_UnderlinePosition                        6
#define QAbstractFontEngine_MaxCharWidth                             7
#define QAbstractFontEngine_MinLeftBearing                           8
#define QAbstractFontEngine_MinRightBearing                          9
#define QAbstractFontEngine_GlyphCount                               10
#define QAbstractFontEngine_CacheGlyphsHint                          11
#define QAbstractFontEngine_OutlineGlyphsHint                        12

/*
enum QAbstractFontEngine::TextShapingFlag
flags QAbstractFontEngine::TextShapingFlags
*/
#define QAbstractFontEngine_RightToLeft                              0x0001
#define QAbstractFontEngine_ReturnDesignMetrics                      0x0002
