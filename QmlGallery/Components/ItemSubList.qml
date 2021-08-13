import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Tools/"

Rectangle {
    id: base
    height: 40
    radius: 8
    color: materialColors.grey_100_

    property bool opened: false

    Text {
        id: modelName
        text: subModelName
        color: "white"
        anchors.left: parent.left
        anchors.leftMargin: 24
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
    }
    RippleLayout {
        mouseArea: baseModelNameArea
        anchors.fill: base
    }

    MouseArea {
        id: baseModelNameArea
        anchors.fill: parent

        onClicked: {

        }
    }
}
