#include "session.hpp"

Session::Session(QObject *parent) : QObject(parent)
{

}

Session *Session::getSession(int clientSID)
{
    if(_one.clientSID == clientSID || _two.clientSID == clientSID)
    {
        return this;
    }
    else
    {
        return nullptr;
    }
}

void Session::insertClient(int clientSID)
{
    if(_one.clientSID>0)
    {
        _two.clientSID = clientSID;
        return;
    }

    _one.clientSID = clientSID;
    return;
}
