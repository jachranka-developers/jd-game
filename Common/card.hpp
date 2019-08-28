#ifndef CARD_HPP
#define CARD_HPP

#include <QObject>

typedef enum
{
    nothing = 0

}specjalSkill_effectReference;

struct specjalSkill
{
    QString name;
    QString description;
    specjalSkill_effectReference reference = nothing;
};

class Card : public QObject
{
    Q_OBJECT
public:
    explicit Card(QObject *parent = nullptr);

signals:

public slots:

private:

    // CARD STRUCTURE

    long _id;
    QString _name {"Name"};
    QString _description {"Description"};

    int _hitpoints {3};
    int _damage {3};
    int _productivity {3};

    specjalSkill _skill;

    // ================
};

#endif // CARD_HPP
