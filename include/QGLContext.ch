/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QGLContext::BindOption
flags QGLContext::BindOptions
*/
#define QGLContext_NoBindOption                                      0x0000
#define QGLContext_InvertedYBindOption                               0x0001
#define QGLContext_MipmapBindOption                                  0x0002
#define QGLContext_PremultipliedAlphaBindOption                      0x0004
#define QGLContext_LinearFilteringBindOption                         0x0008
#define QGLContext_DefaultBindOption                                 hb_bitor(hb_bitor(QGLContext_LinearFilteringBindOption,QGLContext_InvertedYBindOption),QGLContext_MipmapBindOption)
