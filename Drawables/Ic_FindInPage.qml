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
                    
                    path: "M20,19.59V8l-6,-6H6c-1.1,0 -1.99,0.9 -1.99,2L4,20c0,1.1 0.89,2 1.99,2H18c0.45,0 0.85,-0.15 1.19,-0.4l-4.43,-4.43c-0.8,0.52 -1.74,0.83 -2.76,0.83 -2.76,0 -5,-2.24 -5,-5s2.24,-5 5,-5 5,2.24 5,5c0,1.02 -0.31,1.96 -0.83,2.75L20,19.59zM9,13c0,1.66 1.34,3 3,3s3,-1.34 3,-3 -1.34,-3 -3,-3 -3,1.34 -3,3z"                }
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
