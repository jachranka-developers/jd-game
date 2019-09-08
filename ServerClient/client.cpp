#include "client.hpp"

Client::Client(QObject *parent) : QObject(parent)
{
    _socket = new QTcpSocket(this);

    QObject::connect(_socket,&QTcpSocket::connected,this,&Client::_connected);
    QObject::connect(_socket,&QTcpSocket::disconnected,this,&Client::_disconnected);
    QObject::connect(_socket,&QIODevice::readyRead, this, &Client::_read);
    QObject::connect(_socket, QOverload<QAbstractSocket::SocketError>::of(&QAbstractSocket::error),this,&Client::_error);

    _stream.setDevice(_socket);
}

Client::Client(qintptr socket_descriptor, QObject *parent)
{
    _socket = new QTcpSocket(this);

    QObject::connect(_socket,&QTcpSocket::connected,this,&Client::_connected);
    QObject::connect(_socket,&QTcpSocket::disconnected,this,&Client::_disconnected);
    QObject::connect(_socket,&QIODevice::readyRead, this, &Client::_read);
    QObject::connect(_socket, QOverload<QAbstractSocket::SocketError>::of(&QAbstractSocket::error),this,&Client::_error);

    _socket->setSocketDescriptor(socket_descriptor);
    _stream.setDevice(_socket);
}

void Client::connect()
{

    //connect(socket,SIGNAL(readyRead()),this,SLOT(readyRead()));

    _socket->connectToHost(_settings.host,_settings.port);
}

qintptr Client::socketDescriptor()
{
    return _socket->socketDescriptor();
}

void Client::write()
{
    QByteArray data;
    QDataStream stream(&data,QIODevice::ReadOnly);

    _socket->write(data);
}

void Client::_read()
{
    _stream.startTransaction();

}
