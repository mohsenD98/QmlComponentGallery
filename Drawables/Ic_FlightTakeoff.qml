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
                    
                    path: "M2.5,19h19v2h-19zM22.07,9.64c-0.21,-0.8 -1.04,-1.28 -1.84,-1.06L14.92,10l-6.9,-6.43 -1.93,0.51 4.14,7.17 -4.97,1.33 -1.97,-1.54 -1.45,0.39 1.82,3.16 0.77,1.33 1.6,-0.43 5.31,-1.42 4.35,-1.16L21,11.49c0.81,-0.23 1.28,-1.05 1.07,-1.85z"                }
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
