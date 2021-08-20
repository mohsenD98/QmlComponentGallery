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
            backgroundColor: "transparent"
            iconsColor: materialStatics.green_300
            toolBarText: ""
            leftIcon: "Ic_Menu"
            rightIconLeft: ""
            rightIconRight: "Ic_Search"

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
        }

        TabArticle {
            id: tabStore
            anchors.top: toolbar.bottom
            anchors.topMargin: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.left: parent.left
            anchors.leftMargin: 12
            anchors.right: parent.right
            anchors.rightMargin: 12
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
                unFocusedColor: materialStatics.grey_10
                maxWidth: width
                focusedColor: materialStatics.green_300
                currIndex: 0
                enableText: false
                model: [{
                        "name": "a1",
                        "icon": "qrc:/Drawables/Ic_ViewModul.qml"
                    }, {
                        "name": "a2",
                        "icon": "qrc:/Drawables/Ic_DataUsage.qml"
                    }, {
                        "name": "a3",
                        "icon": "qrc:/Drawables/Ic_AccountBalance.qml"
                    }, {
                        "name": "a4",
                        "icon": "qrc:/Drawables/Ic_Folder.qml"
                    }, {
                        "name": "a5",
                        "icon": "qrc:/Drawables/Ic_AccountCircle.qml"
                    }]

                onCurrentNavIndexChanged: {
                    console.log(newIndex)
                }
            }
        }
    }
}
