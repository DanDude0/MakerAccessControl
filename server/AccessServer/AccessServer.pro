# -------------------------------------------------
# Project created by QtCreator 2010-04-03T15:28:20
# -------------------------------------------------

QT += network xml sql
QT -= gui
TARGET = AccessServer
CONFIG += console
CONFIG -= app_bundle
TEMPLATE = app
unix {
INCLUDEPATH += /usr/include /usr/include/QtExtSerialPort/
LIBS += -L'/usr/lib'
LIBS += -L'/usr/include/QtExtSerialPort/'
}
win32 {
INCLUDEPATH += C:\Qt\QExtSerial\src
LIBS += -LC:\Qt\QExtSerial\src\build\
}
SOURCES += main.cpp \
    busmngr.cpp \
    ASCIIProtocol.cpp

HEADERS += busmngr.h \
    ASCIIProtocol.h

unix {
CONFIG(debug, debug|release):LIBS += -lqextserialportd
else:LIBS  += -lqextserialport
}

win32 {
CONFIG(debug, debug|release):LIBS += -lqextserialportd1
else:LIBS  += -lqextserialport1
}
