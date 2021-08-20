import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.12

import "../Drawables/"


Item {
    property real toolbarHeight
    property color backgroundColor
    property color widgetColors

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
            controller.fillColor: widgetColors
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1

            onControllerClicked: {
                stackview.pop()
            }
        }

        Ic_Search {
            id: icSearchBox
            height: 20
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 8
            controller.fillColor: widgetColors
            controller.strokeColor: "transparent"
            controller.strokeWidth: 1
            function onControllerClicked(value) {
                console.log(value)
            }
        }
    }
}
