#include "deck.hpp"

Deck::Deck(QObject *parent) : QObject(parent)
{

}

void Deck::shuffle()
{
    auto rng = std::default_random_engine {};
    std::shuffle(_cards.begin(), _cards.end(), rng);
}

void Deck::adjustCard(Card &card)
{
   card = _cards.last();
   _cards.removeLast();
}
