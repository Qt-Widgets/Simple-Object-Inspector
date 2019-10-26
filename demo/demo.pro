#-------------------------------------------------
#
# Project created by QtCreator 2013-12-10T17:12:13
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = demo
TEMPLATE = app

DESTDIR = $$PWD/../bin

INCLUDEPATH += \
    ../objectinspector \
    ../objectinspector/model

SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui


win32: LIBS += -L$$PWD/../bin/ -lobjectinspector

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/../bin/objectinspector.lib
else:win32-g++: PRE_TARGETDEPS += $$PWD/../bin/libobjectinspector.a
