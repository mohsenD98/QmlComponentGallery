import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

Item {
    property alias baseShape: shape
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
            id: shape
            anchors.fill: parent
            anchors.centerIn: parent
            ShapePath {
                id: shapeController
                fillColor: "white"
                strokeWidth: 1
                strokeColor: "transparent"
                PathSvg {
                    path: "M12,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM12,10c-1.1,0 -2,0.9 -2,2s0.9,2 2,2 2,-0.9 2,-2 -0.9,-2 -2,-2zM12,16c-1.1,0 -2,0.9 -2,2s0.9,2 2,2 2,-0.9 2,-2 -0.9,-2 -2,-2z"
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
