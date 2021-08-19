import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../Drawables/"
import ".."

Pane {
    Colors {
        id: materialColors
    }

    padding: 0
    Material.elevation: 6
    property var backgroundColor
    Rectangle {
        anchors.fill: parent
        color: backgroundColor
        radius: 4

        Text {
            id: call
            text: "Call"
            font.pixelSize: 20
            wrapMode: Text.WordWrap
            color: "white"
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 16
        }
        Ic_Call {
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 16
            baseShape.scale: 1.25
        }

        Text {
            id: title
            text: "Quisque Sapien Lorem"
            font.pixelSize: 29
            color: "white"
            anchors.top: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: parent.height / 2
            width: parent.width - 32
            wrapMode: Text.WordWrap
        }
    }
}
