#ifndef SERVERINSTANCE_HPP
#define SERVERINSTANCE_HPP

#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkInterface>
#include <QtNetwork/QAbstractSocket>
#include <QtNetwork/QTcpServer>
#include <QtNetwork/QTcpSocket>

#include <QObject>

#include <QJsonObject>


#include "client.hpp"
#include "session.hpp"
#include "messages.h"

#include <QDebug>

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

private slots:

    void dispatcher(QJsonDocument message, int SID);

private:

    QVector<Client*> _clients;

    void removeClient(qintptr SID);

    QVector<Session> _sessions;

    int assignClient(int SID);

};

#endif // SERVERINSTANCE_HPP
