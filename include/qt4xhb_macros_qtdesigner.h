/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTDESIGNER_H
#define QT4XHB_MACROS_QTDESIGNER_H

#define ISQABSTRACTEXTENSIONFACTORY(n)                      _qt4xhb_isObjectDerivedFrom(n,"QAbstractExtensionFactory")
#define ISQABSTRACTEXTENSIONMANAGER(n)                      _qt4xhb_isObjectDerivedFrom(n,"QAbstractExtensionManager")
#define ISQABSTRACTFORMBUILDER(n)                           _qt4xhb_isObjectDerivedFrom(n,"QAbstractFormBuilder")
#define ISQDESIGNERACTIONEDITORINTERFACE(n)                 _qt4xhb_isObjectDerivedFrom(n,"QDesignerActionEditorInterface")
#define ISQDESIGNERCONTAINEREXTENSION(n)                    _qt4xhb_isObjectDerivedFrom(n,"QDesignerContainerExtension")
#define ISQDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE(n)       _qt4xhb_isObjectDerivedFrom(n,"QDesignerCustomWidgetCollectionInterface")
#define ISQDESIGNERCUSTOMWIDGETINTERFACE(n)                 _qt4xhb_isObjectDerivedFrom(n,"QDesignerCustomWidgetInterface")
#define ISQDESIGNERDYNAMICPROPERTYSHEETEXTENSION(n)         _qt4xhb_isObjectDerivedFrom(n,"QDesignerDynamicPropertySheetExtension")
#define ISQDESIGNERFORMEDITORINTERFACE(n)                   _qt4xhb_isObjectDerivedFrom(n,"QDesignerFormEditorInterface")
#define ISQDESIGNERFORMWINDOWCURSORINTERFACE(n)             _qt4xhb_isObjectDerivedFrom(n,"QDesignerFormWindowCursorInterface")
#define ISQDESIGNERFORMWINDOWINTERFACE(n)                   _qt4xhb_isObjectDerivedFrom(n,"QDesignerFormWindowInterface")
#define ISQDESIGNERFORMWINDOWMANAGERINTERFACE(n)            _qt4xhb_isObjectDerivedFrom(n,"QDesignerFormWindowManagerInterface")
#define ISQDESIGNERMEMBERSHEETEXTENSION(n)                  _qt4xhb_isObjectDerivedFrom(n,"QDesignerMemberSheetExtension")
#define ISQDESIGNEROBJECTINSPECTORINTERFACE(n)              _qt4xhb_isObjectDerivedFrom(n,"QDesignerObjectInspectorInterface")
#define ISQDESIGNERPROPERTYEDITORINTERFACE(n)               _qt4xhb_isObjectDerivedFrom(n,"QDesignerPropertyEditorInterface")
#define ISQDESIGNERPROPERTYSHEETEXTENSION(n)                _qt4xhb_isObjectDerivedFrom(n,"QDesignerPropertySheetExtension")
#define ISQDESIGNERTASKMENUEXTENSION(n)                     _qt4xhb_isObjectDerivedFrom(n,"QDesignerTaskMenuExtension")
#define ISQDESIGNERWIDGETBOXINTERFACE(n)                    _qt4xhb_isObjectDerivedFrom(n,"QDesignerWidgetBoxInterface")
#define ISQEXTENSIONFACTORY(n)                              _qt4xhb_isObjectDerivedFrom(n,"QExtensionFactory")
#define ISQEXTENSIONMANAGER(n)                              _qt4xhb_isObjectDerivedFrom(n,"QExtensionManager")
#define ISQFORMBUILDER(n)                                   _qt4xhb_isObjectDerivedFrom(n,"QFormBuilder")

