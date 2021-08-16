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
                    
                    path: "M13.127,14.56l1.43,-1.43 6.44,6.443L19.57,21zM17.42,8.83l2.86,-2.86c-3.95,-3.95 -10.35,-3.96 -14.3,-0.02 3.93,-1.3 8.31,-0.25 11.44,2.88zM5.95,5.98c-3.94,3.95 -3.93,10.35 0.02,14.3l2.86,-2.86C5.7,14.29 4.65,9.91 5.95,5.98zM5.97,5.96l-0.01,0.01c-0.38,3.01 1.17,6.88 4.3,10.02l5.73,-5.73c-3.13,-3.13 -7.01,-4.68 -10.02,-4.3z"                }
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
