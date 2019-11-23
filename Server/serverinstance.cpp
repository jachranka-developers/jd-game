#include "serverinstance.hpp"

ServerInstance::ServerInstance()
{

}

ServerInstance::~ServerInstance()
{

}

bool ServerInstance::start()
{
    auto result = this->listen(QHostAddress::Any,3456);
    if(result)
    {
        qDebug() << QDateTime::currentDateTimeUtc() << " SERVER START LISTEN ";
    }

    return result;
}

void ServerInstance::stop()
{
    this->close();
}

void ServerInstance::incomingConnection(qintptr handle)
{
    Client *client = new Client(handle);
    _clients.push_back(client);

    QObject::connect(client,&Client::disconnected,this,[this]()
    {
       Client *_client  = qobject_cast<Client *>(QObject::sender());
       auto at = _client->socketDescriptor();
       removeClient(at);

       _client->deleteLater();
    });

    QObject::connect(client,&Client::message,this,[this](QJsonDocument message)
    {
        Client *_client  = qobject_cast<Client *>(QObject::sender());
        auto SID = _client->socketDescriptor();

        dispatcher(message,SID);
    });
}

void ServerInstance::dispatcher(QJsonDocument message, int SID)
{
    QJsonObject data = message.object();
    auto order = data.value("Order").toInt();

    switch(order)
    {
    case MessagesConnection::Client_NewConecction:
    {

    }
    }
}

void ServerInstance::removeClient(qintptr SID)
{
    for(const auto& i : _clients)
    {
        if(i->socketDescriptor() == SID)
        {
            _clients.removeOne(i);
        }
    }
}

int ServerInstance::assignClient(int SID)
{
    for(int i = 0; i < _sessions.count(); ++i)
    {
        if(_sessions[i].getSession(SID) != nullptr)
        {
            return i;
        }
    }

    _sessions.append(Session());

    return _sessions.lastIndexOf(_sessions.last());
}


