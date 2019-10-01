#include "window.h"
#include <QPushButton>

Window::Window(QWidget *parent) : QWidget(parent)
{
    // Set size of the window
    setGeometry(0, 0, 1024, 768);

    // Create and position the button
    web_view = new QWebEngineView(this);
    web_view->setGeometry(0, 0, 1024, 768);
    web_view->load(QUrl("https://github.com/atlas-engineer/next"));
}
