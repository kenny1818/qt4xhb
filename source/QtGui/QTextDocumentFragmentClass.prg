/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTDOCUMENTFRAGMENT

CLASS QTextDocumentFragment

   DATA pointer
   DATA class_id INIT Class_Id_QTextDocumentFragment
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD toHtml1
   METHOD toHtml2
   METHOD toHtml
   METHOD toPlainText
   METHOD fromHtml1
   METHOD fromHtml2
   METHOD fromHtml
   METHOD fromPlainText
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTextDocumentFragment
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextDocumentFragment
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextDocumentFragment
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextDocumentFragment
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextDocumentFragment
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextDocumentFragment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextDocumentFragment>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTextDocumentFragment ()
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW1 )
{
  QTextDocumentFragment * o = NULL;
  o = new QTextDocumentFragment (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextDocumentFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QTextDocumentFragment ( const QTextDocument * document )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW2 )
{
  QTextDocumentFragment * o = NULL;
  const QTextDocument * par1 = (const QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextDocumentFragment ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextDocumentFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QTextDocumentFragment ( const QTextCursor & cursor )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW3 )
{
  QTextDocumentFragment * o = NULL;
  QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextDocumentFragment ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextDocumentFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QTextDocumentFragment ( const QTextDocumentFragment & other )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW4 )
{
  QTextDocumentFragment * o = NULL;
  QTextDocumentFragment * par1 = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTextDocumentFragment ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextDocumentFragment *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QTextDocumentFragment ()
//[2]QTextDocumentFragment ( const QTextDocument * document )
//[3]QTextDocumentFragment ( const QTextCursor & cursor )
//[4]QTextDocumentFragment ( const QTextDocumentFragment & other )

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_DELETE )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isEmpty () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_ISEMPTY )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
QString toHtml ( const QByteArray & encoding ) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML1 )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString str1 = obj->toHtml ( *par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toHtml () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML2 )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toHtml (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


//[1]QString toHtml ( const QByteArray & encoding ) const
//[2]QString toHtml () const

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_TOHTML1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_TOHTML2 );
  }
}

/*
QString toPlainText () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOPLAINTEXT )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toPlainText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}



/*
QTextDocumentFragment fromHtml ( const QString & text )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML1 )
{
  QString par1 = hb_parc(1);
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}


/*
QTextDocumentFragment fromHtml ( const QString & text, const QTextDocument * resourceProvider )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML2 )
{
  QString par1 = hb_parc(1);
  const QTextDocument * par2 = (const QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}


//[1]QTextDocumentFragment fromHtml ( const QString & text )
//[2]QTextDocumentFragment fromHtml ( const QString & text, const QTextDocument * resourceProvider )

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_FROMHTML1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQTEXTDOCUMENT(2) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_FROMHTML2 );
  }
}

/*
QTextDocumentFragment fromPlainText ( const QString & plainText )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMPLAINTEXT )
{
  QString par1 = hb_parc(1);
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromPlainText ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}




#pragma ENDDUMP
