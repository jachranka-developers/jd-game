#ifndef CLIENT_HPP
#define CLIENT_HPP

#include <QtNetwork/QTcpSocket>
#include <QtNetwork/QAbstractSocket>

#include <QDataStream>
#include <QJsonDocument>
#include <QObject>

class Client : public QObject
{
    Q_OBJECT
public:
    explicit Client(QObject *parent = nullptr);
    Client(qintptr socket_descriptor, QObject *parent = nullptr);

    void connect();
    qintptr  socketDescriptor();
    void write();

signals:

    void connected();
    void disconnected();
    void message(QJsonDocument message);

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
