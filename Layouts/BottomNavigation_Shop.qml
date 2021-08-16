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

        TabStore4 {
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
                backgroundColor: "white"
                unFocusedColor: materialColors.grey_40
                maxWidth: width
                focusedColor: materialColors.colorPrimary
                currIndex: 1
                model: [{
                        "name": "Home",
                        "icon": "qrc:/Drawables/Ic_Home.qml"
                    }, {
                        "name": "Brand",
                        "icon": "qrc:/Drawables/Ic_Work.qml"
                    }, {
                        "name": "Cart",
                        "icon": "qrc:/Drawables/Ic_ShoppingCart.qml"
                    }, {
                        "name": "Account",
                        "icon": "qrc:/Drawables/Ic_AccountCircle.qml"
                    }]

                onCurrentNavIndexChanged: {
                    console.log(newIndex)
                }
            }
        }
    }
}
