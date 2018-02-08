%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
#endif

CLASS QButtonGroup INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttons
   METHOD checkedButton
   METHOD checkedId
   METHOD exclusive
   METHOD id
   METHOD removeButton
   METHOD setExclusive
   METHOD setId

   METHOD onButtonClicked1
   METHOD onButtonClicked2
   METHOD onButtonPressed1
   METHOD onButtonPressed2
   METHOD onButtonReleased1
   METHOD onButtonReleased2

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QButtonGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QAbstractButton>

$prototype=QButtonGroup ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addButton ( QAbstractButton * button )
$internalMethod=|void|addButton,addButton1|QAbstractButton *

$prototype=void addButton ( QAbstractButton * button, int id )
$internalMethod=|void|addButton,addButton2|QAbstractButton *,int

//[1]void addButton ( QAbstractButton * button )
//[2]void addButton ( QAbstractButton * button, int id )

HB_FUNC_STATIC( QBUTTONGROUP_ADDBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    QButtonGroup_addButton1();
  }
  else if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QButtonGroup_addButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QAbstractButton * button ( int id ) const
$method=|QAbstractButton *|button|int

$prototype=QList<QAbstractButton *> buttons () const
$method=|QList<QAbstractButton *>|buttons|

$prototype=QAbstractButton * checkedButton () const
$method=|QAbstractButton *|checkedButton|

$prototype=int checkedId () const
$method=|int|checkedId|

$prototype=bool exclusive () const
$method=|bool|exclusive|

$prototype=int id ( QAbstractButton * button ) const
$method=|int|id|QAbstractButton *

$prototype=void removeButton ( QAbstractButton * button )
$method=|void|removeButton|QAbstractButton *

$prototype=void setExclusive ( bool )
$method=|void|setExclusive|bool

$prototype=void setId ( QAbstractButton * button, int id )
$method=|void|setId|QAbstractButton *,int

#pragma ENDDUMP
