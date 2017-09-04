$header

#include "hbclass.ch"


CLASS QSqlIndex INHERIT QSqlRecord

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD append1
   METHOD append2
   METHOD append
   METHOD cursorName
   METHOD isDescending
   METHOD name
   METHOD setCursorName
   METHOD setDescending
   METHOD setName
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlIndex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlIndex>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSqlIndex ( const QString & cursorname = QString(), const QString & name = QString() )
*/
HB_FUNC_STATIC( QSQLINDEX_NEW1 )
{
  QSqlIndex * o = new QSqlIndex ( OPQSTRING(1,QString()), OPQSTRING(2,QString()) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSqlIndex ( const QSqlIndex & other )
*/
HB_FUNC_STATIC( QSQLINDEX_NEW2 )
{
  QSqlIndex * o = new QSqlIndex ( *PQSQLINDEX(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QSqlIndex ( const QString & cursorname = QString(), const QString & name = QString() )
//[2]QSqlIndex ( const QSqlIndex & other )

HB_FUNC_STATIC( QSQLINDEX_NEW )
{
  if( ISBETWEEN(0,2) && (ISCHAR(1)||ISNIL(1)) && (ISCHAR(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSQLINDEX_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSQLINDEX(1) )
  {
    HB_FUNC_EXEC( QSQLINDEX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLINDEX_DELETE )
{
  QSqlIndex * obj = (QSqlIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void append ( const QSqlField & field )
*/
HB_FUNC_STATIC( QSQLINDEX_APPEND1 )
{
  QSqlIndex * obj = (QSqlIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->append ( *PQSQLFIELD(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void append ( const QSqlField & field, bool desc )
*/
HB_FUNC_STATIC( QSQLINDEX_APPEND2 )
{
  QSqlIndex * obj = (QSqlIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->append ( *PQSQLFIELD(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void append ( const QSqlField & field )
//[2]void append ( const QSqlField & field, bool desc )

HB_FUNC_STATIC( QSQLINDEX_APPEND )
{
  if( ISNUMPAR(1) && ISQSQLFIELD(1) )
  {
    HB_FUNC_EXEC( QSQLINDEX_APPEND1 );
  }
  else if( ISNUMPAR(2) && ISQSQLFIELD(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QSQLINDEX_APPEND2 );
  }
}

/*
QString cursorName () const
*/
HB_FUNC_STATIC( QSQLINDEX_CURSORNAME )
{
  QSqlIndex * obj = (QSqlIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->cursorName () );
  }
}


/*
bool isDescending ( int i ) const
*/
HB_FUNC_STATIC( QSQLINDEX_ISDESCENDING )
{
  QSqlIndex * obj = (QSqlIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDescending ( PINT(1) ) );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QSQLINDEX_NAME )
{
  QSqlIndex * obj = (QSqlIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
void setCursorName ( const QString & cursorName )
*/
HB_FUNC_STATIC( QSQLINDEX_SETCURSORNAME )
{
  QSqlIndex * obj = (QSqlIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCursorName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDescending ( int i, bool desc )
*/
HB_FUNC_STATIC( QSQLINDEX_SETDESCENDING )
{
  QSqlIndex * obj = (QSqlIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDescending ( PINT(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setName ( const QString & name )
*/
HB_FUNC_STATIC( QSQLINDEX_SETNAME )
{
  QSqlIndex * obj = (QSqlIndex *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP