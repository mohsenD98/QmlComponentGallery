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
                    
                    path: "M23.64,7c-0.45,-0.34 -4.93,-4 -11.64,-4 -1.5,0 -2.89,0.19 -4.15,0.48L18.18,13.8 23.64,7zM17.04,15.22L3.27,1.44 2,2.72l2.05,2.06C1.91,5.76 0.59,6.82 0.36,7l11.63,14.49 0.01,0.01 0.01,-0.01 3.9,-4.86 3.32,3.32 1.27,-1.27 -3.46,-3.46z"                }
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
