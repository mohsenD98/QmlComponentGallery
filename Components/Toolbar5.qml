import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.12

import "../Drawables/"
import "../"

Item {
    property real toolbarHeight
    property color backgroundColor
    Colors {
        id: materialStatics
    }
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
            anchors.leftMargin: 16
            anchors.verticalCenter: parent.verticalCenter
            controller.fillColor: "white"
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1
            baseShape.scale: 1.2

            onControllerClicked: {
                stackview.pop()
            }
        }

        Ic_MoreVert {
            id: icMoreDotBox
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 16
            controller.fillColor: "white"
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1
            baseShape.scale: 1.2
            function onControllerClicked(value) {
                console.log(value)
            }
        }

        Ic_Search {
            id: icSearchBox
            height: 20
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: icMoreDotBox.left
            anchors.rightMargin: 28
            controller.fillColor: "white"
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1
            baseShape.scale: 1.2
            function onControllerClicked(value) {
                console.log(value)
            }
        }
    }
}
