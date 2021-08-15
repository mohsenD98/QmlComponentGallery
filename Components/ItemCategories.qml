import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Drawables/"

Rectangle {
    height: rect.height
    width: mainWindow.width / 2.2 > 218.18 ? 218.18 : mainWindow.width
                                             / 2.5 // mainWindow from main.qml
    radius: 6
    clip: true

    Rectangle {
        id: rect
        color: le_color
        height: 40
        width: parent.width
        radius: 4

        Text {
            text: le_name
            anchors.centerIn: parent
            font.pixelSize: 18
            font.bold: true
            color: "white"
        }
    }
}
