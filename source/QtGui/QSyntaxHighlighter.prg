/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENT
#endif

CLASS QSyntaxHighlighter INHERIT QObject

   METHOD delete
   METHOD document
   METHOD setDocument
   METHOD rehighlight
   METHOD rehighlightBlock

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSyntaxHighlighter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QSyntaxHighlighter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtGui/QTextDocument>

HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_DELETE )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
QTextDocument * document () const
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_DOCUMENT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextDocument * ptr = obj->document();
      Qt4xHb::createReturnQObjectClass( ptr, "QTEXTDOCUMENT" );
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
void setDocument ( QTextDocument * doc )
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_SETDOCUMENT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
    {
#endif
      obj->setDocument( PQTEXTDOCUMENT(1) );
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
void rehighlight ()
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_REHIGHLIGHT )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->rehighlight();
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
void rehighlightBlock ( const QTextBlock & block )
*/
HB_FUNC_STATIC( QSYNTAXHIGHLIGHTER_REHIGHLIGHTBLOCK )
{
  QSyntaxHighlighter * obj = (QSyntaxHighlighter *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
    {
#endif
      obj->rehighlightBlock( *PQTEXTBLOCK(1) );
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

#pragma ENDDUMP
