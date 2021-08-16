import QtQuick 2.12
import QtQuick.Controls 2.12

import "../"
import "../Components/"
import "../Drawables/"

Item {

    Colors {
        id: materialColors
    }

    Component.onCompleted: {
        bottomSheetBasic.controller.open()
    }

    CompSearchBar {
        id: searchBar
        anchors.top: parent.top
        anchors.topMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 12
        anchors.right: parent.right
        anchors.rightMargin: 12
        height: 50
        clip: true

        Behavior on height {
            NumberAnimation {
                duration: 100
            }
        }
    }

    Rectangle {
        anchors.fill: parent
        color: materialColors.grey_5

        Rectangle {
            anchors.bottom: bottomSheetBasic.top
            anchors.bottomMargin: 45
            anchors.right: parent.right
            anchors.rightMargin: 25
            color: materialColors.colorAccent
            height: 50
            width: 50
            radius: 50

            Ic_PinDrop {
                anchors.centerIn: parent
                controller.fillColor: "white"
                controller.strokeColor: "transparent"
                controller.strokeWidth: 1
                function onControllerClicked(value) {
                    bottomSheetBasic.controller.open()
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    bottomSheetBasic.controller.open()
                }
            }
        }

        CompBottomSheetMap {
            id: bottomSheetBasic
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
        }
    }
}
