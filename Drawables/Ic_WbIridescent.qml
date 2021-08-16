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
                    
                    path: "M5,14.5h14v-6L5,8.5v6zM11,0.55L11,3.5h2L13,0.55h-2zM19.04,3.05l-1.79,1.79 1.41,1.41 1.8,-1.79 -1.42,-1.41zM13,22.45L13,19.5h-2v2.95h2zM20.45,18.54l-1.8,-1.79 -1.41,1.41 1.79,1.8 1.42,-1.42zM3.55,4.46l1.79,1.79 1.41,-1.41 -1.79,-1.79 -1.41,1.41zM4.96,19.95l1.79,-1.8 -1.41,-1.41 -1.79,1.79 1.41,1.42z"                }
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
