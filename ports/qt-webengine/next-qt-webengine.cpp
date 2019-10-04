#include <QApplication>
#include <QtDBus/QtDBus>

#include "next-qt-webengine.h"
#include "window.h"

QDBusVariant Interface::query(const QString &query)
{
    QString q = query.toLower();
    if (q == "hello") {
        return QDBusVariant("World");
    }

    return QDBusVariant("Sorry, I don't know the answer");
}

int main(int argc, char **argv)
{
 QApplication app (argc, argv);

 QObject obj;
 Interface *interface = new Interface(&obj);
 QDBusConnection::sessionBus().registerObject("/engineer/atlas/next/core", &obj);

 if (!QDBusConnection::sessionBus().registerService("engineer.atlas.next.core")) {
     fprintf(stderr, "%s\n",
             qPrintable(QDBusConnection::sessionBus().lastError().message()));
     exit(1);
 }

 Window window;
 window.show();

 return app.exec();
}
