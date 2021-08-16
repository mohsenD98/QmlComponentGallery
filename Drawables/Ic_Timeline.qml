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
                    
                    path: "M23,8c0,1.1 -0.9,2 -2,2 -0.18,0 -0.35,-0.02 -0.51,-0.07l-3.56,3.55c0.05,0.16 0.07,0.34 0.07,0.52 0,1.1 -0.9,2 -2,2s-2,-0.9 -2,-2c0,-0.18 0.02,-0.36 0.07,-0.52l-2.55,-2.55c-0.16,0.05 -0.34,0.07 -0.52,0.07s-0.36,-0.02 -0.52,-0.07l-4.55,4.56c0.05,0.16 0.07,0.33 0.07,0.51 0,1.1 -0.9,2 -2,2s-2,-0.9 -2,-2 0.9,-2 2,-2c0.18,0 0.35,0.02 0.51,0.07l4.56,-4.55C8.02,9.36 8,9.18 8,9c0,-1.1 0.9,-2 2,-2s2,0.9 2,2c0,0.18 -0.02,0.36 -0.07,0.52l2.55,2.55c0.16,-0.05 0.34,-0.07 0.52,-0.07s0.36,0.02 0.52,0.07l3.55,-3.56C19.02,8.35 19,8.18 19,8c0,-1.1 0.9,-2 2,-2s2,0.9 2,2z"                }
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
