import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Drawables/"

Rectangle {
    height: image.height
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
}
