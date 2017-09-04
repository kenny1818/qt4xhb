$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOMPLETER
REQUEST QMENU
REQUEST QSIZE
REQUEST QMARGINS
REQUEST QVALIDATOR
REQUEST QVARIANT
#endif

CLASS QLineEdit INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD alignment
   METHOD backspace
   METHOD completer
   METHOD createStandardContextMenu
   METHOD cursorBackward
   METHOD cursorForward
   METHOD cursorPosition
   METHOD cursorPositionAt
   METHOD cursorWordBackward
   METHOD cursorWordForward
   METHOD del
   METHOD deselect
   METHOD displayText
   METHOD dragEnabled
   METHOD echoMode
   METHOD end
   METHOD getTextMargins
   METHOD hasAcceptableInput
   METHOD hasFrame
   METHOD hasSelectedText
   METHOD home
   METHOD inputMask
   METHOD insert
   METHOD isModified
   METHOD isReadOnly
   METHOD isRedoAvailable
   METHOD isUndoAvailable
   METHOD maxLength
   METHOD placeholderText
   METHOD minimumSizeHint
   METHOD selectedText
   METHOD selectionStart
   METHOD setAlignment
   METHOD setCompleter
   METHOD setCursorPosition
   METHOD setDragEnabled
   METHOD setEchoMode
   METHOD setFrame
   METHOD setInputMask
   METHOD setMaxLength
   METHOD setModified
   METHOD setPlaceholderText
   METHOD setReadOnly
   METHOD setSelection
   METHOD setTextMargins1
   METHOD setTextMargins2
   METHOD setTextMargins
   METHOD setValidator
   METHOD sizeHint
   METHOD text
   METHOD textMargins
   METHOD validator
   METHOD event
   METHOD inputMethodQuery
   METHOD copy
   METHOD cut
   METHOD paste
   METHOD redo
   METHOD selectAll
   METHOD setText
   METHOD undo

   METHOD onCursorPositionChanged
   METHOD onEditingFinished
   METHOD onReturnPressed
   METHOD onSelectionChanged
   METHOD onTextChanged
   METHOD onTextEdited

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLineEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QLineEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QLineEdit ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLINEEDIT_NEW1 )
{
  QLineEdit * o = new QLineEdit ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QLineEdit ( const QString & contents, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLINEEDIT_NEW2 )
{
  QLineEdit * o = new QLineEdit ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QLineEdit ( QWidget * parent = 0 )
//[2]QLineEdit ( const QString & contents, QWidget * parent = 0 )

HB_FUNC_STATIC( QLINEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QLINEEDIT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLINEEDIT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLINEEDIT_DELETE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QLINEEDIT_ALIGNMENT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->alignment () );
  }
}

/*
void backspace ()
*/
HB_FUNC_STATIC( QLINEEDIT_BACKSPACE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->backspace ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QCompleter * completer () const
*/
HB_FUNC_STATIC( QLINEEDIT_COMPLETER )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QCompleter * ptr = obj->completer ();
    _qt4xhb_createReturnClass ( ptr, "QCOMPLETER" );
  }
}

/*
QMenu * createStandardContextMenu ()
*/
HB_FUNC_STATIC( QLINEEDIT_CREATESTANDARDCONTEXTMENU )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->createStandardContextMenu ();
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
void cursorBackward ( bool mark, int steps = 1 )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORBACKWARD )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cursorBackward ( PBOOL(1), OPINT(2,1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cursorForward ( bool mark, int steps = 1 )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORFORWARD )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cursorForward ( PBOOL(1), OPINT(2,1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int cursorPosition () const
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORPOSITION )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->cursorPosition () );
  }
}

/*
int cursorPositionAt ( const QPoint & pos )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORPOSITIONAT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->cursorPositionAt ( *PQPOINT(1) ) );
  }
}

/*
void cursorWordBackward ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORWORDBACKWARD )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cursorWordBackward ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cursorWordForward ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_CURSORWORDFORWARD )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cursorWordForward ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void del ()
*/
HB_FUNC_STATIC( QLINEEDIT_DEL )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->del ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void deselect ()
*/
HB_FUNC_STATIC( QLINEEDIT_DESELECT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->deselect ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString displayText () const
*/
HB_FUNC_STATIC( QLINEEDIT_DISPLAYTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->displayText () );
  }
}

/*
bool dragEnabled () const
*/
HB_FUNC_STATIC( QLINEEDIT_DRAGENABLED )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->dragEnabled () );
  }
}

/*
EchoMode echoMode () const
*/
HB_FUNC_STATIC( QLINEEDIT_ECHOMODE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->echoMode () );
  }
}

/*
void end ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_END )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->end ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void getTextMargins ( int * left, int * top, int * right, int * bottom ) const
*/
HB_FUNC_STATIC( QLINEEDIT_GETTEXTMARGINS )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    int par4;
    obj->getTextMargins ( &par1, &par2, &par3, &par4 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasAcceptableInput () const
*/
HB_FUNC_STATIC( QLINEEDIT_HASACCEPTABLEINPUT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAcceptableInput () );
  }
}

/*
bool hasFrame () const
*/
HB_FUNC_STATIC( QLINEEDIT_HASFRAME )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasFrame () );
  }
}

/*
bool hasSelectedText () const
*/
HB_FUNC_STATIC( QLINEEDIT_HASSELECTEDTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasSelectedText () );
  }
}

/*
void home ( bool mark )
*/
HB_FUNC_STATIC( QLINEEDIT_HOME )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->home ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString inputMask () const
*/
HB_FUNC_STATIC( QLINEEDIT_INPUTMASK )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->inputMask () );
  }
}

