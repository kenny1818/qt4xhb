$header

#include "hbclass.ch"

CLASS QDesignerWidgetBoxInterface INHERIT QWidget

   METHOD delete
   METHOD fileName
   METHOD load
   METHOD save
   METHOD setFileName

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerWidgetBoxInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QString fileName () const = 0
$virtualMethod=|QString|fileName|

$prototype=virtual bool load () = 0
$virtualMethod=|bool|load|

$prototype=virtual bool save () = 0
$virtualMethod=|bool|save|

$prototype=virtual void setFileName ( const QString & fileName ) = 0
$virtualMethod=|void|setFileName|const QString &

#pragma ENDDUMP
