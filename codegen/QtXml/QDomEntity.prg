$header

#include "hbclass.ch"


CLASS QDomEntity INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD nodeType
   METHOD notationName
   METHOD publicId
   METHOD systemId
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomEntity>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomEntity ()
*/
HB_FUNC_STATIC( QDOMENTITY_NEW1 )
{
  QDomEntity * o = new QDomEntity ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomEntity ( const QDomEntity & x )
*/
HB_FUNC_STATIC( QDOMENTITY_NEW2 )
{
  QDomEntity * o = new QDomEntity ( *PQDOMENTITY(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomEntity ()
//[2]QDomEntity ( const QDomEntity & x )

HB_FUNC_STATIC( QDOMENTITY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMENTITY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMENTITY(1) )
  {
    HB_FUNC_EXEC( QDOMENTITY_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMENTITY_NODETYPE )
{
  QDomEntity * obj = (QDomEntity *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType () );
  }
}


/*
QString notationName () const
*/
HB_FUNC_STATIC( QDOMENTITY_NOTATIONNAME )
{
  QDomEntity * obj = (QDomEntity *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->notationName () );
  }
}


/*
QString publicId () const
*/
HB_FUNC_STATIC( QDOMENTITY_PUBLICID )
{
  QDomEntity * obj = (QDomEntity *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->publicId () );
  }
}


/*
QString systemId () const
*/
HB_FUNC_STATIC( QDOMENTITY_SYSTEMID )
{
  QDomEntity * obj = (QDomEntity *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->systemId () );
  }
}




#pragma ENDDUMP
