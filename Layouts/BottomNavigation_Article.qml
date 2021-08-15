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

        Toolbar3 {
            id: toolbar
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            toolbarHeight: 50
            height: 50
            clip: true
            backgroundColor: "transparent"
            widgetColors: materialColors.green_300

            Behavior on height {
                NumberAnimation {
                    duration: 100
                }
            }
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
                unFocusedColor: materialColors.grey_10
                maxWidth: width
                focusedColor: materialColors.green_300
                currIndex: 0
                enableText: false
                model: [{
                        "name": "a1",
                        "icon": "qrc:/Drawables/Ic_viewModul.qml"
                    }, {
                        "name": "a2",
                        "icon": "qrc:/Drawables/Ic_dataUsage.qml"
                    }, {
                        "name": "a3",
                        "icon": "qrc:/Drawables/Ic_accountBalance.qml"
                    }, {
                        "name": "a4",
                        "icon": "qrc:/Drawables/Ic_folder.qml"
                    }, {
                        "name": "a5",
                        "icon": "qrc:/Drawables/Ic_accountCircle.qml"
                    }]

                onCurrentNavIndexChanged: {
                    console.log(newIndex)
                }
            }
        }
    }
}
