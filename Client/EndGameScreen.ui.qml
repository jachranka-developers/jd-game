import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    id: endGamePage
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
            id: titleRow
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                id: txtTitle
                color: "#ffffff"
                text: qsTr("Have a nice time!")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                font.bold: true
                font.pixelSize: 50
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.fillHeight: true
                fontSizeMode: Text.Fit
            }
        }

        RowLayout {
            id: contentRow
            width: 100
            height: 100
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                id: txtDescriptionText
                color: "#ffffff"
                text: qsTr("Your score:")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
            }

            Text {
                id: txtScore
                color: "#ffffff"
                text: qsTr("300 pkt")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font.pixelSize: 25
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                Layout.fillHeight: true
                fontSizeMode: Text.Fit
            }
        }

        RowLayout {
            id: buttonsRow
            width: 100
            height: 100
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

            Button {
                id: bttnCards
                text: qsTr("Dashboard")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                Layout.fillHeight: false
                Layout.fillWidth: true
                contentItem: Text {
                    fontSizeMode: Text.Fit
                    font.pointSize: 50
                    minimumPointSize: 1
                    text: bttnCards.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }
        }

    }
}
