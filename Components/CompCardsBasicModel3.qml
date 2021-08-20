import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../Drawables/"
import ".."

Pane {
    Colors {
        id: materialStatics
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
            text: "Quisque Sapien Lorem"
            font.pixelSize: 29
            color: "white"
            anchors.top: parent.top
            anchors.topMargin: 16
            anchors.left: parent.left
            anchors.leftMargin: 16
        }

        Text {
            id: desc
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            font.pixelSize: 20
            wrapMode: Text.WordWrap
            color: materialStatics.grey_10
            anchors.top: title.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.right: parent.right
            anchors.rightMargin: 16
            anchors.bottom: listenNow.top
        }

        Button {
            id: listenNow
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.bottomMargin: 8
            text: "LISTEN NOW"
            flat: true
            highlighted: true
            Material.accent: "white"
            contentItem: Text {
                font.pixelSize: 17
                font.weight: Font.DemiBold
                text: listenNow.text
                color: "white"
            }
        }
    }
}
