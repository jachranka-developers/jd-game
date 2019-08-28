#include "serverinstance.hpp"

ServerInstance::ServerInstance()
{

}

ServerInstance::~ServerInstance()
{

}

bool ServerInstance::start()
{
    return this->listen(QHostAddress::Any,3456);
}

void ServerInstance::stop()
{
    this->close();
}

void ServerInstance::incomingConnection(qintptr handle)
{
    Client *client = new Client(handle);
    _clients.push_back(client);


    QObject::connect(client,&Client::disconnected,this,[this]
    {
       Client *_client  = qobject_cast<Client *>(QObject::sender());
       auto at = _client->socketDescriptor();
       removeClient(at);

       _client->deleteLater();
    });
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
