import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Drawables/"
import ".."

Item {
    Colors {
        id: materialStatics
    }

    Rectangle {
        anchors.fill: parent
        color: "white"
        radius: 4

        Ic_Menu {
            id: menuBtn
            controller.fillColor: materialStatics.grey_60
            anchors.left: parent.left
            anchors.leftMargin: 24
            anchors.verticalCenter: parent.verticalCenter
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1

            onControllerClicked: {
                stackview.pop()
            }
        }

        TextInput {
            id: searchText
            anchors.left: menuBtn.right
            anchors.leftMargin: 12
            anchors.right: micBtn.right
            anchors.rightMargin: 12
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 18
            enabled: false

            onTextChanged: {
                if (text !== "") {
                    placeholder.visible = false
                } else {
                    placeholder.visible = true
                }
            }

            // as place holder
            Text {
                id: placeholder
                text: "Search"
                font.pixelSize: 18
                color: materialStatics.grey_60
            }
        }
        Ic_Mic {
            id: micBtn
            controller.fillColor: materialStatics.grey_60
            anchors.right: parent.right
            anchors.rightMargin: 24
            anchors.verticalCenter: parent.verticalCenter
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1
        }
    }
}
