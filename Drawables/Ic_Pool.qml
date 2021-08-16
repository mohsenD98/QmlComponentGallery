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
                    
                    path: "M22,21c-1.11,0 -1.73,-0.37 -2.18,-0.64 -0.37,-0.22 -0.6,-0.36 -1.15,-0.36 -0.56,0 -0.78,0.13 -1.15,0.36 -0.46,0.27 -1.07,0.64 -2.18,0.64s-1.73,-0.37 -2.18,-0.64c-0.37,-0.22 -0.6,-0.36 -1.15,-0.36 -0.56,0 -0.78,0.13 -1.15,0.36 -0.46,0.27 -1.08,0.64 -2.19,0.64 -1.11,0 -1.73,-0.37 -2.18,-0.64 -0.37,-0.23 -0.6,-0.36 -1.15,-0.36s-0.78,0.13 -1.15,0.36c-0.46,0.27 -1.08,0.64 -2.19,0.64v-2c0.56,0 0.78,-0.13 1.15,-0.36 0.46,-0.27 1.08,-0.64 2.19,-0.64s1.73,0.37 2.18,0.64c0.37,0.23 0.59,0.36 1.15,0.36 0.56,0 0.78,-0.13 1.15,-0.36 0.46,-0.27 1.08,-0.64 2.19,-0.64 1.11,0 1.73,0.37 2.18,0.64 0.37,0.22 0.6,0.36 1.15,0.36s0.78,-0.13 1.15,-0.36c0.45,-0.27 1.07,-0.64 2.18,-0.64s1.73,0.37 2.18,0.64c0.37,0.23 0.59,0.36 1.15,0.36v2zM22,16.5c-1.11,0 -1.73,-0.37 -2.18,-0.64 -0.37,-0.22 -0.6,-0.36 -1.15,-0.36 -0.56,0 -0.78,0.13 -1.15,0.36 -0.45,0.27 -1.07,0.64 -2.18,0.64s-1.73,-0.37 -2.18,-0.64c-0.37,-0.22 -0.6,-0.36 -1.15,-0.36 -0.56,0 -0.78,0.13 -1.15,0.36 -0.45,0.27 -1.07,0.64 -2.18,0.64s-1.73,-0.37 -2.18,-0.64c-0.37,-0.22 -0.6,-0.36 -1.15,-0.36s-0.78,0.13 -1.15,0.36c-0.47,0.27 -1.09,0.64 -2.2,0.64v-2c0.56,0 0.78,-0.13 1.15,-0.36 0.45,-0.27 1.07,-0.64 2.18,-0.64s1.73,0.37 2.18,0.64c0.37,0.22 0.6,0.36 1.15,0.36 0.56,0 0.78,-0.13 1.15,-0.36 0.45,-0.27 1.07,-0.64 2.18,-0.64s1.73,0.37 2.18,0.64c0.37,0.22 0.6,0.36 1.15,0.36s0.78,-0.13 1.15,-0.36c0.45,-0.27 1.07,-0.64 2.18,-0.64s1.73,0.37 2.18,0.64c0.37,0.22 0.6,0.36 1.15,0.36v2zM8.67,12c0.56,0 0.78,-0.13 1.15,-0.36 0.46,-0.27 1.08,-0.64 2.19,-0.64 1.11,0 1.73,0.37 2.18,0.64 0.37,0.22 0.6,0.36 1.15,0.36s0.78,-0.13 1.15,-0.36c0.12,-0.07 0.26,-0.15 0.41,-0.23L10.48,5C8.93,3.45 7.5,2.99 5,3v2.5c1.82,-0.01 2.89,0.39 4,1.5l1,1 -3.25,3.25c0.31,0.12 0.56,0.27 0.77,0.39 0.37,0.23 0.59,0.36 1.15,0.36z"                }
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