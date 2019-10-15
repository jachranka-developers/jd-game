import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    id: loginPage
    //width: 1920
    //height: 1024
    title: qsTr("Dashboard")

    Rectangle {
        id: background
        color: "#3b3737"
        anchors.fill: parent
    }

    ColumnLayout {
        id: columnLayout
        anchors.rightMargin: 30
        anchors.leftMargin: 30
        anchors.bottomMargin: 30
        anchors.topMargin: 30
        anchors.fill: parent

        RowLayout {
            id: statsRow
            width: 100
            height: 100

            ColumnLayout {
                id: columnLayout1
                width: 100
                height: 100
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop

                Text {
                    id: lblLogin
                    color: "#ffffff"
                    text: qsTr("Hello:")
                    font.pixelSize: 70
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                }

                Text {
                    id: lblPoints
                    color: "#ffffff"
                    text: qsTr("Rank:")
                    //anchors.top: lblLogin.bottom
                    font.pixelSize: 70
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                }
            }

            ColumnLayout {
                id: columnLayout2
                width: 100
                height: 100
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop

                Text {
                    id: txtLogin
                    color: "#ffffff"
                    text: qsTr("---")
                    anchors.leftMargin: 0
                    font.pixelSize: 70
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                }

                Text {
                    id: txtEloPoints
                    color: "#ffffff"
                    text: qsTr("---")
                    font.pixelSize: 70
                    anchors.leftMargin: 0
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                }
            }
        }

        RowLayout {
            id: contentRow
            width: 100
            height: 100

            Text {
                id: txtDescriptionText
                color: "#ffffff"
                text: qsTr("")
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
            }
        }

        RowLayout {
            id: buttonsRow
            width: 100
            height: 100
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

            Button {
                id: bttnGame
                text: qsTr("Play")
                Layout.fillWidth: true
                contentItem: Text{
                    fontSizeMode: Text.Fit
                    font.pointSize: 50
                    minimumPointSize: 1
                    text: bttnGame.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }

            Button {
                id: bttnCards
                text: qsTr("Your cards")
                Layout.fillWidth: true
                contentItem: Text{
                    fontSizeMode: Text.Fit
                    font.pointSize: 50
                    minimumPointSize: 1
                    text: bttnCards.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }

            Button {
                id: bttnSettings
                text: qsTr("Settings")
                Layout.fillWidth: true
                contentItem: Text{
                    fontSizeMode: Text.Fit
                    font.pointSize: 50
                    minimumPointSize: 1
                    text: bttnSettings.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }
        }
    }
}
