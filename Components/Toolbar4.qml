import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.12

import "../Drawables/"


Item {
    property real toolbarHeight
    property color backgroundColor

    height: toolbar.height

    Rectangle {
        id: toolbar
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        height: toolbarHeight
        color: backgroundColor

        Ic_Menu {
            id: ic_menu
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.verticalCenter: parent.verticalCenter
            controller.fillColor: "white"
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1

            onControllerClicked: {
                stackview.pop()
            }
        }

        Text {
            id: appName
            anchors.left: ic_menu.right
            anchors.verticalCenter: ic_menu.verticalCenter
            anchors.leftMargin: 20
            color: "white"
            text: qsTr("Qml Gallery")
            font.pixelSize: 18
            font.family: "Sans Serif"
            font.bold: true
        }

        Ic_MoreVert {
            id: icMoreDotBox
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 8
            controller.fillColor: "white"
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1
            function onControllerClicked(value) {
                console.log(value)
            }
        }

        Ic_Notifications {
            id: icSearchBox
            height: 20
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: icMoreDotBox.left
            anchors.rightMargin: 28
            controller.fillColor: "white"
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1
            function onControllerClicked(value) {
                console.log(value)
            }
        }
    }
}
