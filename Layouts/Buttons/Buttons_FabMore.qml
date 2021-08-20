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

        TabSectionedList {
            id: tabSectionList
            anchors.top: toolbar.bottom
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
