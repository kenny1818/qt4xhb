$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMENU
REQUEST QSIZE
#endif

CLASS QMenuBar INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD activeAction
   METHOD addAction1
   METHOD addAction2
   METHOD addAction3
   METHOD addAction
   METHOD addMenu1
   METHOD addMenu2
   METHOD addMenu3
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isDefaultUp
   METHOD isNativeMenuBar
   METHOD setActiveAction
   METHOD setDefaultUp
   METHOD setNativeMenuBar
   METHOD heightForWidth
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setVisible

   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMenuBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMenuBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMenuBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMENUBAR_NEW )
{
  QMenuBar * o = new QMenuBar ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QMENUBAR_DELETE )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QAction * activeAction () const
*/
HB_FUNC_STATIC( QMENUBAR_ACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->activeAction ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text )
*/
HB_FUNC_STATIC( QMENUBAR_ADDACTION1 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QMENUBAR_ADDACTION2 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par2 = (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->addAction ( PQSTRING(1), par2, (const char *) hb_parc(3) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void addAction ( QAction * action )
*/
HB_FUNC_STATIC( QMENUBAR_ADDACTION3 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QString & text, const QObject * receiver, const char * member )
//[3]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENUBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDACTION1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDACTION2 );
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDACTION3 );
  }
}

/*
QAction * addMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QMENUBAR_ADDMENU1 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addMenu ( PQMENU(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QMenu * addMenu ( const QString & title )
*/
HB_FUNC_STATIC( QMENUBAR_ADDMENU2 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->addMenu ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
QMenu * addMenu ( const QIcon & icon, const QString & title )
*/
HB_FUNC_STATIC( QMENUBAR_ADDMENU3 )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    QMenu * ptr = obj->addMenu ( par1, PQSTRING(2) );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}

//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENUBAR_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENUBAR_ADDMENU3 );
  }
}

/*
QAction * addSeparator ()
*/
HB_FUNC_STATIC( QMENUBAR_ADDSEPARATOR )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addSeparator ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QMENUBAR_CLEAR )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTMENU )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->insertMenu ( PQACTION(1), PQMENU(2) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC_STATIC( QMENUBAR_INSERTSEPARATOR )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->insertSeparator ( PQACTION(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
bool isDefaultUp () const
*/
HB_FUNC_STATIC( QMENUBAR_ISDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDefaultUp () );
  }
}

/*
bool isNativeMenuBar () const
*/
HB_FUNC_STATIC( QMENUBAR_ISNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNativeMenuBar () );
  }
}

/*
void setActiveAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENUBAR_SETACTIVEACTION )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setActiveAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultUp ( bool )
*/
HB_FUNC_STATIC( QMENUBAR_SETDEFAULTUP )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDefaultUp ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNativeMenuBar ( bool nativeMenuBar )
*/
HB_FUNC_STATIC( QMENUBAR_SETNATIVEMENUBAR )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNativeMenuBar ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int heightForWidth ( int ) const
*/
HB_FUNC_STATIC( QMENUBAR_HEIGHTFORWIDTH )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->heightForWidth ( PINT(1) ) );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QMENUBAR_MINIMUMSIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QMENUBAR_SIZEHINT )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QMENUBAR_SETVISIBLE )
{
  QMenuBar * obj = (QMenuBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
