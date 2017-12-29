/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QDomEntityReference INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomEntityReference
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDomEntityReference>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomEntityReference ()
*/
void QDomEntityReference_new1 ()
{
  QDomEntityReference * o = new QDomEntityReference ();
  _qt4xhb_storePointerAndFlag( o, true );
}

/*
QDomEntityReference ( const QDomEntityReference & x )
*/
void QDomEntityReference_new2 ()
{
  QDomEntityReference * o = new QDomEntityReference ( *PQDOMENTITYREFERENCE(1) );
  _qt4xhb_storePointerAndFlag( o, true );
}

//[1]QDomEntityReference ()
//[2]QDomEntityReference ( const QDomEntityReference & x )

HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomEntityReference_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMENTITYREFERENCE(1) )
  {
    QDomEntityReference_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMENTITYREFERENCE_NODETYPE )
{
  QDomEntityReference * obj = (QDomEntityReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->nodeType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
