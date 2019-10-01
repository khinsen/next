TEMPLATE = app
TARGET = next-platform-port

QT += widgets webengine webenginewidgets

greaterThan(QT_MAJOR_VERSION, 5): QT += widgets

HEADERS += buffer.h window.h
SOURCES += buffer.cpp window.cpp next-qt-webengine.cpp
CONFIG += sdk_no_version_check
