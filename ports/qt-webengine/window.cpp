#include "window.h"

Window::Window(QWidget *parent) : QWidget(parent)
{
    // Set size of the window
    setGeometry(0, 0, 1024, 768);

    // Create and position the button
    buffer = new Buffer(this);
    buffer->setGeometry(0, 0, 1024, 768);
    buffer->load(QUrl("https://github.com/atlas-engineer/next"));
}
