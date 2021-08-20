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
    Rectangle {
        anchors.fill: parent
        color: "white"
        radius: 4
        clip: true
        Image {
            id: image
            source: "qrc:/images/image_7.jpg"
            width: parent.width
            height: 1 / 2.2 * parent.height > 327 ? 327 : 1 / 2.2 * parent.height
            fillMode: Image.PreserveAspectCrop
        }
        Text {
            id: title
            text: "Quisque Sapien Lorem"
            font.pixelSize: 29
            color: "black"
            anchors.top: image.bottom
            anchors.topMargin: 16
            anchors.left: parent.left
            anchors.leftMargin: 16
        }

        Text {
            id: desc
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur ipsum in placerat molestie.  Fusce quis mauris a enim sollicitudin"
            font.pixelSize: 20
            wrapMode: Text.WordWrap
            color: materialStatics.grey_60
            anchors.top: title.bottom
            anchors.topMargin: 16
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.right: parent.right
            anchors.rightMargin: 16
            anchors.bottom: share.top
        }

        Button {
            id: share
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.bottomMargin: 16
            text: "SHARE"
            flat: true
            highlighted: true
        }
        Button {
            anchors.bottom: parent.bottom
            anchors.left: share.right
            anchors.leftMargin: 16
            anchors.bottomMargin: 16
            text: "EXPLORE"
            flat: true
            highlighted: true
        }
    }
}
