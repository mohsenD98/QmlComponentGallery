import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0

import "../Tools/"
import "../Drawables/"

Rectangle {
    id: item
    width: parent.width
    height: 50
    radius: 8
    clip: true

    property bool opened: false
    signal itemClicked(var itemName)
    Behavior on height {
        NumberAnimation {
            duration: 135
        }
    }

    Loader {
        id: listIconLoader
        anchors.left: parent.left
        anchors.leftMargin: 24
        anchors.verticalCenter: parent.verticalCenter
        Component.onCompleted: {
            var component = Qt.createComponent(
                        "qrc:/Drawables/" + ic_name + ".qml")
            sourceComponent = component
        }
        onLoaded: listIconLoader.item.controller.fillColor = materialColors.grey_60
    }

    Text {
        text: name
        font.pixelSize: 18
        color: materialColors.grey_60
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: listIconLoader.right
        anchors.leftMargin: 35
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
