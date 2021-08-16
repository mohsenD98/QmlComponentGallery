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
                    
                    path: "M15,6L3,6v2h12L15,6zM15,10L3,10v2h12v-2zM3,16h8v-2L3,14v2zM17,6v8.18c-0.31,-0.11 -0.65,-0.18 -1,-0.18 -1.66,0 -3,1.34 -3,3s1.34,3 3,3 3,-1.34 3,-3L19,8h3L22,6h-5z"                }
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
