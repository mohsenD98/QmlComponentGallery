import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../Drawables/"


Item {
    property alias controller: bottomSheetBox
    property var model: ""

    Drawer {
        id: bottomSheetBox
        edge: Qt.BottomEdge
        width: parent.width
        height: mainWindow.height / 2.95 > 244.06 ? 244.06 : mainWindow.height / 2.95
        modal: true
        interactive: false
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        Rectangle {
            anchors.fill: parent
            border.color: "transparent"

            Text {
                id: txt1
                text: model
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 20
                anchors.topMargin: 40
                font.pixelSize: 20
                color: materialStatics.grey_90
            }

            Text {
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur ipsum in placerat molestie.  Fusce quis mauris a enim sollicitudin"
                anchors.top: txt1.bottom
                anchors.topMargin: 20
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.right: parent.right
                anchors.rightMargin: 20
                font.pixelSize: 16
                wrapMode: Text.WordWrap
                color: materialStatics.grey_60
            }

            Button {
                id: details
                width: 85
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 40
                anchors.right: parent.right
                anchors.rightMargin: 20
                text: "Details"
                highlighted: true
                Material.background: materialStatics.colorPrimary
            }

            Button {
                id: cancel
                width: 85
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 40
                anchors.right: details.left
                anchors.rightMargin: 10
                text: "Cancel"
                highlighted: true
                flat: true
            }

            MouseArea {
                anchors.fill: parent
                onClicked: bottomSheetBox.close()
            }
        }
    }
}
