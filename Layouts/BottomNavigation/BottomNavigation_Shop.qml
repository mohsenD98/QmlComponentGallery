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

        TabStore4 {
            id: tabStore
            anchors.top: toolbar.bottom
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.left: parent.left
            anchors.right: parent.right

            onDraggingDown: {
                // show elements
                toolbar.height = 60
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
                backgroundColor: "white"
                unFocusedColor: materialStatics.grey_40
                maxWidth: width
                focusedColor: materialStatics.colorPrimary
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
