#include "client.hpp"

Client::Client(QObject *parent) : QObject(parent)
{

}

void Client::connect()
{
    _socket = new QTcpSocket(this);

    QObject::connect(_socket,&QTcpSocket::connected,this,&Client::_connected);
    QObject::connect(_socket,&QTcpSocket::disconnected,this,&Client::_disconnected);
    QObject::connect(_socket,&QIODevice::readyRead, this, &Client::_read);
    QObject::connect(_socket, QOverload<QAbstractSocket::SocketError>::of(&QAbstractSocket::error),this,&Client::_error);
    //connect(socket,SIGNAL(readyRead()),this,SLOT(readyRead()));

    _socket->connectToHost(_settings.host,_settings.port);
}

void Client::_read()
{
    _stream.startTransaction();

}
