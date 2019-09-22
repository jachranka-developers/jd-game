import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    id: loginPage
    //width: 1920
    //height: 1024
    title: qsTr("Log in")

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


        Label {
            id: lblTitle
            color: "#0046d2"
            text: qsTr("JD Game")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.columnSpan: 4
            //lineHeight: 1.4
            font.family: "Verdana"
            font.pointSize: 50
            fontSizeMode: Text.Fit
        }

        Image {
            id: imgLogo
            Layout.minimumHeight: 150
            Layout.maximumHeight: 333
            Layout.maximumWidth: 333
            Layout.minimumWidth: 150
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.preferredHeight: 250
            Layout.preferredWidth: 250
            fillMode: Image.Stretch
            source: "assets/JD.png"
        }

        Label {
            id: lblLogin
            color: "#419ef5"
            text: qsTr("Login:")
            verticalAlignment: Text.AlignVCenter
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            font.pointSize: 35
            Layout.row: 3
            Layout.column: 2
            fontSizeMode: Text.Fit
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
            id: lblPassword
            color: "#419ef5"
            text: qsTr("Password:")
            verticalAlignment: Text.AlignVCenter
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            font.pointSize: 35
            Layout.row: 4
            Layout.column: 2
            fontSizeMode: Text.Fit
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

        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true

            Button {
                id: bttnLogin
                text: qsTr("Log in")
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 2
                Layout.column: 1
                Layout.row: 5
                checkable: false
                highlighted: true
                font.pointSize: 35
            }

            Button {
                id: bttnClear
                text: qsTr("Clear")
                Layout.columnSpan: 2
                highlighted: true
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.column: 3
                Layout.row: 5
                font.pointSize: 35
                checkable: false
            }
        }
    }
}
