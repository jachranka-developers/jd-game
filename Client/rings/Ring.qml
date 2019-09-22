import QtQuick 2.4

Item {
    id: id_root
    width: 200
    height: 200
    Item {
        id: id_speed
        property int numberIndexs: 25
        property int startAngle: 0
        property int angleLength: 13
        width: 200
        height: 200
    }
    Repeater{
        model: id_speed.numberIndexs
        Item{
            height: id_speed.height
            rotation: index * id_speed.angleLength
            x:id_speed.x + id_speed.width/2
            y:id_speed.y
            Rectangle{
                height: 20
                width: 30
                color: "blue"
                radius: 10
                border.width: 2
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: id_speed.height * 0.03
            }
        }
    }
}
