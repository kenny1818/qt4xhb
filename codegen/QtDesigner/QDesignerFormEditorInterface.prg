%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDESIGNERACTIONEDITORINTERFACE
REQUEST QEXTENSIONMANAGER
REQUEST QDESIGNERFORMWINDOWMANAGERINTERFACE
REQUEST QDESIGNEROBJECTINSPECTORINTERFACE
REQUEST QDESIGNERPROPERTYEDITORINTERFACE
REQUEST QWIDGET
REQUEST QDESIGNERWIDGETBOXINTERFACE
#endif

CLASS QDesignerFormEditorInterface INHERIT QObject

   METHOD new
   METHOD delete
   METHOD actionEditor
   METHOD extensionManager
   METHOD formWindowManager
   METHOD objectInspector
   METHOD propertyEditor
   METHOD setActionEditor
   METHOD setObjectInspector
   METHOD setPropertyEditor
   METHOD setWidgetBox
   METHOD topLevel
   METHOD widgetBox

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerFormEditorInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDesignerActionEditorInterface>
#include <QExtensionManager>
#include <QDesignerFormWindowManagerInterface>
#include <QDesignerObjectInspectorInterface>
#include <QDesignerPropertyEditorInterface>
#include <QDesignerWidgetBoxInterface>

$prototype=QDesignerFormEditorInterface ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QDesignerActionEditorInterface * actionEditor () const
$method=|QDesignerActionEditorInterface *|actionEditor|

$prototype=QExtensionManager * extensionManager () const
$method=|QExtensionManager *|extensionManager|

$prototype=QDesignerFormWindowManagerInterface * formWindowManager () const
$method=|QDesignerFormWindowManagerInterface *|formWindowManager|

$prototype=QDesignerObjectInspectorInterface * objectInspector () const
$method=|QDesignerObjectInspectorInterface *|objectInspector|

$prototype=QDesignerPropertyEditorInterface * propertyEditor () const
$method=|QDesignerPropertyEditorInterface *|propertyEditor|

$prototype=void setActionEditor ( QDesignerActionEditorInterface * actionEditor )
$method=|void|setActionEditor|QDesignerActionEditorInterface *

$prototype=void setObjectInspector ( QDesignerObjectInspectorInterface * objectInspector )
$method=|void|setObjectInspector|QDesignerObjectInspectorInterface *

$prototype=void setPropertyEditor ( QDesignerPropertyEditorInterface * propertyEditor )
$method=|void|setPropertyEditor|QDesignerPropertyEditorInterface *

$prototype=void setWidgetBox ( QDesignerWidgetBoxInterface * widgetBox )
$method=|void|setWidgetBox|QDesignerWidgetBoxInterface *

$prototype=QWidget * topLevel () const
$method=|QWidget *|topLevel|

$prototype=QDesignerWidgetBoxInterface * widgetBox () const
$method=|QDesignerWidgetBoxInterface *|widgetBox|

#pragma ENDDUMP
