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
                    
                    path: "M12,5.9c1.16,0 2.1,0.94 2.1,2.1s-0.94,2.1 -2.1,2.1S9.9,9.16 9.9,8s0.94,-2.1 2.1,-2.1m0,9c2.97,0 6.1,1.46 6.1,2.1v1.1L5.9,18.1L5.9,17c0,-0.64 3.13,-2.1 6.1,-2.1M12,4C9.79,4 8,5.79 8,8s1.79,4 4,4 4,-1.79 4,-4 -1.79,-4 -4,-4zM12,13c-2.67,0 -8,1.34 -8,4v3h16v-3c0,-2.66 -5.33,-4 -8,-4z"                }
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
