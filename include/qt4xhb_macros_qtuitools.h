/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTUITOOLS_H
#define QT4XHB_MACROS_QTUITOOLS_H

#define ISQUILOADER(n)                                      Qt4xHb::isObjectDerivedFrom(n,"QUiLoader")

#define PQUILOADER(n)                                       (QUiLoader *) Qt4xHb::itemGetPtr(n)

#define OPQUILOADER(n,v)                                    ISNIL(n)? v : (QUiLoader *) Qt4xHb::itemGetPtr(n)

#endif /* QT4XHB_MACROS_QTUITOOLS_H */
