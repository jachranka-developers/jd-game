import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    id: loginPage
    width: 1920
    height: 1024
    title: qsTr("Log in")

    Rectangle {
        id: background
        color: "#3b3737"
        anchors.fill: parent
    }

    GridLayout {
        id: gridLayout
        rows: 5
        columns: 4
        anchors.fill: parent
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Layout.fillHeight: true
        Layout.fillWidth: true

        Label {
            id: lTitle
            color: "#0046d2"
            text: qsTr("JD Game")
            Layout.columnSpan: 4
            //lineHeight: 1.4
            font.family: "Verdana"
            font.pointSize: 50
        }

        Label {
            id: lLogin
            color: "#419ef5"
            text: qsTr("Login:")
            verticalAlignment: Text.AlignVCenter
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            font.pointSize: 35
            Layout.row: 3
            Layout.column: 2
        }

        TextField {
            id: tFLogin
            text: qsTr("")
            Layout.columnSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.pointSize: 25
            Layout.row: 3
            Layout.column: 3
        }

        Label {
            id: lPassword
            color: "#419ef5"
            text: qsTr("Password:")
            verticalAlignment: Text.AlignVCenter
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            font.pointSize: 35
            Layout.row: 4
            Layout.column: 2
        }

        TextField {
            id: tFPassword
            text: qsTr("")
            Layout.columnSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.pointSize: 25
            echoMode: "Password"
            Layout.row: 4
            Layout.column: 3
        }

        Button {
            id: bLogin
            text: qsTr("Log in")
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 2
            checkable: false
            highlighted: true
            font.pointSize: 35
        }

        Button {
            id: bClear
            text: qsTr("Clear")
            Layout.columnSpan: 2
            highlighted: true
            Layout.fillWidth: true
            Layout.fillHeight: true
            font.pointSize: 35
            checkable: false
        }
    }
}

















/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200}
}
 ##^##*/
