#include <QCoreApplication>
#include "serverinstance.hpp"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    ServerInstance server;
    server.start();

    return a.exec();
}
