#ifndef PLAYER_HPP
#define PLAYER_HPP

#include <QObject>
#include "deck.hpp"

class Player : public QObject
{
    Q_OBJECT
public:
    explicit Player(QObject *parent = nullptr);

signals:

public slots:

private:

    Deck _deck;

};

#endif // PLAYER_HPP
