#ifndef SESSION_HPP
#define SESSION_HPP

#include <QObject>

class Session : public QObject
{
    Q_OBJECT
public:
    explicit Session(QObject *parent = nullptr);

signals:

public slots:
};

#endif // SESSION_HPP
