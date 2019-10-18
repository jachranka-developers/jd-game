import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    id: gameAreaPage
    //width: 1920
    //height: 1024
    title: qsTr("Dashboard")

    Rectangle {
        id: background
        color: "#3b3737"
        anchors.fill: parent
    }

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        rows: 5
        columns: 10

        RowLayout {
            id: rowScore
            Layout.columnSpan: 10
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            Text {
                id: lblPlayerScore
                color: "#f31515"
                text: qsTr("Screen")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.column: 2
                font.pixelSize: 70
                fontSizeMode: Text.Fit
            }

            Text {
                id: lblTime
                color: "#f31515"
                text: qsTr("Screen")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                fontSizeMode: Text.Fit
                Layout.fillWidth: true
                Layout.fillHeight: true
                verticalAlignment: Text.AlignVCenter
                Layout.column: 5
                font.pixelSize: 70
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: lblEnemyScore
                color: "#f31515"
                text: qsTr("Screen")
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                fontSizeMode: Text.Fit
                Layout.fillWidth: true
                Layout.fillHeight: true
                verticalAlignment: Text.AlignVCenter
                Layout.column: 8
                font.pixelSize: 70
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
            }

        }

    }

}
