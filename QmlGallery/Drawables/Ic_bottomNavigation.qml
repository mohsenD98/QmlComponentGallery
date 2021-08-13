import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

Item {
    property alias controller: shapeController
    property alias controllerBox: shapeControllerBox
    signal controllerClicked(var value)

    width: 20
    height: 20
    Rectangle {
        id: shapeControllerBox
        width: parent.width
        height: parent.height

        color: "transparent"

        Shape {
            anchors.fill: parent
            anchors.centerIn: parent
            ShapePath {
                id: shapeController
                fillColor: "white"
                strokeWidth: 1
                strokeColor: "transparent"
                PathSvg {
                    path: "M10,18h5L15,5h-5v13zM4,18h5L9,5L4,5v13zM16,5v13h5L21,5h-5z"
                }
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                onControllerClicked("clicked")
            }
        }
    }
}
