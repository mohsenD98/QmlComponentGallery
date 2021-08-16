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
                    
                    path: "M12,7L12,3L2,3v18h20L22,7L12,7zM6,19L4,19v-2h2v2zM6,15L4,15v-2h2v2zM6,11L4,11L4,9h2v2zM6,7L4,7L4,5h2v2zM10,19L8,19v-2h2v2zM10,15L8,15v-2h2v2zM10,11L8,11L8,9h2v2zM10,7L8,7L8,5h2v2zM20,19h-8v-2h2v-2h-2v-2h2v-2h-2L12,9h8v10zM18,11h-2v2h2v-2zM18,15h-2v2h2v-2z"                }
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
