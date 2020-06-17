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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWizardPage ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$prototype=QString buttonText ( QWizard::WizardButton which ) const
$method=|QString|buttonText|QWizard::WizardButton

$prototypeV2=virtual void cleanupPage()

$prototypeV2=virtual void initializePage()

$prototypeV2=bool isCommitPage() const

$prototypeV2=virtual bool isComplete() const

$prototypeV2=bool isFinalPage() const

$prototypeV2=virtual int nextId() const

$prototype=QPixmap pixmap ( QWizard::WizardPixmap which ) const
$method=|QPixmap|pixmap|QWizard::WizardPixmap

$prototype=void setButtonText ( QWizard::WizardButton which, const QString & text )
$method=|void|setButtonText|QWizard::WizardButton,const QString &

$prototype=void setCommitPage ( bool commitPage )
$method=|void|setCommitPage|bool

$prototype=void setFinalPage ( bool finalPage )
$method=|void|setFinalPage|bool

$prototype=void setPixmap ( QWizard::WizardPixmap which, const QPixmap & pixmap )
$method=|void|setPixmap|QWizard::WizardPixmap,const QPixmap &

$prototype=void setSubTitle ( const QString & subTitle )
$method=|void|setSubTitle|const QString &

$prototype=void setTitle ( const QString & title )
$method=|void|setTitle|const QString &

$prototypeV2=QString subTitle() const

$prototypeV2=QString title() const

$prototypeV2=virtual bool validatePage()

$beginSignals
$signal=|completeChanged()
$endSignals

#pragma ENDDUMP
