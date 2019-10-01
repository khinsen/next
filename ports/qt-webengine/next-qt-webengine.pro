TEMPLATE = app
TARGET = next-platform-port

QT += widgets webengine webenginewidgets

greaterThan(QT_MAJOR_VERSION, 5): QT += widgets

HEADERS += window.h
SOURCES += window.cpp next-qt-webengine.cpp
CONFIG += sdk_no_version_check
