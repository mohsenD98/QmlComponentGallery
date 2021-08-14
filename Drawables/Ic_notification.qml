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
                    path: "M12,22c1.1,0 2,-0.9 2,-2h-4c0,1.1 0.89,2 2,2zM18,16v-5c0,-3.07 -1.64,-5.64 -4.5,-6.32L13.5,4c0,-0.83 -0.67,-1.5 -1.5,-1.5s-1.5,0.67 -1.5,1.5v0.68C7.63,5.36 6,7.92 6,11v5l-2,2v1h16v-1l-2,-2z"
                }
            }
        }

        Rectangle {
            width: 8
            height: width
            radius: width
            visible: true
            anchors.right: parent.right
            anchors.top: parent.top
            color: materialColors.colorAccentDark
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                controllerClicked("clicked")
            }
        }
    }
}
