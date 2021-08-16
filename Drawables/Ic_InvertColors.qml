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
                    
                    path: "M17.66,7.93L12,2.27 6.34,7.93c-3.12,3.12 -3.12,8.19 0,11.31C7.9,20.8 9.95,21.58 12,21.58c2.05,0 4.1,-0.78 5.66,-2.34 3.12,-3.12 3.12,-8.19 0,-11.31zM12,19.59c-1.6,0 -3.11,-0.62 -4.24,-1.76C6.62,16.69 6,15.19 6,13.59s0.62,-3.11 1.76,-4.24L12,5.1v14.49z"                }
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
