import QtQuick 2.12
import QtQuick.Controls 2.12


import "../Components/"

Item {


    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_5

        WipTab {
            id: tabStore
            anchors.top: parent.top
            anchors.bottom: parent.bottom
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
        }
    }
}
