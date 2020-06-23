%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPaintDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPicture ( int formatVersion = -1 )
$internalConstructor=|new1|int=-1

$prototype=QPicture ( const QPicture & pic )
$internalConstructor=|new2|const QPicture &

/*
[1]QPicture ( int formatVersion = -1 )
[2]QPicture ( const QPicture & pic )
*/

HB_FUNC_STATIC( QPICTURE_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QPicture_new1();
  }
  else if( ISNUMPAR(1) && ISQPICTURE(1) )
  {
    QPicture_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QRect boundingRect() const

$prototypeV2=const char * data() const

$prototypeV2=bool isNull() const

$prototype=bool load ( const QString & fileName, const char * format = 0 )
$internalMethod=|bool|load,load1|const QString &,const char *=0

$prototype=bool load ( QIODevice * dev, const char * format = 0 )
$internalMethod=|bool|load,load2|QIODevice *,const char *=0

/*
[1]bool load ( const QString & fileName, const char * format = 0 )
[2]bool load ( QIODevice * dev, const char * format = 0 )
*/

HB_FUNC_STATIC( QPICTURE_LOAD )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QPicture_load1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QPicture_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=load

$prototypeV2=bool play( QPainter * painter )

$prototype=bool save ( const QString & fileName, const char * format = 0 )
$internalMethod=|bool|save,save1|const QString &,const char *=0

$prototype=bool save ( QIODevice * dev, const char * format = 0 )
$internalMethod=|bool|save,save2|QIODevice *,const char *=0

/*
[1]bool save ( const QString & fileName, const char * format = 0 )
[2]bool save ( QIODevice * dev, const char * format = 0 )
*/

HB_FUNC_STATIC( QPICTURE_SAVE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QPicture_save1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QPicture_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=save

$prototypeV2=void setBoundingRect( const QRect & r )

$prototypeV2=virtual void setData( const char * data, uint size )

$prototypeV2=uint size() const

$prototypeV2=void swap( QPicture & other )

#pragma ENDDUMP
