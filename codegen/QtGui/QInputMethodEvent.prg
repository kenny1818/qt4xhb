$header

#include "hbclass.ch"

CLASS QInputMethodEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD commitString
   METHOD preeditString
   METHOD replacementLength
   METHOD replacementStart
   METHOD setCommitString

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QInputMethodEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QInputMethodEvent ()
$internalConstructor=|new1|

$prototype=QInputMethodEvent ( const QString & preeditText, const QList<Attribute> & attributes )
%% TODO: implementar ?

$prototype=QInputMethodEvent ( const QInputMethodEvent & other )
$internalConstructor=|new2|const QInputMethodEvent &

//[1]QInputMethodEvent ()
//[2]QInputMethodEvent ( const QString & preeditText, const QList<Attribute> & attributes )
//[3]QInputMethodEvent ( const QInputMethodEvent & other )

HB_FUNC_STATIC( QINPUTMETHODEVENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QInputMethodEvent_new1();
  }
  else if( ISNUMPAR(1) && ISQINPUTMETHODEVENT(1) )
  {
    QInputMethodEvent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=const QString & commitString () const
$method=|const QString &|commitString|

$prototype=const QString & preeditString () const
$method=|const QString &|preeditString|

$prototype=int replacementLength () const
$method=|int|replacementLength|

$prototype=int replacementStart () const
$method=|int|replacementStart|

$prototype=void setCommitString ( const QString & commitString, int replaceFrom = 0, int replaceLength = 0 )
$method=|void|setCommitString|const QString &,int=0,int=0

#pragma ENDDUMP
