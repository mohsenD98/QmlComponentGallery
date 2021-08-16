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

        TabStore1 {
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

            CompBottomNavigation2 {
                anchors.fill: parent
                unFocusedColor: materialColors.grey_20
                focusedColor: "white"
                maxWidth: width
                currIndex: 0
                model: [{
                        "name": "Movie & Tv",
                        "backgroundColor": materialColors.blue_grey_700,
                        "icon": "qrc:/Drawables/Ic_Movie.qml"
                    }, {
                        "name": "Musics",
                        "backgroundColor": materialColors.pink_800,
                        "icon": "qrc:/Drawables/Ic_Music.qml"
                    }, {
                        "name": "Books",
                        "backgroundColor": materialColors.grey_700,
                        "icon": "qrc:/Drawables/Ic_Book.qml"
                    }, {
                        "name": "Newsland",
                        "backgroundColor": materialColors.teal_800,
                        "icon": "qrc:/Drawables/Ic_News.qml"
                    }]

                onCurrentNavIndexChanged: {
                    console.log(newIndex)
                }
            }
        }
    }
}
