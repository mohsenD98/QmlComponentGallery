import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

Item {
    property alias controller: shapeController
    property alias baseShape: shape
    property alias controllerBox: shapeControllerBox
    signal controllerClicked(var value)
    property bool doRotate: false

    width: 20
    height: 20
    Rectangle {
        id: shapeControllerBox
        width: parent.width
        height: parent.height

        color: "transparent"

        Shape {
            id: shape
            anchors.fill: parent
            anchors.centerIn: parent
            rotation: doRotate ? 180 : 0
            ShapePath {
                id: shapeController
                fillColor: "white"
                strokeWidth: 1
                strokeColor: "transparent"
                PathSvg {
                    path: "M17.21,9l-4.38,-6.56c-0.19,-0.28 -0.51,-0.42 -0.83,-0.42 -0.32,0 -0.64,0.14 -0.83,0.43L6.79,9L2,9c-0.55,0 -1,0.45 -1,1 0,0.09 0.01,0.18 0.04,0.27l2.54,9.27c0.23,0.84 1,1.46 1.92,1.46h13c0.92,0 1.69,-0.62 1.93,-1.46l2.54,-9.27L23,10c0,-0.55 -0.45,-1 -1,-1h-4.79zM9,9l3,-4.4L15,9L9,9zM12,17c-1.1,0 -2,-0.9 -2,-2s0.9,-2 2,-2 2,0.9 2,2 -0.9,2 -2,2z"
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
