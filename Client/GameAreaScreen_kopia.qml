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

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        Rectangle {
            id: rowScore
            color: "#ffffff"
            Layout.columnSpan: 10
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: true
            Layout.fillWidth: true

            RowLayout {
                id: rowLayout
                anchors.fill: parent
                Layout.columnSpan: 10
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true

                Text {
                    id: lblPlayerScore
                    text: qsTr("Screen")
                    font.bold: true
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.column: 2
                    font.pixelSize: 70
                    minimumPointSize: 20
                    fontSizeMode: Text.Fit
                }

                Text {
                    id: lblTime
                    text: qsTr("Screen")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    fontSizeMode: Text.Fit
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    verticalAlignment: Text.AlignVCenter
                    Layout.column: 5
                    font.pixelSize: 70
                    minimumPointSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: lblEnemyScore
                    text: qsTr("Screen")
                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                    fontSizeMode: Text.Fit
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    verticalAlignment: Text.AlignVCenter
                    Layout.column: 8
                    font.pixelSize: 70
                    minimumPointSize: 20
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                }

            }
        }

        RowLayout {
            id: rowLayout1
            width: 100
            height: 100
            Layout.fillHeight: true
            Layout.fillWidth: true
            Repeater{
                id:playerBattleArea
                model: 4
                Rectangle{
                    width: 150
                    height: 150
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    enabled: true
                }
            }

            Item {
                id: spacer
                Layout.columnSpan: 2
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
            }

            Repeater{
                id:enemyBattleArea
                model: 4
                Rectangle{
                    width: 150
                    height: 150
                    Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    enabled: false
                }
            }
        }

        GridLayout {
            id: rowLayout2
            width: 100
            height: 100
            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                id: playerHand
                color: "#ffffff"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.rowSpan: 2
                Layout.columnSpan: 3
                Layout.row: 4
                Layout.column: 0
                Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
            }

            Rectangle {
                id: playerDeck
                Layout.rowSpan: 2
                Layout.columnSpan: 1
                Layout.alignment: Qt.AlignCenter | Qt.AlignBottom
                Layout.row: 3
                Layout.column: 4
                color: "#ffffff"
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            MouseArea {
                id: profitButton
                height: 65
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.rowSpan: 1
                Layout.columnSpan: 2
                Layout.row: 5
                Layout.column: 4
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                enabled: false

                Rectangle {
                    id: rectangle
                    color: (!profitButton.enabled)? "#de2121":"#00ff00"
                    radius: width * 0.5
                    anchors.fill: parent
                    border.width: 5
                }

                Text {
                    id: text1
                    text: qsTr("Button")
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 40
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    fontSizeMode: Text.Fit
                }
            }

            Rectangle {
                id: enemyDeck
                Layout.rowSpan: 2
                Layout.columnSpan: 1
                Layout.alignment: Qt.AlignRight | Qt.AlignBottom
                Layout.row: 3
                Layout.column: 5
                color: "#ffffff"
                Layout.fillHeight: true
                Layout.fillWidth: true
            }



            Rectangle {
                id: enemyHand
                color: "#ffffff"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 3
                Layout.rowSpan: 2
                Layout.row: 4
                Layout.column: 7
                Layout.alignment: Qt.AlignRight | Qt.AlignBottom
            }




        }
    }

}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
