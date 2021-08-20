import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12

import "../Drawables/"

Item {
    property alias popupController: popup
    property var pWidth: mainWindow.width - 160
    property var pHeight: header.height + 16 + body.height + accept.height + 20 + 40 // 370
    property var titleText: "Account confirmed!"
    property var bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    property var backgroundColor: "white"
    property var accentColor: materialStatics.light_green_400
    property var btnAcceptText: "GET STARTED"

    Popup {
        id: popup
        x: 160 / 2
        y: (mainWindow.height - pHeight) / 2
        width: pWidth
        height: pHeight
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
        padding: 0

        Rectangle {
            anchors.fill: parent
            color: backgroundColor

            Rectangle {
                id: header
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                color: accentColor
                height: img.height + 63 + title.height + 46 + 40

                Ic_VerifiedUser {
                    id: img
                    baseShape.scale: 4
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 65
                }

                Text {
                    id: title
                    text: titleText
                    font.pixelSize: 24
                    anchors.top: img.bottom
                    anchors.topMargin: 55
                    anchors.left: parent.left
                    anchors.right: parent.right
                    horizontalAlignment: Text.AlignHCenter
                    font.family: materialStatics.fontFamily
                    font.weight: Font.Medium
                    color: "white"
                    wrapMode: Text.WordWrap
                }
            }

            Text {
                id: body
                text: bodyText
                font.pixelSize: 18
                font.family: materialStatics.fontFamily
                anchors.top: header.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignHCenter
                anchors.margins: 16
                wrapMode: Text.WordWrap
                font.weight: Font.Medium
                color: materialStatics.grey_60
            }

            Rectangle {
                id: accept
                anchors.top: body.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                height: 50
                width: 150
                anchors.topMargin: 35
                radius: 50
                color: accentColor
                Text {
                    text: btnAcceptText
                    anchors.centerIn: parent
                    font.pixelSize: 16
                    color: "white"
                    font.bold: true
                    font.family: materialStatics.fontFamily
                }
            }
        }
    }
}
