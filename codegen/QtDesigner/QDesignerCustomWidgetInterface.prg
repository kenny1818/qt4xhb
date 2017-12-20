$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QICON
#endif

CLASS QDesignerCustomWidgetInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD codeTemplate
   METHOD createWidget
   METHOD domXml
   METHOD group
   METHOD icon
   METHOD includeFile
   METHOD initialize
   METHOD isContainer
   METHOD isInitialized
   METHOD name
   METHOD toolTip
   METHOD whatsThis

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerCustomWidgetInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

prototype=virtual QString codeTemplate () const
$virtualMethod=|QString|codeTemplate|

prototype=virtual QWidget * createWidget ( QWidget * parent ) = 0
$virtualMethod=|QWidget *|createWidget|QWidget *

prototype=virtual QString domXml () const
$virtualMethod=|QString|domXml|

prototype=virtual QString group () const = 0
$virtualMethod=|QString|group|

prototype=virtual QIcon icon () const = 0
$virtualMethod=|QIcon|icon|

prototype=virtual QString includeFile () const = 0
$virtualMethod=|QString|includeFile|

prototype=virtual void initialize ( QDesignerFormEditorInterface * formEditor )
$virtualMethod=|void|initialize|QDesignerFormEditorInterface *

prototype=virtual bool isContainer () const = 0
$virtualMethod=|bool|isContainer|

prototype=virtual bool isInitialized () const
$virtualMethod=|bool|isInitialized|

prototype=virtual QString name () const = 0
$virtualMethod=|QString|name|

prototype=virtual QString toolTip () const = 0
$virtualMethod=|QString|toolTip|

prototype=virtual QString whatsThis () const = 0
$virtualMethod=|QString|whatsThis|

$extraMethods

#pragma ENDDUMP
