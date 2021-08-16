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
                    
                    path: "M21,10c-1.1,0 -2,0.9 -2,2v3L5,15v-3c0,-1.1 -0.9,-2 -2,-2s-2,0.9 -2,2v5c0,1.1 0.9,2 2,2h18c1.1,0 2,-0.9 2,-2v-5c0,-1.1 -0.9,-2 -2,-2zM18,5L6,5c-1.1,0 -2,0.9 -2,2v2.15c1.16,0.41 2,1.51 2,2.82L6,14h12v-2.03c0,-1.3 0.84,-2.4 2,-2.82L20,7c0,-1.1 -0.9,-2 -2,-2z"                }
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
