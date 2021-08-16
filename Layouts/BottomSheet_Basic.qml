import QtQuick 2.12
import QtQuick.Controls 2.12

import "../"
import "../Components/"

Item {

    Colors {
        id: materialColors
    }

    Rectangle {
        anchors.fill: parent
        color: materialColors.grey_5

        Toolbar4 {
            id: searchBar
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            backgroundColor: materialColors.colorPrimary
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
                if (!bottomSheetBox.opened) {
                    bottomSheetBox.open()
                } else {
                    bottomSheetBox.close()
                }
            }
        }

        Drawer {
            id: bottomSheetBox
            edge: Qt.BottomEdge
            width: parent.width
            height: mainWindow.height / 2.95 > 244.06 ? 244.06 : mainWindow.height / 2.95
            modal: true
            interactive: false

            Rectangle {
                anchors.fill: parent
                MouseArea {
                    anchors.fill: parent
                    onClicked: bottomSheetBox.close()
                }
            }
        }
    }
}
