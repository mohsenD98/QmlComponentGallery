import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

Item {
    property alias controller: icMenu
    Shape {
        anchors.fill: parent
        anchors.centerIn: parent
        ShapePath {
            id:icMenu
            fillColor: "white"
            strokeWidth: 1
            strokeColor: "transparent"
            PathSvg { path: "M3,18h18v-2L3,16v2zM3,13h18v-2L3,11v2zM3,6v2h18L21,6L3,6z" }
        }
    }
}
