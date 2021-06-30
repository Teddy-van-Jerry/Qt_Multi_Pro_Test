QT -= gui

TEMPLATE = lib
DEFINES += LIB_LIBRARY

TARGET = test_lib
DESTDIR = ../bin

CONFIG += c++11
CONFIG += plugin # no symbolic link on linux
# Ref: https://forum.qt.io/topic/18882/solved-suppress-so-version-on-linux

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    lib.cpp

HEADERS += \
    Lib_global.h \
    lib.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
