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
        color: "black"

        Toolbar2 {
            id: toolbar
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.left: parent.left
            height: 50
            toolbarHeight: 50
            clip: true
        }

        TabStore1 {
            id: tabStore
            anchors.top: toolbar.bottom
            anchors.topMargin: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.left: parent.left
            anchors.leftMargin: 12
            anchors.right: parent.right
            anchors.rightMargin: 12

            applyTheme: "Dark"

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
        }

        Rectangle {
            id: bottomNavigationBasicBox
            height: 50
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            color: "transparent"
            Behavior on height {
                NumberAnimation {
                    duration: 100
                }
            }

            CompBottomNavigation1 {
                anchors.fill: parent
                backgroundColor: materialColors.grey_900
                unFocusedColor: materialColors.grey_60
                maxWidth: width
                focusedColor: "white"
                currIndex: 1
                model: [{
                        "name": "Recents",
                        "icon": "qrc:/Drawables/Ic_Recent.qml"
                    }, {
                        "name": "Favorites",
                        "icon": "qrc:/Drawables/Ic_Favorites.qml"
                    }, {
                        "name": "Nearby",
                        "icon": "qrc:/Drawables/Ic_Nearby.qml"
                    }]

                onCurrentNavIndexChanged: {
                    console.log(newIndex)
                }
            }
        }
    }
}
