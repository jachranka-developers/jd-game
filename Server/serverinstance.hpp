#ifndef SERVERINSTANCE_HPP
#define SERVERINSTANCE_HPP

#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkInterface>
#include <QtNetwork/QAbstractSocket>
#include <QtNetwork/QTcpServer>
#include <QtNetwork/QTcpSocket>

#include <QObject>

#include "serverinstanceclient_global.h"

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
};

#endif // SERVERINSTANCE_HPP
