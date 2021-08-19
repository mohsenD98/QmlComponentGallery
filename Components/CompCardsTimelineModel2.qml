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
    property var imageSource
    Rectangle {
        anchors.fill: parent
        color: "white"
        radius: 4
        clip: true
        Rectangle {
            id: sec1
            width: parent.width
            height: 1 / 3 * parent.height > 240 ? 240 : 1 / 3 * parent.height
        }

        Image {
            id: image
            source: imageSource
            width: parent.width
            anchors.top: sec1.bottom
            height: 1 / 3 * parent.height > 240 ? 240 : 1 / 3 * parent.height
            fillMode: Image.PreserveAspectCrop
        }

        Rectangle {
            anchors.bottom: image.bottom
            width: parent.width
            height: 1 / 3 * parent.height > 240 ? 240 : 1 / 3 * parent.height
        }
    }
}
