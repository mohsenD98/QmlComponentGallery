import QtQuick 2.12
import QtQuick.Controls 2.12

import "../../Components/"
import "../"

Item {

    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_5

        Toolbar4 {
            id: searchBar
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            backgroundColor: materialStatics.colorPrimary
            toolbarHeight: 50
            height: 50
            clip: true

            Behavior on height {
                NumberAnimation {
                    duration: 100
                }
            }
        }

        TabSectionedList {
            id: tabSectionList
            anchors.top: searchBar.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            Rectangle {
                id: moverlay
                anchors.fill: parent
                color: materialStatics.overlay_dark_80
                visible: false
                z: 2

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        fab.controllerOptions.height = 0
                        fab.closing = true
                        moverlay.visible = !moverlay.visible
                    }
                }
            }
        }

        CompButtonFabMore {
            id: fab
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            icon: "ic_mic"
            enableText: true
            backgroundColor: "#1976D2"
            accentColor: "white"
            overlay: moverlay
            model: [{
                    "name": "option1",
                    "icon": "+"
                }, {
                    "name": "option2",
                    "icon": "+"
                }, {
                    "name": "option3",
                    "icon": "+"
                }]
        }
    }
}
