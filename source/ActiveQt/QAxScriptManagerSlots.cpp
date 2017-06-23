/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QAxScriptManagerSlots.h"

static SlotsQAxScriptManager * s = NULL;

SlotsQAxScriptManager::SlotsQAxScriptManager(QObject *parent) : QObject(parent)
{
}
SlotsQAxScriptManager::~SlotsQAxScriptManager()
{
  QAxScriptManager_release_codeblocks();
}
void SlotsQAxScriptManager::error ( QAxScript * script, int code, const QString & description, int sourcePosition, const QString & sourceText )
{
  QObject *object = qobject_cast<QObject *>(sender());
  for (int i = 0; i < list1.size(); ++i)
  {
    if( (QObject*) list1.at(i) == (QObject*) object )
    {
      if( ( (QString) list2.at(i) == (QString) "error(QAxScript*,int,QString,int,QString)" ) && ( (bool) list4.at(i) == true ) )
      {
        PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
        PHB_ITEM pscript = hb_itemPutPtr( NULL, (QAxScript *) script );
        PHB_ITEM pcode = hb_itemPutNI( NULL, code );
        PHB_ITEM pdescription = hb_itemPutC( NULL, QSTRINGTOSTRING(description) );
        PHB_ITEM psourcePosition = hb_itemPutNI( NULL, sourcePosition );
        PHB_ITEM psourceText = hb_itemPutC( NULL, QSTRINGTOSTRING(sourceText) );
        hb_vmEvalBlockV( (PHB_ITEM) list3.at(i), 6, psender, pscript, pcode, pdescription, psourcePosition, psourceText );
        hb_itemRelease( psender );
        hb_itemRelease( pscript );
        hb_itemRelease( pcode );
        hb_itemRelease( pdescription );
        hb_itemRelease( psourcePosition );
        hb_itemRelease( psourceText );
      }
    }
  }
}

HB_FUNC( QAXSCRIPTMANAGER_ONERROR )
{
  QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  QString signal = "error(QAxScript*,int,QString,int,QString)";
  if( s == NULL )
  {
    s = new SlotsQAxScriptManager(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
    // verifica se j� est� na lista
    int found = -1;
    int i;
    for (i = 0; i < s->list1.size(); ++i)
    {
      if( ( (QObject *) s->list1.at(i) == (QObject *) object ) && ( s->list2.at(i) == signal ) && ( (bool) s->list4.at(i) == true ) )
      {
        found = i;
        break;
      }
    }
    // se nao encontrado na lista, conecta e adiciona
    if( found == -1 )
    {
      ret = object->connect( object, SIGNAL(error(QAxScript*,int,QString,int,QString)), s, SLOT(error(QAxScript*,int,QString,int,QString)) );
      if( ret ) // se conectado, adiciona
      {
        // procura por posi��o livre
        i = s->list4.indexOf( false );
        if( i == -1 ) // nao encontrou posicao livre
        {
          // adiciona sinal na lista
          s->list1 << object;
          s->list2 << signal;
          s->list3 << codeblock;
          s->list4 << true;
        }
        else // encontrou posicao
        {
          // coloca na posi��o livre
          s->list1[i] = object;
          s->list2[i] = signal;
          s->list3[i] = codeblock;
          s->list4[i] = true;
        }
      }
    }
  }
  else if( hb_pcount() == 0 )
  {
    ret = object->disconnect(object, SIGNAL(error(QAxScript*,int,QString,int,QString)), s, SLOT(error(QAxScript*,int,QString,int,QString)) );
    if( ret == true )
    {
      for (int i = 0; i < s->list1.size(); ++i)
      {
        if( (QObject*) s->list1.at(i) == (QObject*) object )
        {
          if( ( (QString) s->list2.at(i) == (QString) signal ) && ( (bool) s->list4.at(i) == true ) )
          {
            hb_itemRelease( (PHB_ITEM) s->list3.at(i) );
            s->list1[i] = NULL;
            s->list2[i] = "";
            s->list3[i] = NULL;
            s->list4[i] = false;
          }
        }
      }
    }
  }
  hb_retl( ret );
}
void QAxScriptManager_release_codeblocks ()
{
  if( s )
  {
    for (int i = 0; i < s->list1.size(); ++i)
    {
      if( (bool) s->list4.at(i) == true )
      {
        hb_itemRelease((PHB_ITEM) s->list3.at(i) );
          s->list1[i] = NULL;
          s->list2[i] = "";
          s->list3[i] = NULL;
          s->list4[i] = false;
      }
    }
  }
}

