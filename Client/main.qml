import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    maximumHeight: 720
    maximumWidth: 1024
    //visibility:"Maximized"
    visibility:"FullScreen"
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
                    stackView.push("LoginForm.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Dashboard")
                width: parent.width
                onClicked: {
                    stackView.push("Dashboard.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Page 2")
                width: parent.width
                onClicked: {
                    stackView.push("Page2Form.ui.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "HomeForm.ui.qml"
        anchors.fill: parent
    }
}
