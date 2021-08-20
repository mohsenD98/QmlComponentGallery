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
        color: materialStatics.grey_10

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

        TabEmpty1 {
            id: tabStore
            anchors.top: searchBar.bottom
            anchors.topMargin: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.left: parent.left
            anchors.leftMargin: 12
            anchors.right: parent.right
            anchors.rightMargin: 12

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
            height: 70
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            color: "transparent"
            Behavior on height {
                NumberAnimation {
                    duration: 100
                }
            }

            CompBottomNavigation5 {
                anchors.fill: parent
                maxWidth: width
                unFocusedColor: materialStatics.blue_900
                focusedColor: materialStatics.blue_900
                backgroundColor: "white"
                currIndex: 1
                model: [{
                        "name": "Ic_Home",
                        "icon": "qrc:/Drawables/Ic_Home.qml"
                    }, {
                        "name": "Ic_EventSeat",
                        "icon": "qrc:/Drawables/Ic_EventSeat.qml"
                    }, {
                        "name": "Ic_Add",
                        "icon": "qrc:/Drawables/Ic_Add.qml"
                    }, {
                        "name": "Ic_Notifications",
                        "icon": "qrc:/Drawables/Ic_Notifications.qml"
                    }, {
                        "name": "Ic_ShoppingCart",
                        "icon": "qrc:/Drawables/Ic_ShoppingCart.qml"
                    }]

                onCurrentNavIndexChanged: {
                    console.log(newIndex)
                }
            }
        }
    }
}
