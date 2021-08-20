import QtQuick 2.12
import QtQuick.Controls 2.12

import "../"
import "../Components/"

Item {

    Colors {
        id: materialStatics
    }

    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_5

        Toolbar4 {
            id: searchBar
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            backgroundColor: materialStatics.colorPrimary
            toolbarHeight: 50
            clip: true

            Behavior on height {
                NumberAnimation {
                    duration: 100
                }
            }
        }

        TabPeoples {
            id: tabStore
            anchors.top: searchBar.bottom
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.left: parent.left
            anchors.right: parent.right

            onDraggingDown: {
                // show elements
                searchBar.height = 50
                bottomNavigationBasicBox.height = 50
                tabStore.anchors.topMargin = 20
            }
            onDraggingUp: {
                // hide elements
                searchBar.height = 0
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
