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
                    path: "M13,2.05v3.03c3.39,0.49 6,3.39 6,6.92 0,0.9 -0.18,1.75 -0.48,2.54l2.6,1.53c0.56,-1.24 0.88,-2.62 0.88,-4.07 0,-5.18 -3.95,-9.45 -9,-9.95zM12,19c-3.87,0 -7,-3.13 -7,-7 0,-3.53 2.61,-6.43 6,-6.92V2.05c-5.06,0.5 -9,4.76 -9,9.95 0,5.52 4.47,10 9.99,10 3.31,0 6.24,-1.61 8.06,-4.09l-2.6,-1.53C16.17,17.98 14.21,19 12,19z"
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
