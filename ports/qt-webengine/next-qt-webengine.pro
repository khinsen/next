TEMPLATE = app
TARGET = next-platform-port

QT += widgets webengine webenginewidgets dbus

greaterThan(QT_MAJOR_VERSION, 5): QT += widgets

HEADERS += buffer.h window.h next-qt-webengine.h
SOURCES += buffer.cpp window.cpp next-qt-webengine.cpp
CONFIG += sdk_no_version_check
