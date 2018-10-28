/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QREGION
#endif

CLASS QDirectPainter INHERIT QObject

   METHOD new
   METHOD delete
   METHOD allocatedRegion
   METHOD endPainting
   METHOD flush
   METHOD geometry
   METHOD lower
   METHOD raise
   METHOD regionChanged
   METHOD requestedRegion
   METHOD setGeometry
   METHOD setRegion
   METHOD startPainting
   METHOD linestep
   METHOD lock
   METHOD screenDepth
   METHOD screenHeight
   METHOD screenWidth
   METHOD unlock

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDirectPainter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDirectPainter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDirectPainter ( QObject * parent = 0, SurfaceFlag flag = NonReserved )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_NEW )
{
  if( ISBETWEEN(0,2) && (ISQOBJECT(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QDirectPainter * o = new QDirectPainter ( OPQOBJECT(1,0), ISNIL(2)? (QDirectPainter::SurfaceFlag) QDirectPainter::NonReserved : (QDirectPainter::SurfaceFlag) hb_parni(2) );
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIRECTPAINTER_DELETE )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QRegion allocatedRegion () const
*/
HB_FUNC_STATIC( QDIRECTPAINTER_ALLOCATEDREGION )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegion * ptr = new QRegion( obj->allocatedRegion () );
      _qt4xhb_createReturnClass ( ptr, "QREGION", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void endPainting ()
*/
void QDirectPainter_endPainting1 ()
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->endPainting ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void endPainting ( const QRegion & region )
*/
void QDirectPainter_endPainting2 ()
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->endPainting ( *PQREGION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void endPainting ()
//[2]void endPainting ( const QRegion & region )

HB_FUNC_STATIC( QDIRECTPAINTER_ENDPAINTING )
{
  if( ISNUMPAR(0) )
  {
    QDirectPainter_endPainting1();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QDirectPainter_endPainting2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void flush ( const QRegion & region )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_FLUSH )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGION(1) )
    {
#endif
      obj->flush ( *PQREGION(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect geometry () const
*/
HB_FUNC_STATIC( QDIRECTPAINTER_GEOMETRY )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->geometry () );
      _qt4xhb_createReturnClass ( ptr, "QRECT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void lower ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_LOWER )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->lower ();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void raise ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_RAISE )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->raise ();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void regionChanged ( const QRegion & newRegion )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_REGIONCHANGED )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGION(1) )
    {
#endif
      obj->regionChanged ( *PQREGION(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRegion requestedRegion () const
*/
HB_FUNC_STATIC( QDIRECTPAINTER_REQUESTEDREGION )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegion * ptr = new QRegion( obj->requestedRegion () );
      _qt4xhb_createReturnClass ( ptr, "QREGION", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setGeometry ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_SETGEOMETRY )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
#endif
      obj->setGeometry ( *PQRECT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRegion ( const QRegion & region )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_SETREGION )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGION(1) )
    {
#endif
      obj->setRegion ( *PQREGION(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void startPainting ( bool lockDisplay = true )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_STARTPAINTING )
{
  QDirectPainter * obj = (QDirectPainter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      obj->startPainting ( OPBOOL(1,true) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
uchar * frameBuffer ()
*/

/*
static int linestep ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_LINESTEP )
{
    if( ISNUMPAR(0) )
  {
      RINT( QDirectPainter::linestep () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void lock ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_LOCK )
{
    if( ISNUMPAR(0) )
  {
      QDirectPainter::lock ();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static int screenDepth ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_SCREENDEPTH )
{
    if( ISNUMPAR(0) )
  {
      RINT( QDirectPainter::screenDepth () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static int screenHeight ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_SCREENHEIGHT )
{
    if( ISNUMPAR(0) )
  {
      RINT( QDirectPainter::screenHeight () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static int screenWidth ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_SCREENWIDTH )
{
    if( ISNUMPAR(0) )
  {
      RINT( QDirectPainter::screenWidth () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void unlock ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_UNLOCK )
{
    if( ISNUMPAR(0) )
  {
      QDirectPainter::unlock ();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
