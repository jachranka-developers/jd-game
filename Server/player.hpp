#ifndef PLAYER_HPP
#define PLAYER_HPP

#include <QObject>

class Player : public QObject
{
    Q_OBJECT
public:
    explicit Player(QObject *parent = nullptr);

signals:

public slots:
};

#endif // PLAYER_HPP
