/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QParallelAnimationGroup INHERIT QAnimationGroup

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD duration
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QParallelAnimationGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QParallelAnimationGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QParallelAnimationGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPARALLELANIMATIONGROUP_NEW )
{
  QParallelAnimationGroup * o = new QParallelAnimationGroup ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QPARALLELANIMATIONGROUP_DELETE )
{
  QParallelAnimationGroup * obj = (QParallelAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int duration () const
*/
HB_FUNC_STATIC( QPARALLELANIMATIONGROUP_DURATION )
{
  QParallelAnimationGroup * obj = (QParallelAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->duration () );
  }
}

#pragma ENDDUMP
