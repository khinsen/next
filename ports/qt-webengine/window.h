#ifndef WINDOW_H
#define WINDOW_H

#include <QWidget>
#include <QWebEngineView>

class QWebEngineView;
class Window : public QWidget
{
public:
    explicit Window(QWidget *parent = 0);
private:
    QWebEngineView *web_view;
};

#endif // WINDOW_H
