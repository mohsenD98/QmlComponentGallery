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
                    
                    path: "M17,11v2h-1.46l4.68,4.68C21.34,16.07 22,14.11 22,12c0,-5.52 -4.48,-10 -10,-10 -2.11,0 -4.07,0.66 -5.68,1.78L13.54,11H17zM2.27,2.27L1,3.54l2.78,2.78C2.66,7.93 2,9.89 2,12c0,5.52 4.48,10 10,10 2.11,0 4.07,-0.66 5.68,-1.78L20.46,23l1.27,-1.27L11,11 2.27,2.27zM7,13v-2h1.46l2,2H7z"                }
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
