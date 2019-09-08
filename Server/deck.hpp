#ifndef DECK_HPP
#define DECK_HPP

#include <QObject>

class Deck : public QObject
{
    Q_OBJECT
public:
    explicit Deck(QObject *parent = nullptr);

signals:

public slots:
};

#endif // DECK_HPP
