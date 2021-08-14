import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Drawables/"
import "../Tools/"
import ".."

Rectangle {
    height: 50
    color: "transparent"
    radius: 4

    signal btnPressed(var value)

    Colors {
        id: materialColors
    }

    Loader {
        id: btnIconLoader
        anchors.top: parent.top
        anchors.topMargin: 6
        anchors.horizontalCenter: parent.horizontalCenter
        Component.onCompleted: {
            var component = Qt.createComponent(le_btnIconPath)
            sourceComponent = component
        }

        Binding {
            target: btnIconLoader.item.controller
            property: "fillColor"

            value: le_hasFocus ? le_focusedColor : le_unFocusedColor
        }

        onLoaded: {
            if (le_hasFocus) {
                btnIconLoader.item.controller.fillColor = le_focusedColor
            } else {
                btnIconLoader.item.controller.fillColor = le_unFocusedColor
            }
        }
    }

    Text {
        text: le_btnName
        font.pixelSize: 12
        anchors.top: btnIconLoader.bottom
        anchors.topMargin: 2
        anchors.horizontalCenter: parent.horizontalCenter
        color: le_hasFocus ? le_focusedColor : le_unFocusedColor
    }
    MouseArea {
        id: btnMouseArea
        anchors.fill: parent

        onClicked: {
            btnPressed(le_btnName)
        }
    }
    RippleLayout {
        anchors.fill: parent
        mouseArea: btnMouseArea
    }
}
