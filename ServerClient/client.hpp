#ifndef CLIENT_HPP
#define CLIENT_HPP

#include <QObject>

class Client : public QObject
{
    Q_OBJECT
public:
    explicit Client(QObject *parent = nullptr);

signals:

public slots:
};

#endif // CLIENT_HPP
