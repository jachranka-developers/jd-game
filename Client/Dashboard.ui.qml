import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    id: loginPage
    width: 1920
    height: 1024
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
                }

                Text {
                    id: lblPoints
                    color: "#ffffff"
                    text: qsTr("Rank:")
                    //anchors.top: lblLogin.bottom
                    font.pixelSize: 70
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
                }

                Text {
                    id: txtEloPoints
                    color: "#ffffff"
                    text: qsTr("---")
                    font.pixelSize: 70
                    anchors.leftMargin: 0
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
                font.pointSize: 50
                Layout.fillWidth: true
            }

            Button {
                id: bttnCards
                text: qsTr("Your cards")
                font.pointSize: 50
                Layout.fillWidth: true
            }

            Button {
                id: bttnSettings
                text: qsTr("Settings")
                font.pointSize: 50
                Layout.fillWidth: true
            }
        }
    }
}
