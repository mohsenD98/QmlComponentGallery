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
                    
                    path: "M9,11.75c-0.69,0 -1.25,0.56 -1.25,1.25s0.56,1.25 1.25,1.25 1.25,-0.56 1.25,-1.25 -0.56,-1.25 -1.25,-1.25zM15,11.75c-0.69,0 -1.25,0.56 -1.25,1.25s0.56,1.25 1.25,1.25 1.25,-0.56 1.25,-1.25 -0.56,-1.25 -1.25,-1.25zM12,2C6.48,2 2,6.48 2,12s4.48,10 10,10 10,-4.48 10,-10S17.52,2 12,2zM12,20c-4.41,0 -8,-3.59 -8,-8 0,-0.29 0.02,-0.58 0.05,-0.86 2.36,-1.05 4.23,-2.98 5.21,-5.37C11.07,8.33 14.05,10 17.42,10c0.78,0 1.53,-0.09 2.25,-0.26 0.21,0.71 0.33,1.47 0.33,2.26 0,4.41 -3.59,8 -8,8z"                }
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
