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

}
