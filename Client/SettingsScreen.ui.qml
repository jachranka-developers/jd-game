import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    id: settingsPage
    //width: 1920
    //height: 1024

    title: qsTr("Settings")

    Rectangle {
        id: background
        color: "#3b3737"
        anchors.fill: parent
    }

    GridLayout {
        id: gridLayout
        columnSpacing: 6
        rowSpacing: 6
        anchors.rightMargin: 50
        anchors.leftMargin: 50
        anchors.bottomMargin: 50
        anchors.topMargin: 50
        rows: 6
        columns: 3
        anchors.fill: parent


        Text {
            id: lblScreen
            color: "#f31515"
            text: qsTr("Screen")
            Layout.columnSpan: 3
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.pixelSize: 70
            fontSizeMode: Text.Fit
        }

        Item {
            id: element
            width: 200
            height: 200
            Layout.fillHeight: true
            Layout.columnSpan: 3
            Layout.fillWidth: true
        }

        Text {
            id: lblResolution
            text: qsTr("Resolution")
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 40
            Layout.fillHeight: true
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            fontSizeMode: Text.Fit
        }

        ComboBox {
            id: cboxResolution
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Item {
            id: element4
            width: 200
            height: 200
            Layout.columnSpan: 3
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Text {
            id: lblFullscreen
            text: qsTr("Fullscreen")
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 40
            Layout.fillHeight: true
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            fontSizeMode: Text.Fit
        }

        Switch {
            id: switchFullscreen
            text: qsTr("")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Item {
            id: element3
            width: 200
            height: 200
            Layout.columnSpan: 3
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Text {
            id: lblLanguage
            color: "#f31515"
            text: qsTr("Language")
            Layout.columnSpan: 3
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 70
            font.bold: true
            Layout.fillHeight: true
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            fontSizeMode: Text.Fit
        }

        Item {
            id: element2
            width: 200
            height: 200
            Layout.columnSpan: 3
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Text {
            id: lblLanguageRow
            text: qsTr("Language")
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 40
            Layout.fillHeight: true
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            fontSizeMode: Text.Fit
        }

        ComboBox {
            id: cboxLanguage
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Item {
            id: element1
            width: 200
            height: 200
            Layout.columnSpan: 3
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: bttnCancel
            text: qsTr("Cancel")
            Layout.fillHeight: true
            Layout.fillWidth: true
            contentItem: Text{
                fontSizeMode: Text.Fit
                font.pointSize: 70
                minimumPointSize: 1
                text: bttnCancel.text
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }

        Button {
            id: bttnDefault
            text: qsTr("Default settings")
            Layout.fillHeight: true
            Layout.fillWidth: true
            contentItem: Text{
                fontSizeMode: Text.Fit
                font.pointSize: 70
                minimumPointSize: 1
                text: bttnDefault.text
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }

        Button {
            id: bttnSave
            text: qsTr("Save changes")
            Layout.fillHeight: true
            Layout.fillWidth: true
            contentItem: Text{
                fontSizeMode: Text.Fit
                font.pointSize: 70
                minimumPointSize: 1
                text: bttnSave.text
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
            //onClicked: console.log(ApplicationWindow.title)
        }
    }
}
