#include <QWidget>
#include "buffer.h"

class Buffer;
class Window : public QWidget
{
public:
    explicit Window(QWidget *parent = 0);
private:
    Buffer *buffer;
};
