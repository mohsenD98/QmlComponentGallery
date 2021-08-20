import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Drawables/"

Rectangle {
    height: image.height + desc.height + 30
    width: mainWindow.width / 3.25 > 147.5 ? 147.5 : mainWindow.width
                                             / 3.25 // mainWindow from main.qml
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
        height: descText.height
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: image.bottom
        anchors.margins: 16
        clip: true

        Text {
            id: descText
            color: materialStatics.grey_90
            font.pixelSize: 16
            font.bold: true
            text: le_name
            wrapMode: Text.WrapAnywhere
        }
    }
}
