#ifndef SERVERINSTANCE_HPP
#define SERVERINSTANCE_HPP

#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkInterface>
#include <QtNetwork/QAbstractSocket>
#include <QtNetwork/QTcpServer>
#include <QtNetwork/QTcpSocket>

#include <QObject>

#include "client.hpp"

class ServerInstance : public QTcpServer
{
    Q_OBJECT

public:
    ServerInstance();
    ~ServerInstance();

    bool start();
    void stop();

protected:

    void incomingConnection(qintptr handle);

private:

    QVector<Client*> _clients;

    void removeClient(qintptr SID);
};

#endif // SERVERINSTANCE_HPP
