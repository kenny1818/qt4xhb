/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QAudioFormat::Endian
*/
#define QAudioFormat_BigEndian                                       QSysInfo_BigEndian
#define QAudioFormat_LittleEndian                                    QSysInfo_LittleEndian

/*
enum QAudioFormat::SampleType
*/
#define QAudioFormat_Unknown                                         0
#define QAudioFormat_SignedInt                                       1
#define QAudioFormat_UnSignedInt                                     2
#define QAudioFormat_Float                                           3
