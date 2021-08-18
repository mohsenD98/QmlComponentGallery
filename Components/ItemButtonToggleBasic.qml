import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../Drawables/"
import "../Tools/"

Rectangle {
    id: root
    height: 40
    width: ((le_showText ? text.width : 0)
            + (le_showIcon ? listIconLoader.width : 0)) * 1.4 + 10 // margins
    color: le_backGroundColor
    border.color: le_selected ? le_accentColor : materialColors.grey_20
    border.width: 2

    signal itemClicked(var name)
    Row {
        anchors.centerIn: parent
        spacing: 10

        Loader {
            id: listIconLoader
            Component.onCompleted: {
                var component = Qt.createComponent(
                            "qrc:/Drawables/" + le_icon + ".qml")
                sourceComponent = component
            }
            visible: le_showIcon

            Binding {
                target: listIconLoader.item.controller
                property: "fillColor"

                value: le_selected ? le_accentColor : materialColors.grey_20
            }

            onLoaded: {
                if (le_selected) {
                    listIconLoader.item.controller.fillColor = le_accentColor
                } else {
                    listIconLoader.item.controller.fillColor = materialColors.grey_20
                }
                if (!le_showText) {
                    listIconLoader.item.baseShape.scale = 1.25
                    root.height = 45
                    root.width = 50
                }
            }
        }

        Text {
            id: text
            text: le_text
            font.pixelSize: 14
            color: le_selected ? le_accentColor : materialColors.grey_20
            visible: le_showText
            font.bold: true
        }
    }

    Rectangle {
        id: mask
        anchors.fill: parent
        color: le_selected ? le_accentColor : "transparent"
        opacity: le_selected ? .2 : 1

        MouseArea {
            id: itemMouseArea
            anchors.fill: parent

            onClicked: {
                console.log(le_text)
                if (le_unselectable)
                    if (listIconLoader.item.controller.fillColor === le_accentColor)
                        listIconLoader.item.controller.fillColor = materialColors.grey_20
                    else {
                        listIconLoader.item.controller.fillColor = le_accentColor
                    }
                else
                    listIconLoader.item.controller.fillColor = le_accentColor

                itemClicked(le_text)
            }
        }
        RippleLayout {
            anchors.fill: parent
            mouseArea: itemMouseArea
        }
    }
}
