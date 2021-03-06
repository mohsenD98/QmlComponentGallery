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
                    
                    path: "m510.949,150.5c-1.199,-27.199 -5.598,-45.898 -11.898,-62.102 -6.5,-17.199 -16.5,-32.598 -29.602,-45.398 -12.801,-13 -28.301,-23.102 -45.301,-29.5 -16.297,-6.301 -34.898,-10.699 -62.098,-11.898 -27.402,-1.301 -36.102,-1.602 -105.602,-1.602s-78.199,0.301 -105.5,1.5c-27.199,1.199 -45.898,5.602 -62.098,11.898 -17.203,6.5 -32.602,16.5 -45.402,29.602 -13,12.801 -23.098,28.301 -29.5,45.301 -6.301,16.301 -10.699,34.898 -11.898,62.098 -1.301,27.402 -1.602,36.102 -1.602,105.602s0.301,78.199 1.5,105.5c1.199,27.199 5.602,45.898 11.902,62.102 6.5,17.199 16.598,32.598 29.598,45.398 12.801,13 28.301,23.102 45.301,29.5 16.301,6.301 34.898,10.699 62.102,11.898 27.297,1.203 36,1.5 105.5,1.5s78.199,-0.297 105.5,-1.5c27.199,-1.199 45.898,-5.598 62.098,-11.898 34.402,-13.301 61.602,-40.5 74.902,-74.898 6.297,-16.301 10.699,-34.902 11.898,-62.102 1.199,-27.301 1.5,-36 1.5,-105.5s-0.102,-78.199 -1.301,-105.5zM464.852,359.5c-1.102,25 -5.301,38.5 -8.801,47.5 -8.602,22.301 -26.301,40 -48.602,48.602 -9,3.5 -22.598,7.699 -47.5,8.797 -27,1.203 -35.098,1.5 -103.398,1.5s-76.5,-0.297 -103.402,-1.5c-25,-1.098 -38.5,-5.297 -47.5,-8.797 -11.098,-4.102 -21.199,-10.602 -29.398,-19.102 -8.5,-8.301 -15,-18.301 -19.102,-29.398 -3.5,-9 -7.699,-22.602 -8.797,-47.5 -1.203,-27 -1.5,-35.102 -1.5,-103.402s0.297,-76.5 1.5,-103.398c1.098,-25 5.297,-38.5 8.797,-47.5 4.102,-11.102 10.602,-21.199 19.203,-29.402 8.297,-8.5 18.297,-15 29.398,-19.098 9,-3.5 22.602,-7.699 47.5,-8.801 27,-1.199 35.102,-1.5 103.398,-1.5 68.402,0 76.5,0.301 103.402,1.5 25,1.102 38.5,5.301 47.5,8.801 11.098,4.098 21.199,10.598 29.398,19.098 8.5,8.301 15,18.301 19.102,29.402 3.5,9 7.699,22.598 8.801,47.5 1.199,27 1.5,35.098 1.5,103.398s-0.301,76.301 -1.5,103.301zM464.852,359.5"                }
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
