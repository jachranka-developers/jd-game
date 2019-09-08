#ifndef MESSAGES_H
#define MESSAGES_H

typedef enum {

    Client_NewConecction = 0,
    /*  Utwórz nową sesję i wygeneruj mi klucz
     *  JSON
     *  {
     *      Deck_ID:            int
     *      Order:              GameSessionOrder
     *  }
     */
    Server_WaitForSecondPlayer,
    /*  Masz klucz, czekamy na drugiego gracza
     *  JSON
     *  {
     *      Unique_SessionKey:  QString("Key")
     *      Order:              GameSessionOrder
     *  }
     */
    Server_WaitForReadyByPlayers,
    /*  Mamy dwóch graczy, czekam na potwierdzenie gotowości
     *  JSON
     *  {
     *      Unique_SessionKey:  QString("Key")
     *      Order:              GameSessionOrder
     *  }
     */
    Client_PlayerReady,
    /*  Gracz zgłasza gotowość do gry
     *  JSON
     *  {
     *      Unique_SessionKey:  QString("Key")
     *      Order:              GameSessionOrder
     *  }
     */
    Server_StartData,
    /*  Serwer wysyła inforamcję startowe:
     *  - kto rozpoczyna
     *  - stan talii
     *  JSON
     * {
     *      Unique_SessionKey:  QString("Key")
     *      Order:              GameSessionOrder
     *      Player_Deck:        QVector<int>
     *      Enemy_Deck:         QVector<int>
     *      Start_Game:         ENUM::PLAYER/ENEMY
     * }
     */
    Client_DataReceived,
    /*  Client potiwerdza przygotowanie planszy
     *  JSON
     *  {
     *      Unique_SessionKey:  QString("Key")
     *      Order:              GameSessionOrder
     *  }
     */
    Server_GameStart,
    /*  Server rozpoczyna grę,
     *  JSON
     *  {
     *      Unique_SessionKey:  QString("Key")
     *      Order:              GameSessionOrder
     *  }
     */
    Server_GameEnd,
    /*  Server kończy grę
     *  JSON
     *  {
     *      Unique_SessionKey:  QString("Key")
     *      Order:              GameSessionOrder
     *  }
     */

}MessagesConnection;

#endif // MESSAGES_H
