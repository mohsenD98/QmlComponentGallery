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
            id: title
            text: "Aliquet Et Ante Morbi"
            font.pixelSize: 29
            color: "white"
            anchors.top: parent.top
            anchors.topMargin: 16
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.right: parent.right
            anchors.rightMargin: 16
            wrapMode: Text.WordWrap
        }
        Rectangle {
            id: splitter1
            height: 1
            width: parent.width
            color: materialColors.grey_40
            anchors.top: title.bottom
            anchors.topMargin: 16
        }

        Text {
            id: desc
            text: "March 19, 2017"
            font.pixelSize: 18
            wrapMode: Text.WordWrap
            color: "white"
            anchors.top: splitter1.bottom
            anchors.topMargin: 16
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.right: parent.right
            anchors.rightMargin: 16
        }
        Ic_Event {
            anchors.right: parent.right
            anchors.verticalCenter: desc.verticalCenter
            anchors.rightMargin: 16
            baseShape.scale: 1.25
        }
    }
}
