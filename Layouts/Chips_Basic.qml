import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../"
import "../Components/"

Item {
    clip: true
    property var applyTheme: "Light"
    signal draggingDown(var value)
    signal draggingUp(var value)
    Colors {
        id: materialColors
    }
    Rectangle {
        anchors.fill: parent
        color: materialColors.grey_10

        GeneralToolBar {
            backgroundColor: materialColors.colorPrimary
            iconsColor: "white"
            toolBarText: "BASIC"
            leftIcon: "Ic_Menu"
            rightIconLeft: "Ic_Send"
            rightIconRight: "Ic_MoreVert"

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
        }
    }
}
