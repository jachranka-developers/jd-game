QT += testlib network core
QT -= gui

CONFIG += qt console warn_on depend_includepath testcase
CONFIG -= app_bundle

TEMPLATE = app

INCLUDEPATH += ../Server/

SOURCES +=  tst_coretests.cpp \
    ../Server/serverinstance.cpp

HEADERS += \
    ../Server/serverinstance.hpp

