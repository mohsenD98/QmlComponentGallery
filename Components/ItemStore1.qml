import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Drawables/"

Rectangle {
    height: image.height + desc.height + 30
    width: mainWindow.width / 2.5 > 192 ? 192 : mainWindow.width / 2.5 // mainWindow from main.qml
    radius: 6
    clip: true

    Image {
        id: image
        source: le_image
        height: parent.width
        fillMode: Image.PreserveAspectFit
    }

    Rectangle {
        id: desc
        height: descColumn.height
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: image.bottom
        anchors.margins: 16
        clip: true

        Ic_more3Dot {
            id: ic_more
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            controller.fillColor: materialColors.grey_40
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1

            function onControllerClicked(value) {
                console.log(value)
            }
        }

        Column {
            id: descColumn
            anchors.right: ic_more.left
            anchors.rightMargin: 8
            anchors.left: parent.left
            spacing: 16
            clip: true
            Text {
                color: materialColors.grey_90
                font.pixelSize: 16
                font.bold: true
                text: le_name
                wrapMode: Text.WrapAnywhere
            }

            Text {
                color: materialColors.grey_60
                text: le_author
                font.pixelSize: 13
                wrapMode: Text.Wrap
            }
        }
    }
}
