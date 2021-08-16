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
                    
                    path: "M15.73,3L8.27,3L3,8.27v7.46L8.27,21h7.46L21,15.73L21,8.27L15.73,3zM12,17.3c-0.72,0 -1.3,-0.58 -1.3,-1.3 0,-0.72 0.58,-1.3 1.3,-1.3 0.72,0 1.3,0.58 1.3,1.3 0,0.72 -0.58,1.3 -1.3,1.3zM13,13h-2L11,7h2v6z"                }
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
