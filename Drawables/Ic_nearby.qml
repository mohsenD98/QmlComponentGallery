import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

Item {
    property alias controller: shapeController
    property alias controllerBox: shapeControllerBox
    signal controllerClicked(var value)

    width: 20
    height: 20
    Rectangle {
        id: shapeControllerBox
        width: parent.width
        height: parent.height

        color: "transparent"

        Shape {
            anchors.fill: parent
            anchors.centerIn: parent
            ShapePath {
                id: shapeController
                fillColor: "white"
                strokeWidth: 1
                strokeColor: "transparent"
                PathSvg {
                    path: "M18,8c0,-3.31 -2.69,-6 -6,-6S6,4.69 6,8c0,4.5 6,11 6,11s6,-6.5 6,-11zM10,8c0,-1.1 0.9,-2 2,-2s2,0.9 2,2 -0.89,2 -2,2c-1.1,0 -2,-0.9 -2,-2zM5,20v2h14v-2L5,20z"
                }
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                controllerClicked("clicked")
            }
        }
    }
}
