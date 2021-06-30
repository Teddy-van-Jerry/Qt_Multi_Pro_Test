QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

TARGET = test_app
DESTDIR = ../bin

win32 {
LIBS += \
    ../bin/test_lib.dll \
    ../bin/test_dlg.dll
}

unix {
LIBS += \
    "../bin/libtest_lib.so" \
#    ../bin/libtest_lib.so.1 \
#    ../bin/libtest_lib.so.1.0 \
#    ../bin/libtest_lib.so.1.0.0 \
    "../bin/libtest_dlg.so" #\
#    ../bin/libtest_dlg.so.1 \
#    ../bin/libtest_dlg.so.1.0 \
#    ../bin/libtest_dlg.so.1.0.0
    # path tested on Ubuntu
}

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
