import QtQuick 2.12
import QtQuick.Controls 2.12

import "../../Components/"
import "../"

Item {
    Rectangle {
        anchors.fill: parent
        color: "black"

        GeneralToolBar {
            id: toolbar
            backgroundColor: materialStatics.grey_900
            iconsColor: "white"
            toolBarText: "Qml Gallery"
            leftIcon: "Ic_Menu"
            rightIconLeft: "Ic_Search"
            rightIconRight: "Ic_MoreVert"

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
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
                backgroundColor: materialStatics.grey_900
                unFocusedColor: materialStatics.grey_60
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
