#ifndef DECK_HPP
#define DECK_HPP

#include <QObject>
#include <QVector>

#include <algorithm>
#include <random>

#include "card.hpp"


class Deck : public QObject
{
    Q_OBJECT

public:
    explicit Deck(QObject *parent = nullptr);

    void shuffle();
    void adjustCard(Card & card);

signals:

public slots:

private:

    QVector<Card> _cards;

};

#endif // DECK_HPP