#define PQABSTRACTEXTENSIONFACTORY(n)                       (QAbstractExtensionFactory *) _qt4xhb_itemGetPtr(n)
#define PQABSTRACTEXTENSIONMANAGER(n)                       (QAbstractExtensionManager *) _qt4xhb_itemGetPtr(n)
#define PQABSTRACTFORMBUILDER(n)                            (QAbstractFormBuilder *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERACTIONEDITORINTERFACE(n)                  (QDesignerActionEditorInterface *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERCONTAINEREXTENSION(n)                     (QDesignerContainerExtension *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE(n)        (QDesignerCustomWidgetCollectionInterface *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERCUSTOMWIDGETINTERFACE(n)                  (QDesignerCustomWidgetInterface *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERDYNAMICPROPERTYSHEETEXTENSION(n)          (QDesignerDynamicPropertySheetExtension *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERFORMEDITORINTERFACE(n)                    (QDesignerFormEditorInterface *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERFORMWINDOWCURSORINTERFACE(n)              (QDesignerFormWindowCursorInterface *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERFORMWINDOWINTERFACE(n)                    (QDesignerFormWindowInterface *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERFORMWINDOWMANAGERINTERFACE(n)             (QDesignerFormWindowManagerInterface *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERMEMBERSHEETEXTENSION(n)                   (QDesignerMemberSheetExtension *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNEROBJECTINSPECTORINTERFACE(n)               (QDesignerObjectInspectorInterface *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERPROPERTYEDITORINTERFACE(n)                (QDesignerPropertyEditorInterface *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERPROPERTYSHEETEXTENSION(n)                 (QDesignerPropertySheetExtension *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERTASKMENUEXTENSION(n)                      (QDesignerTaskMenuExtension *) _qt4xhb_itemGetPtr(n)
#define PQDESIGNERWIDGETBOXINTERFACE(n)                     (QDesignerWidgetBoxInterface *) _qt4xhb_itemGetPtr(n)
#define PQEXTENSIONFACTORY(n)                               (QExtensionFactory *) _qt4xhb_itemGetPtr(n)
#define PQEXTENSIONMANAGER(n)                               (QExtensionManager *) _qt4xhb_itemGetPtr(n)
#define PQFORMBUILDER(n)                                    (QFormBuilder *) _qt4xhb_itemGetPtr(n)

#define OPQABSTRACTEXTENSIONFACTORY(n,v)                    ISNIL(n)? v : (QAbstractExtensionFactory *) _qt4xhb_itemGetPtr(n)
#define OPQABSTRACTEXTENSIONMANAGER(n,v)                    ISNIL(n)? v : (QAbstractExtensionManager *) _qt4xhb_itemGetPtr(n)
#define OPQABSTRACTFORMBUILDER(n,v)                         ISNIL(n)? v : (QAbstractFormBuilder *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERACTIONEDITORINTERFACE(n,v)               ISNIL(n)? v : (QDesignerActionEditorInterface *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERCONTAINEREXTENSION(n,v)                  ISNIL(n)? v : (QDesignerContainerExtension *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERCUSTOMWIDGETCOLLECTIONINTERFACE(n,v)     ISNIL(n)? v : (QDesignerCustomWidgetCollectionInterface *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERCUSTOMWIDGETINTERFACE(n,v)               ISNIL(n)? v : (QDesignerCustomWidgetInterface *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERDYNAMICPROPERTYSHEETEXTENSION(n,v)       ISNIL(n)? v : (QDesignerDynamicPropertySheetExtension *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERFORMEDITORINTERFACE(n,v)                 ISNIL(n)? v : (QDesignerFormEditorInterface *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERFORMWINDOWCURSORINTERFACE(n,v)           ISNIL(n)? v : (QDesignerFormWindowCursorInterface *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERFORMWINDOWINTERFACE(n,v)                 ISNIL(n)? v : (QDesignerFormWindowInterface *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERFORMWINDOWMANAGERINTERFACE(n,v)          ISNIL(n)? v : (QDesignerFormWindowManagerInterface *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERMEMBERSHEETEXTENSION(n,v)                ISNIL(n)? v : (QDesignerMemberSheetExtension *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNEROBJECTINSPECTORINTERFACE(n,v)            ISNIL(n)? v : (QDesignerObjectInspectorInterface *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERPROPERTYEDITORINTERFACE(n,v)             ISNIL(n)? v : (QDesignerPropertyEditorInterface *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERPROPERTYSHEETEXTENSION(n,v)              ISNIL(n)? v : (QDesignerPropertySheetExtension *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERTASKMENUEXTENSION(n,v)                   ISNIL(n)? v : (QDesignerTaskMenuExtension *) _qt4xhb_itemGetPtr(n)
#define OPQDESIGNERWIDGETBOXINTERFACE(n,v)                  ISNIL(n)? v : (QDesignerWidgetBoxInterface *) _qt4xhb_itemGetPtr(n)
#define OPQEXTENSIONFACTORY(n,v)                            ISNIL(n)? v : (QExtensionFactory *) _qt4xhb_itemGetPtr(n)
#define OPQEXTENSIONMANAGER(n,v)                            ISNIL(n)? v : (QExtensionManager *) _qt4xhb_itemGetPtr(n)
#define OPQFORMBUILDER(n,v)                                 ISNIL(n)? v : (QFormBuilder *) _qt4xhb_itemGetPtr(n)

#endif /* QT4XHB_MACROS_QTDESIGNER_H */
