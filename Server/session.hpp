#ifndef SESSION_HPP
#define SESSION_HPP

#include <QObject>
#include "player.hpp"

class Session : public QObject
{
    Q_OBJECT
public:
    explicit Session(QObject *parent = nullptr);

    Session *getSession(int clientSID);
    void insertClient(int clientSID);

signals:

public slots:

private:

    struct sessionPlayer
    {
        int clientSID   {0};
        int score       {0};
        Player _player;
    };

    sessionPlayer _one;
    sessionPlayer _two;
};

#endif // SESSION_HPP
