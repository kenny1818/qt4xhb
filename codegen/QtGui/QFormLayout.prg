$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLAYOUTITEM
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QFormLayout INHERIT QLayout

   METHOD new
   METHOD delete
   METHOD addRow1
   METHOD addRow2
   METHOD addRow3
   METHOD addRow4
   METHOD addRow5
   METHOD addRow6
   METHOD addRow
   METHOD fieldGrowthPolicy
   METHOD formAlignment
   METHOD getItemPosition
   METHOD getLayoutPosition
   METHOD getWidgetPosition
   METHOD horizontalSpacing
   METHOD insertRow1
   METHOD insertRow2
   METHOD insertRow3
   METHOD insertRow4
   METHOD insertRow5
   METHOD insertRow6
   METHOD insertRow
   METHOD itemAt1
   METHOD labelAlignment
   METHOD labelForField1
   METHOD labelForField2
   METHOD labelForField
   METHOD rowCount
   METHOD rowWrapPolicy
   METHOD setFieldGrowthPolicy
   METHOD setFormAlignment
   METHOD setHorizontalSpacing
   METHOD setItem
   METHOD setLabelAlignment
   METHOD setLayout
   METHOD setRowWrapPolicy
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD setWidget
   METHOD spacing
   METHOD verticalSpacing
   METHOD addItem
   METHOD count
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD itemAt2
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD takeAt

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFormLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFormLayout ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFORMLAYOUT_NEW )
{
  QFormLayout * o = new QFormLayout ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
void addRow ( QWidget * label, QWidget * field )
*/
$method=|void|addRow,addRow1|QWidget *,QWidget *

/*
void addRow ( QWidget * label, QLayout * field )
*/
$method=|void|addRow,addRow2|QWidget *,QLayout *

/*
void addRow ( const QString & labelText, QWidget * field )
*/
$method=|void|addRow,addRow3|const QString &,QWidget *

/*
void addRow ( const QString & labelText, QLayout * field )
*/
$method=|void|addRow,addRow4|const QString &,QLayout *

/*
void addRow ( QWidget * widget )
*/
$method=|void|addRow,addRow5|QWidget *

/*
void addRow ( QLayout * layout )
*/
$method=|void|addRow,addRow6|QLayout *

//[1]void addRow ( QWidget * label, QWidget * field )
//[2]void addRow ( QWidget * label, QLayout * field )
//[3]void addRow ( const QString & labelText, QWidget * field )
//[4]void addRow ( const QString & labelText, QLayout * field )
//[5]void addRow ( QWidget * widget )
//[6]void addRow ( QLayout * layout )

HB_FUNC_STATIC( QFORMLAYOUT_ADDROW )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW1 );
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISQLAYOUT(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQLAYOUT(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW4 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW5 );
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
FieldGrowthPolicy fieldGrowthPolicy () const
*/
$method=|QFormLayout::FieldGrowthPolicy|fieldGrowthPolicy|

/*
Qt::Alignment formAlignment () const
*/
$method=|Qt::Alignment|formAlignment|

/*
void getItemPosition ( int index, int * rowPtr, ItemRole * rolePtr ) const
*/
$method=|void|getItemPosition|int,int *,QFormLayout::ItemRole *

/*
void getLayoutPosition ( QLayout * layout, int * rowPtr, ItemRole * rolePtr ) const
*/
$method=|void|getLayoutPosition|QLayout *,int *,QFormLayout::ItemRole *

/*
void getWidgetPosition ( QWidget * widget, int * rowPtr, ItemRole * rolePtr ) const
*/
$method=|void|getWidgetPosition|QWidget *,int *,QFormLayout::ItemRole *

/*
int horizontalSpacing () const
*/
$method=|int|horizontalSpacing|

/*
void insertRow ( int row, QWidget * label, QWidget * field )
*/
$method=|void|insertRow,insertRow1|int,QWidget *,QWidget *

/*
void insertRow ( int row, QWidget * label, QLayout * field )
*/
$method=|void|insertRow,insertRow2|int,QWidget *,QLayout *

/*
void insertRow ( int row, const QString & labelText, QWidget * field )
*/
$method=|void|insertRow,insertRow3|int,const QString &,QWidget *

/*
void insertRow ( int row, const QString & labelText, QLayout * field )
*/
$method=|void|insertRow,insertRow4|int,const QString &,QLayout *

/*
void insertRow ( int row, QWidget * widget )
*/
$method=|void|insertRow,insertRow5|int,QWidget *

/*
void insertRow ( int row, QLayout * layout )
*/
$method=|void|insertRow,insertRow6|int,QLayout *

//[1]void insertRow ( int row, QWidget * label, QWidget * field )
//[2]void insertRow ( int row, QWidget * label, QLayout * field )
//[3]void insertRow ( int row, const QString & labelText, QWidget * field )
//[4]void insertRow ( int row, const QString & labelText, QLayout * field )
//[5]void insertRow ( int row, QWidget * widget )
//[6]void insertRow ( int row, QLayout * layout )

HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISQWIDGET(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISQLAYOUT(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISQWIDGET(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW3 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISQLAYOUT(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW4 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW5 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQLAYOUT(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QLayoutItem * itemAt ( int row, ItemRole role ) const
*/
$method=|QLayoutItem *|itemAt,itemAt1|int,QFormLayout::ItemRole

/*
Qt::Alignment labelAlignment () const
*/
$method=|Qt::Alignment|labelAlignment|

/*
QWidget * labelForField ( QWidget * field ) const
*/
$method=|QWidget *|labelForField,labelForField1|QWidget *

/*
QWidget * labelForField ( QLayout * field ) const
*/
$method=|QWidget *|labelForField,labelForField2|QLayout *

//[1]QWidget * labelForField ( QWidget * field ) const
//[2]QWidget * labelForField ( QLayout * field ) const

HB_FUNC_STATIC( QFORMLAYOUT_LABELFORFIELD )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_LABELFORFIELD1 );
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_LABELFORFIELD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int rowCount () const
*/
$method=|int|rowCount|

/*
RowWrapPolicy rowWrapPolicy () const
*/
$method=|QFormLayout::RowWrapPolicy|rowWrapPolicy|

/*
void setFieldGrowthPolicy ( FieldGrowthPolicy policy )
*/
$method=|void|setFieldGrowthPolicy|QFormLayout::FieldGrowthPolicy

/*
void setFormAlignment ( Qt::Alignment alignment )
*/
$method=|void|setFormAlignment|Qt::Alignment

/*
void setHorizontalSpacing ( int spacing )
*/
$method=|void|setHorizontalSpacing|int

/*
void setItem ( int row, ItemRole role, QLayoutItem * item )
*/
$method=|void|setItem|int,QFormLayout::ItemRole,QLayoutItem *

/*
void setLabelAlignment ( Qt::Alignment alignment )
*/
$method=|void|setLabelAlignment|Qt::Alignment

/*
void setLayout ( int row, ItemRole role, QLayout * layout )
*/
$method=|void|setLayout|int,QFormLayout::ItemRole,QLayout *

/*
void setRowWrapPolicy ( RowWrapPolicy policy )
*/
$method=|void|setRowWrapPolicy|QFormLayout::RowWrapPolicy

/*
void setSpacing ( int spacing )
*/
$method=|void|setSpacing|int

/*
void setVerticalSpacing ( int spacing )
*/
$method=|void|setVerticalSpacing|int

/*
void setWidget ( int row, ItemRole role, QWidget * widget )
*/
$method=|void|setWidget|int,QFormLayout::ItemRole,QWidget *

/*
int spacing () const
*/
$method=|int|spacing|

/*
int verticalSpacing () const
*/
$method=|int|verticalSpacing|

/*
virtual void addItem ( QLayoutItem * item )
*/
$virtualMethod=|void|addItem|QLayoutItem *

/*
virtual int count () const
*/
$virtualMethod=|int|count|

/*
virtual Qt::Orientations expandingDirections () const
*/
$virtualMethod=|Qt::Orientations|expandingDirections|

/*
virtual bool hasHeightForWidth () const
*/
$virtualMethod=|bool|hasHeightForWidth|

/*
virtual int heightForWidth ( int width ) const
*/
$virtualMethod=|int|heightForWidth|int

/*
virtual void invalidate ()
*/
$virtualMethod=|void|invalidate|

/*
virtual QLayoutItem * itemAt ( int index ) const
*/
$virtualMethod=|QLayoutItem *|itemAt,itemAt2|int

/*
virtual QSize minimumSize () const
*/
$virtualMethod=|QSize|minimumSize|

/*
virtual void setGeometry ( const QRect & rect )
*/
$virtualMethod=|void|setGeometry|const QRect &

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
virtual QLayoutItem * takeAt ( int index )
*/
$virtualMethod=|QLayoutItem *|takeAt|int

#pragma ENDDUMP
