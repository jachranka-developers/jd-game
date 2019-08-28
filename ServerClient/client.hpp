#ifndef CLIENT_HPP
#define CLIENT_HPP

#include <QtNetwork/QTcpSocket>
#include <QtNetwork/QAbstractSocket>

#include <QDataStream>

#include <QObject>

class Client : public QObject
{
    Q_OBJECT
public:
    explicit Client(QObject *parent = nullptr);

    void connect();

signals:

    void connected();
    void disconnected();

public slots:

private slots:

    void _connected();
    void _disconnected();
    void _read();
    void _error(QAbstractSocket::SocketError socketError);


private:

    QTcpSocket *_socket {nullptr};
    QDataStream _stream;

    struct connectionSettings
    {
        QString host = "127.0.0.1";
        quint16 port = 3456;
    };

    connectionSettings _settings;
};

#endif // CLIENT_HPP
