#ifndef CARD_HPP
#define CARD_HPP

#include <QObject>

class Card : public QObject
{
    Q_OBJECT
public:
    explicit Card(QObject *parent = nullptr);

signals:

public slots:
};

#endif // CARD_HPP
