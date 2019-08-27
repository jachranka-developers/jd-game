#include <QtTest>
#include <QCoreApplication>

#include "serverinstance.hpp"


// add necessary includes here

class CoreTests : public QObject
{
    Q_OBJECT

public:
    CoreTests();
    ~CoreTests();

private slots:
    void initTestCase();
    void cleanupTestCase();
    void test_ServerInstance();
    void test_case1();

};

CoreTests::CoreTests()
{

}

CoreTests::~CoreTests()
{

}

void CoreTests::initTestCase()
{

}

void CoreTests::cleanupTestCase()
{

}

void CoreTests::test_ServerInstance()
{
    ServerInstance server;
    QVERIFY(server.start() == true);
    server.close();
}

void CoreTests::test_case1()
{

}

QTEST_MAIN(CoreTests)

#include "tst_coretests.moc"
