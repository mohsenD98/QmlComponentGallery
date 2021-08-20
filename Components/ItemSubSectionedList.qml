import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0

import "../Tools/"

Rectangle {
    id: base
    height: 80
    radius: 8
    color: "transparent"
    clip: true

    property bool opened: false
    signal layoutSelected(var path)

    Text {
        id: modelName
        text: le_name
        color: "black"
        anchors.left: image.right
        anchors.leftMargin: 24
        anchors.top: image.top
        anchors.topMargin: 16
        font.pixelSize: 12
    }
    Text {
        id: modelText
        text: le_text
        color: materialStatics.grey_60
        anchors.top: modelName.bottom
        anchors.topMargin: 5
        anchors.left: image.right
        anchors.leftMargin: 24
        anchors.right: parent.right
        anchors.rightMargin: 24
        font.pixelSize: 12
        wrapMode: Text.WordWrap
        clip: true
    }
    Rectangle {
        id: mask
        color: "black"
        width: 70
        height: 70
        radius: 70
        visible: false
    }
    Image {
        id: image
        source: "qrc:/images/" + le_pic + ".jpg"
        width: 70
        height: 70
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        fillMode: Image.PreserveAspectFit
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
        }
    }

    RippleLayout {
        mouseArea: baseModelNameArea
        anchors.fill: base
    }

    MouseArea {
        id: baseModelNameArea
        anchors.fill: parent

        onClicked: {
            layoutSelected("click : " + le_name)
        }
    }
}