/*
void insert ( const QString & newText )
*/
HB_FUNC_STATIC( QLINEEDIT_INSERT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insert ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isModified () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISMODIFIED )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isModified () );
  }
}

/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISREADONLY )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isReadOnly () );
  }
}

/*
bool isRedoAvailable () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISREDOAVAILABLE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRedoAvailable () );
  }
}

/*
bool isUndoAvailable () const
*/
HB_FUNC_STATIC( QLINEEDIT_ISUNDOAVAILABLE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isUndoAvailable () );
  }
}

/*
int maxLength () const
*/
HB_FUNC_STATIC( QLINEEDIT_MAXLENGTH )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->maxLength () );
  }
}

/*
QString placeholderText () const
*/
HB_FUNC_STATIC( QLINEEDIT_PLACEHOLDERTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->placeholderText () );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QLINEEDIT_MINIMUMSIZEHINT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QString selectedText () const
*/
HB_FUNC_STATIC( QLINEEDIT_SELECTEDTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->selectedText () );
  }
}

/*
int selectionStart () const
*/
HB_FUNC_STATIC( QLINEEDIT_SELECTIONSTART )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->selectionStart () );
  }
}

/*
void setAlignment ( Qt::Alignment flag )
*/
HB_FUNC_STATIC( QLINEEDIT_SETALIGNMENT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment ( (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompleter ( QCompleter * c )
*/
HB_FUNC_STATIC( QLINEEDIT_SETCOMPLETER )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QCompleter * par1 = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCompleter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCursorPosition ( int )
*/
HB_FUNC_STATIC( QLINEEDIT_SETCURSORPOSITION )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCursorPosition ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDragEnabled ( bool b )
*/
HB_FUNC_STATIC( QLINEEDIT_SETDRAGENABLED )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDragEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEchoMode ( EchoMode )
*/
HB_FUNC_STATIC( QLINEEDIT_SETECHOMODE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEchoMode ( (QLineEdit::EchoMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFrame ( bool )
*/
HB_FUNC_STATIC( QLINEEDIT_SETFRAME )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFrame ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInputMask ( const QString & inputMask )
*/
HB_FUNC_STATIC( QLINEEDIT_SETINPUTMASK )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setInputMask ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaxLength ( int )
*/
HB_FUNC_STATIC( QLINEEDIT_SETMAXLENGTH )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaxLength ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModified ( bool )
*/
HB_FUNC_STATIC( QLINEEDIT_SETMODIFIED )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setModified ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPlaceholderText ( const QString & )
*/
HB_FUNC_STATIC( QLINEEDIT_SETPLACEHOLDERTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPlaceholderText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setReadOnly ( bool )
*/
HB_FUNC_STATIC( QLINEEDIT_SETREADONLY )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setReadOnly ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelection ( int start, int length )
*/
HB_FUNC_STATIC( QLINEEDIT_SETSELECTION )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSelection ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextMargins ( int left, int top, int right, int bottom )
*/
HB_FUNC_STATIC( QLINEEDIT_SETTEXTMARGINS1 )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextMargins ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextMargins ( const QMargins & margins )
*/
HB_FUNC_STATIC( QLINEEDIT_SETTEXTMARGINS2 )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTextMargins ( *PQMARGINS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setTextMargins ( int left, int top, int right, int bottom )
//[2]void setTextMargins ( const QMargins & margins )

HB_FUNC_STATIC( QLINEEDIT_SETTEXTMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QLINEEDIT_SETTEXTMARGINS1 );
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    HB_FUNC_EXEC( QLINEEDIT_SETTEXTMARGINS2 );
  }
}

/*
void setValidator ( const QValidator * v )
*/
HB_FUNC_STATIC( QLINEEDIT_SETVALIDATOR )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QValidator * par1 = (const QValidator *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setValidator ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QLINEEDIT_SIZEHINT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QString text () const
*/
HB_FUNC_STATIC( QLINEEDIT_TEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}

/*
QMargins textMargins () const
*/
HB_FUNC_STATIC( QLINEEDIT_TEXTMARGINS )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMargins * ptr = new QMargins( obj->textMargins () );
    _qt4xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}

/*
const QValidator * validator () const
*/
HB_FUNC_STATIC( QLINEEDIT_VALIDATOR )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QValidator * ptr = obj->validator ();
    _qt4xhb_createReturnClass ( ptr, "QVALIDATOR" );
  }
}

/*
virtual bool event ( QEvent * e )
*/
HB_FUNC_STATIC( QLINEEDIT_EVENT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->event ( PQEVENT(1) ) );
  }
}

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
*/
HB_FUNC_STATIC( QLINEEDIT_INPUTMETHODQUERY )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void copy () const
*/
HB_FUNC_STATIC( QLINEEDIT_COPY )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->copy ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cut ()
*/
HB_FUNC_STATIC( QLINEEDIT_CUT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cut ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void paste ()
*/
HB_FUNC_STATIC( QLINEEDIT_PASTE )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->paste ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void redo ()
*/
HB_FUNC_STATIC( QLINEEDIT_REDO )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->redo ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void selectAll ()
*/
HB_FUNC_STATIC( QLINEEDIT_SELECTALL )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectAll ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & )
*/
HB_FUNC_STATIC( QLINEEDIT_SETTEXT )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void undo ()
*/
HB_FUNC_STATIC( QLINEEDIT_UNDO )
{
  QLineEdit * obj = (QLineEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->undo ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP