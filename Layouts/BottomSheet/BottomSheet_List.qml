import QtQuick 2.12
import QtQuick.Controls 2.12

import "../../Components/"
import "../"

Item {

    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_5

        GeneralToolBar {
            id: toolbar
            backgroundColor: materialStatics.colorPrimary
            iconsColor: "white"
            toolBarText: "Qml Gallery"
            leftIcon: "Ic_Menu"
            rightIconLeft: "Ic_Notifications"
            rightIconRight: "Ic_MoreVert"

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
        }

        TabPeoples {
            id: tabStore
            anchors.top: toolbar.bottom
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.left: parent.left
            anchors.right: parent.right

            onDraggingDown: {
                // show elements
                toolbar.height = 50
                bottomNavigationBasicBox.height = 50
                tabStore.anchors.topMargin = 20
            }
            onDraggingUp: {
                // hide elements
                toolbar.height = 0
                bottomNavigationBasicBox.height = 0
                tabStore.anchors.topMargin = 5
            }
            onPersonClicked: {
                console.log(name)
                bottomSheetBasic.model = name
                if (!bottomSheetBasic.controller.opened) {
                    bottomSheetBasic.controller.open()
                } else {
                    bottomSheetBasic.controller.close()
                }
            }
        }

        CompBottomSheetList {
            id: bottomSheetBasic
            controller.modal: true
            controller.interactive: false
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.bottom: parent.bottom

            model: "Visibility,PersonAdd,Insert Link, Content Copy"
        }
    }
}
