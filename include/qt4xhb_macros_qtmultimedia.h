/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTMULTIMEDIA_H
#define QT4XHB_MACROS_QTMULTIMEDIA_H

#define ISQABSTRACTVIDEOBUFFER(n)                           _qt4xhb_isObjectDerivedFrom(n,"QAbstractVideoBuffer")
#define ISQABSTRACTVIDEOSURFACE(n)                          _qt4xhb_isObjectDerivedFrom(n,"QAbstractVideoSurface")
#define ISQAUDIODEVICEINFO(n)                               _qt4xhb_isObjectDerivedFrom(n,"QAudioDeviceInfo")
#define ISQAUDIOFORMAT(n)                                   _qt4xhb_isObjectDerivedFrom(n,"QAudioFormat")
#define ISQAUDIOINPUT(n)                                    _qt4xhb_isObjectDerivedFrom(n,"QAudioInput")
#define ISQAUDIOOUTPUT(n)                                   _qt4xhb_isObjectDerivedFrom(n,"QAudioOutput")
#define ISQVIDEOFRAME(n)                                    _qt4xhb_isObjectDerivedFrom(n,"QVideoFrame")
#define ISQVIDEOSURFACEFORMAT(n)                            _qt4xhb_isObjectDerivedFrom(n,"QVideoSurfaceFormat")

#define PQABSTRACTVIDEOBUFFER(n)                            (QAbstractVideoBuffer *) _qt4xhb_itemGetPtr(n)
#define PQABSTRACTVIDEOSURFACE(n)                           (QAbstractVideoSurface *) _qt4xhb_itemGetPtr(n)
#define PQAUDIODEVICEINFO(n)                                (QAudioDeviceInfo *) _qt4xhb_itemGetPtr(n)
#define PQAUDIOFORMAT(n)                                    (QAudioFormat *) _qt4xhb_itemGetPtr(n)
#define PQAUDIOINPUT(n)                                     (QAudioInput *) _qt4xhb_itemGetPtr(n)
#define PQAUDIOOUTPUT(n)                                    (QAudioOutput *) _qt4xhb_itemGetPtr(n)
#define PQVIDEOFRAME(n)                                     (QVideoFrame *) _qt4xhb_itemGetPtr(n)
#define PQVIDEOSURFACEFORMAT(n)                             (QVideoSurfaceFormat *) _qt4xhb_itemGetPtr(n)

#define OPQABSTRACTVIDEOBUFFER(n,v)                         ISNIL(n)? v : (QAbstractVideoBuffer *) _qt4xhb_itemGetPtr(n)
#define OPQABSTRACTVIDEOSURFACE(n,v)                        ISNIL(n)? v : (QAbstractVideoSurface *) _qt4xhb_itemGetPtr(n)
#define OPQAUDIODEVICEINFO(n,v)                             ISNIL(n)? v : (QAudioDeviceInfo *) _qt4xhb_itemGetPtr(n)
#define OPQAUDIOFORMAT(n,v)                                 ISNIL(n)? v : (QAudioFormat *) _qt4xhb_itemGetPtr(n)
#define OPQAUDIOINPUT(n,v)                                  ISNIL(n)? v : (QAudioInput *) _qt4xhb_itemGetPtr(n)
#define OPQAUDIOOUTPUT(n,v)                                 ISNIL(n)? v : (QAudioOutput *) _qt4xhb_itemGetPtr(n)
#define OPQVIDEOFRAME(n,v)                                  ISNIL(n)? v : (QVideoFrame *) _qt4xhb_itemGetPtr(n)
#define OPQVIDEOSURFACEFORMAT(n,v)                          ISNIL(n)? v : (QVideoSurfaceFormat *) _qt4xhb_itemGetPtr(n)

#endif /* QT4XHB_MACROS_QTMULTIMEDIA_H */