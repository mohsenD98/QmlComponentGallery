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
                    
                    path: "M2.5,19h19v2h-19zM9.68,13.27l4.35,1.16 5.31,1.42c0.8,0.21 1.62,-0.26 1.84,-1.06 0.21,-0.8 -0.26,-1.62 -1.06,-1.84l-5.31,-1.42 -2.76,-9.02L10.12,2v8.28L5.15,8.95l-0.93,-2.32 -1.45,-0.39v5.17l1.6,0.43 5.31,1.43z"                }
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
