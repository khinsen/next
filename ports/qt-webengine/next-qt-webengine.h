#include <QtCore/QObject>
#include <QtDBus/QDBusAbstractAdaptor>
#include <QtDBus/QDBusVariant>

class Interface: public QDBusAbstractAdaptor
{
    Q_OBJECT
    Q_CLASSINFO("D-Bus Interface", "engineer.atlas.next.core")
public:
    Interface(QObject *obj) : QDBusAbstractAdaptor(obj)
    { }
public slots:
    QDBusVariant query(const QString &query);
};
