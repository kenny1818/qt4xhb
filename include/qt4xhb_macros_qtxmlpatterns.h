/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTXMLPATTERNS_H
#define QT4XHB_MACROS_QTXMLPATTERNS_H

#define ISQABSTRACTMESSAGEHANDLER(n)                        _qt4xhb_isObjectDerivedFrom(n,"QAbstractMessageHandler")
#define ISQABSTRACTURIRESOLVER(n)                           _qt4xhb_isObjectDerivedFrom(n,"QAbstractUriResolver")
#define ISQABSTRACTXMLNODEMODEL(n)                          _qt4xhb_isObjectDerivedFrom(n,"QAbstractXmlNodeModel")
#define ISQABSTRACTXMLRECEIVER(n)                           _qt4xhb_isObjectDerivedFrom(n,"QAbstractXmlReceiver")
#define ISQSIMPLEXMLNODEMODEL(n)                            _qt4xhb_isObjectDerivedFrom(n,"QSimpleXmlNodeModel")
#define ISQSOURCELOCATION(n)                                _qt4xhb_isObjectDerivedFrom(n,"QSourceLocation")
#define ISQXMLFORMATTER(n)                                  _qt4xhb_isObjectDerivedFrom(n,"QXmlFormatter")
#define ISQXMLITEM(n)                                       _qt4xhb_isObjectDerivedFrom(n,"QXmlItem")
#define ISQXMLNAME(n)                                       _qt4xhb_isObjectDerivedFrom(n,"QXmlName")
#define ISQXMLNAMEPOOL(n)                                   _qt4xhb_isObjectDerivedFrom(n,"QXmlNamePool")
#define ISQXMLNODEMODELINDEX(n)                             _qt4xhb_isObjectDerivedFrom(n,"QXmlNodeModelIndex")
#define ISQXMLQUERY(n)                                      _qt4xhb_isObjectDerivedFrom(n,"QXmlQuery")
#define ISQXMLRESULTITEMS(n)                                _qt4xhb_isObjectDerivedFrom(n,"QXmlResultItems")
#define ISQXMLSCHEMA(n)                                     _qt4xhb_isObjectDerivedFrom(n,"QXmlSchema")
#define ISQXMLSCHEMAVALIDATOR(n)                            _qt4xhb_isObjectDerivedFrom(n,"QXmlSchemaValidator")
#define ISQXMLSERIALIZER(n)                                 _qt4xhb_isObjectDerivedFrom(n,"QXmlSerializer")

#define PQABSTRACTMESSAGEHANDLER(n)                         (QAbstractMessageHandler *) _qt4xhb_itemGetPtr(n)
#define PQABSTRACTURIRESOLVER(n)                            (QAbstractUriResolver *) _qt4xhb_itemGetPtr(n)
#define PQABSTRACTXMLNODEMODEL(n)                           (QAbstractXmlNodeModel *) _qt4xhb_itemGetPtr(n)
#define PQABSTRACTXMLRECEIVER(n)                            (QAbstractXmlReceiver *) _qt4xhb_itemGetPtr(n)
#define PQSIMPLEXMLNODEMODEL(n)                             (QSimpleXmlNodeModel *) _qt4xhb_itemGetPtr(n)
#define PQSOURCELOCATION(n)                                 (QSourceLocation *) _qt4xhb_itemGetPtr(n)
#define PQXMLFORMATTER(n)                                   (QXmlFormatter *) _qt4xhb_itemGetPtr(n)
#define PQXMLITEM(n)                                        (QXmlItem *) _qt4xhb_itemGetPtr(n)
#define PQXMLNAME(n)                                        (QXmlName *) _qt4xhb_itemGetPtr(n)
#define PQXMLNAMEPOOL(n)                                    (QXmlNamePool *) _qt4xhb_itemGetPtr(n)
#define PQXMLNODEMODELINDEX(n)                              (QXmlNodeModelIndex *) _qt4xhb_itemGetPtr(n)
#define PQXMLQUERY(n)                                       (QXmlQuery *) _qt4xhb_itemGetPtr(n)
#define PQXMLRESULTITEMS(n)                                 (QXmlResultItems *) _qt4xhb_itemGetPtr(n)
#define PQXMLSCHEMA(n)                                      (QXmlSchema *) _qt4xhb_itemGetPtr(n)
#define PQXMLSCHEMAVALIDATOR(n)                             (QXmlSchemaValidator *) _qt4xhb_itemGetPtr(n)
#define PQXMLSERIALIZER(n)                                  (QXmlSerializer *) _qt4xhb_itemGetPtr(n)

#define OPQABSTRACTMESSAGEHANDLER(n,v)                      ISNIL(n)? v : (QAbstractMessageHandler *) _qt4xhb_itemGetPtr(n)
#define OPQABSTRACTURIRESOLVER(n,v)                         ISNIL(n)? v : (QAbstractUriResolver *) _qt4xhb_itemGetPtr(n)
#define OPQABSTRACTXMLNODEMODEL(n,v)                        ISNIL(n)? v : (QAbstractXmlNodeModel *) _qt4xhb_itemGetPtr(n)
#define OPQABSTRACTXMLRECEIVER(n,v)                         ISNIL(n)? v : (QAbstractXmlReceiver *) _qt4xhb_itemGetPtr(n)
#define OPQSIMPLEXMLNODEMODEL(n,v)                          ISNIL(n)? v : (QSimpleXmlNodeModel *) _qt4xhb_itemGetPtr(n)
#define OPQSOURCELOCATION(n,v)                              ISNIL(n)? v : (QSourceLocation *) _qt4xhb_itemGetPtr(n)
#define OPQXMLFORMATTER(n,v)                                ISNIL(n)? v : (QXmlFormatter *) _qt4xhb_itemGetPtr(n)
#define OPQXMLITEM(n,v)                                     ISNIL(n)? v : (QXmlItem *) _qt4xhb_itemGetPtr(n)
#define OPQXMLNAME(n,v)                                     ISNIL(n)? v : (QXmlName *) _qt4xhb_itemGetPtr(n)
#define OPQXMLNAMEPOOL(n,v)                                 ISNIL(n)? v : (QXmlNamePool *) _qt4xhb_itemGetPtr(n)
#define OPQXMLNODEMODELINDEX(n,v)                           ISNIL(n)? v : (QXmlNodeModelIndex *) _qt4xhb_itemGetPtr(n)
#define OPQXMLQUERY(n,v)                                    ISNIL(n)? v : (QXmlQuery *) _qt4xhb_itemGetPtr(n)
#define OPQXMLRESULTITEMS(n,v)                              ISNIL(n)? v : (QXmlResultItems *) _qt4xhb_itemGetPtr(n)
#define OPQXMLSCHEMA(n,v)                                   ISNIL(n)? v : (QXmlSchema *) _qt4xhb_itemGetPtr(n)
#define OPQXMLSCHEMAVALIDATOR(n,v)                          ISNIL(n)? v : (QXmlSchemaValidator *) _qt4xhb_itemGetPtr(n)
#define OPQXMLSERIALIZER(n,v)                               ISNIL(n)? v : (QXmlSerializer *) _qt4xhb_itemGetPtr(n)

#endif /* QT4XHB_MACROS_QTXMLPATTERNS_H */
