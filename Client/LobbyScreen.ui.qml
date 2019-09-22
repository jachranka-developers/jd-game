import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "rings"

Page {
    //width: 1920
    //height: 1024
    title: qsTr("Home")

    property alias timeNumber: timeNumber
    property alias text1: text1
    property alias bAccept: bAccept

    Rectangle {
        id: background
        color: "#3b3737"
        anchors.fill: parent
    }

    ColumnLayout {
        id: columnLayout
        anchors.bottomMargin: 50
        anchors.rightMargin: 50
        anchors.leftMargin: 50
        anchors.topMargin: 50
        anchors.fill: parent

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("Wyszukiwanie przeciwnika")
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            font.bold: true
            font.pixelSize: 70
            fontSizeMode: Text.Fit
        }

        Item {
            id: element
            Layout.fillHeight: true
            Layout.fillWidth: true

            LoadingRings {
                id: loadingAnim
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                scale: 3
            }

            Text {
                id: timeNumber
                color: "#ffffff"
                text: qsTr("0")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.bold: true
                font.pixelSize: 70
                fontSizeMode: Text.Fit
            }
        }

        Button {
            id: bAccept
            text: qsTr("Akceptuj")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            enabled: false
            font.pointSize: 40
        }

    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:5;anchors_x:0;anchors_y:352}D{i:6;anchors_x:956;anchors_y:375}
}
 ##^##*/
