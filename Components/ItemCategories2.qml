import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Drawables/"

Rectangle {
    // mainWindow from main.qml
    height: mainWindow.height / 4.5 > 160 ? 160 : mainWindow.height / 4.5
    width: mainWindow.width / 2.1 > 228 ? 228 : mainWindow.width / 2.5
    radius: 6
    clip: true

    Rectangle {
        id: rect
        color: le_back_color
        height: parent.height
        width: parent.width
        radius: 4

        Loader {
            id: listIconLoader
            anchors.top: parent.top
            anchors.topMargin: parent.height / 4
            anchors.horizontalCenter: parent.horizontalCenter
            Component.onCompleted: {
                var component = Qt.createComponent(
                            "qrc:/Drawables/" + le_ic_name + ".qml")
                sourceComponent = component
            }
            onLoaded: {
                listIconLoader.item.controller.fillColor = le_ic_color
                listIconLoader.item.baseShape.scale = 2.7
            }
        }

        Text {
            text: le_desc
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 18
            font.bold: true
            color: le_text_color
        }
    }
}
