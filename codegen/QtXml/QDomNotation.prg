$header

#include "hbclass.ch"


CLASS QDomNotation INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD nodeType
   METHOD publicId
   METHOD systemId
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomNotation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomNotation ()
*/
HB_FUNC_STATIC( QDOMNOTATION_NEW1 )
{
  QDomNotation * o = new QDomNotation ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomNotation ( const QDomNotation & x )
*/
HB_FUNC_STATIC( QDOMNOTATION_NEW2 )
{
  QDomNotation * o = new QDomNotation ( *PQDOMNOTATION(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomNotation ()
//[2]QDomNotation ( const QDomNotation & x )

HB_FUNC_STATIC( QDOMNOTATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMNOTATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMNOTATION(1) )
  {
    HB_FUNC_EXEC( QDOMNOTATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMNOTATION_NODETYPE )
{
  QDomNotation * obj = (QDomNotation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType () );
  }
}


/*
QString publicId () const
*/
HB_FUNC_STATIC( QDOMNOTATION_PUBLICID )
{
  QDomNotation * obj = (QDomNotation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->publicId () );
  }
}


/*
QString systemId () const
*/
HB_FUNC_STATIC( QDOMNOTATION_SYSTEMID )
{
  QDomNotation * obj = (QDomNotation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->systemId () );
  }
}




#pragma ENDDUMP
