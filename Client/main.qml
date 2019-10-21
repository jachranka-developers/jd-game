import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    //maximumHeight: 720
    //maximumWidth: 1024
    visibility:"Maximized"
    minimumHeight: 450
    minimumWidth: 350
    //visibility:"FullScreen"
    title: qsTr("Game")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }
        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
        ToolButton {
            text: qsTr("Zamknij [X]")
            onClicked: window.close()
            anchors.right: parent.right
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.33
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Login Form")
                width: parent.width
                onClicked: {
                    stackView.push("LoginScreen.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Dashboard")
                width: parent.width
                onClicked: {
                    stackView.push("DashboardScreen.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Settings")
                width: parent.width
                onClicked: {
                    stackView.push("SettingsScreen.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("EndGameScreen")
                width: parent.width
                onClicked: {
                    stackView.push("EndGameScreen.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("GameArea")
                width: parent.width
                onClicked: {
                    stackView.push("GameAreaScreen.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("LobbyScreen")
                width: parent.width
                onClicked: {
                    stackView.push("LobbyScreen.ui.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "GameAreaScreen.qml"
        anchors.fill: parent
    }
}
