import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0

import "../Tools/"
import "../Drawables/"

Rectangle {
    id: item
    width: parent.width
    height: 75
    radius: 8
    clip: true

    property bool opened: false
    signal itemClicked(var itemName)
    Behavior on height {
        NumberAnimation {
            duration: 135
        }
    }

    Text {
        text: name
        font.pixelSize: 18
        color: "black"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 20
    }

    Rectangle {
        id: mask
        color: "black"
        width: 60
        height: 60
        radius: 60
        visible: false
    }
    Image {
        id: image
        source: "qrc:/images/" + le_image + ".jpg"
        width: 60
        height: 60
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        fillMode: Image.PreserveAspectFit
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
        }
    }

    MouseArea {
        id: itemMouseArea
        anchors.fill: parent

        onClicked: {
            itemClicked(name)
            console.log("clicked")
        }
    }
    RippleLayout {
        anchors.fill: parent
        mouseArea: itemMouseArea
    }
}
