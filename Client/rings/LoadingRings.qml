import QtQuick 2.4

Item {
    id: item1
    width: 160
    height: 160
    Repeater{
        model:3
        Ring{
            id:test1
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            scale: 0.4 + index * 0.2
            RotationAnimation on rotation {
                from: 0
                to: 360
                duration: 1500 + index * 500
                loops: Animation.Infinite
            }
        }
    }
}
