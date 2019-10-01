#include <QWebEngineView>

class Buffer : public QWebEngineView
{
public:
    explicit Buffer(QWidget *parent = 0);
private:
    double id;
};
