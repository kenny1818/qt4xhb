/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTOPENGL_H
#define QT4XHB_MACROS_QTOPENGL_H

#define ISQGLBUFFER(n)                                      _qt4xhb_isObjectDerivedFrom(n,"QGLBuffer")
#define ISQGLCOLORMAP(n)                                    _qt4xhb_isObjectDerivedFrom(n,"QGLColormap")
#define ISQGLCONTEXT(n)                                     _qt4xhb_isObjectDerivedFrom(n,"QGLContext")
#define ISQGLFORMAT(n)                                      _qt4xhb_isObjectDerivedFrom(n,"QGLFormat")
#define ISQGLFRAMEBUFFEROBJECT(n)                           _qt4xhb_isObjectDerivedFrom(n,"QGLFramebufferObject")
#define ISQGLFRAMEBUFFEROBJECTFORMAT(n)                     _qt4xhb_isObjectDerivedFrom(n,"QGLFramebufferObjectFormat")
#define ISQGLFUNCTIONS(n)                                   _qt4xhb_isObjectDerivedFrom(n,"QGLFunctions")
#define ISQGLPIXELBUFFER(n)                                 _qt4xhb_isObjectDerivedFrom(n,"QGLPixelBuffer")
#define ISQGLSHADER(n)                                      _qt4xhb_isObjectDerivedFrom(n,"QGLShader")
#define ISQGLSHADERPROGRAM(n)                               _qt4xhb_isObjectDerivedFrom(n,"QGLShaderProgram")
#define ISQGLWIDGET(n)                                      _qt4xhb_isObjectDerivedFrom(n,"QGLWidget")

#define PQGLBUFFER(n)                                       (QGLBuffer *) _qt4xhb_itemGetPtr(n)
#define PQGLCOLORMAP(n)                                     (QGLColormap *) _qt4xhb_itemGetPtr(n)
#define PQGLCONTEXT(n)                                      (QGLContext *) _qt4xhb_itemGetPtr(n)
#define PQGLFORMAT(n)                                       (QGLFormat *) _qt4xhb_itemGetPtr(n)
#define PQGLFRAMEBUFFEROBJECT(n)                            (QGLFramebufferObject *) _qt4xhb_itemGetPtr(n)
#define PQGLFRAMEBUFFEROBJECTFORMAT(n)                      (QGLFramebufferObjectFormat *) _qt4xhb_itemGetPtr(n)
#define PQGLFUNCTIONS(n)                                    (QGLFunctions *) _qt4xhb_itemGetPtr(n)
#define PQGLPIXELBUFFER(n)                                  (QGLPixelBuffer *) _qt4xhb_itemGetPtr(n)
#define PQGLSHADER(n)                                       (QGLShader *) _qt4xhb_itemGetPtr(n)
#define PQGLSHADERPROGRAM(n)                                (QGLShaderProgram *) _qt4xhb_itemGetPtr(n)
#define PQGLWIDGET(n)                                       (QGLWidget *) _qt4xhb_itemGetPtr(n)

#define OPQGLBUFFER(n,v)                                    ISNIL(n)? v : (QGLBuffer *) _qt4xhb_itemGetPtr(n)
#define OPQGLCOLORMAP(n,v)                                  ISNIL(n)? v : (QGLColormap *) _qt4xhb_itemGetPtr(n)
#define OPQGLCONTEXT(n,v)                                   ISNIL(n)? v : (QGLContext *) _qt4xhb_itemGetPtr(n)
#define OPQGLFORMAT(n,v)                                    ISNIL(n)? v : (QGLFormat *) _qt4xhb_itemGetPtr(n)
#define OPQGLFRAMEBUFFEROBJECT(n,v)                         ISNIL(n)? v : (QGLFramebufferObject *) _qt4xhb_itemGetPtr(n)
#define OPQGLFRAMEBUFFEROBJECTFORMAT(n,v)                   ISNIL(n)? v : (QGLFramebufferObjectFormat *) _qt4xhb_itemGetPtr(n)
#define OPQGLFUNCTIONS(n,v)                                 ISNIL(n)? v : (QGLFunctions *) _qt4xhb_itemGetPtr(n)
#define OPQGLPIXELBUFFER(n,v)                               ISNIL(n)? v : (QGLPixelBuffer *) _qt4xhb_itemGetPtr(n)
#define OPQGLSHADER(n,v)                                    ISNIL(n)? v : (QGLShader *) _qt4xhb_itemGetPtr(n)
#define OPQGLSHADERPROGRAM(n,v)                             ISNIL(n)? v : (QGLShaderProgram *) _qt4xhb_itemGetPtr(n)
#define OPQGLWIDGET(n,v)                                    ISNIL(n)? v : (QGLWidget *) _qt4xhb_itemGetPtr(n)

#endif /* QT4XHB_MACROS_QTOPENGL_H */