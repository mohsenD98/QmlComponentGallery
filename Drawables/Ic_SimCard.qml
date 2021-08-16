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
                    
                    path: "M19.99,4c0,-1.1 -0.89,-2 -1.99,-2h-8L4,8v12c0,1.1 0.9,2 2,2h12.01c1.1,0 1.99,-0.9 1.99,-2l-0.01,-16zM9,19L7,19v-2h2v2zM17,19h-2v-2h2v2zM9,15L7,15v-4h2v4zM13,19h-2v-4h2v4zM13,13h-2v-2h2v2zM17,15h-2v-4h2v4z"                }
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
