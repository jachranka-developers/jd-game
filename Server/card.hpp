#ifndef CARD_HPP
#define CARD_HPP

#include <QObject>

class Card
{

    int id {0};
    int hitpoints {0};
    int damage {0};
    int productivity {0};

    QString name;
    QString description;

public:
    explicit Card();

signals:

public slots:
};

#endif // CARD_HPP
