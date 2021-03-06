import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12

import "../Drawables/"

Item {
    property alias popupController: popup
    property var pWidth: mainWindow.width - 140
    property var pHeight: mainWindow.height / 1.84 > 390 ? 390 : mainWindow.height / 1.84 //header.height + 16 + body.height + accept.height + 20 + 40 // 370
    property var titleText: "Quisque imperdiet"
    property var bodyText: "$ 9.21"
    property var backgroundColor: "white"
    property var accentColor: materialStatics.light_green_400
    property var btnAcceptText: "GET STARTED"

    Popup {
        id: popup
        x: 140 / 2
        y: -(mainWindow.height - pHeight) / 2
        width: pWidth
        height: pHeight
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
        padding: 0

        Rectangle {
            anchors.fill: parent
            color: backgroundColor
            layer.enabled: true
            clip: true

            Rectangle {
                id: header
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                color: accentColor
                height: parent.height / 1.3

                Image {
                    anchors.fill: parent
                    source: "qrc:/images/img_plant_1.jpg"
                    fillMode: Image.PreserveAspectCrop
                }
            }

            Text {
                id: title
                text: titleText
                font.pixelSize: 24
                anchors.top: header.bottom
                anchors.margins: 16
                anchors.left: parent.left
                anchors.right: parent.right
                font.family: materialStatics.fontFamily
                color: materialStatics.grey_90
                wrapMode: Text.WordWrap
                //                font.bold: true
                font.weight: Font.ExtraBold
            }

            Text {
                id: body
                text: bodyText
                font.pixelSize: 18
                font.family: materialStatics.fontFamily
                anchors.top: title.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignLeft
                anchors.leftMargin: 16
                anchors.rightMargin: 16
                anchors.topMargin: 8

                wrapMode: Text.WordWrap
                //                font.weight: Font.Medium
                font.bold: true

                color: materialStatics.orange_500
            }

            Ic_Favorites {
                id: love
                baseShape.scale: 1.25
                anchors.right: parent.right
                anchors.rightMargin: 38
                anchors.top: title.bottom
                anchors.topMargin: -8
                controller.fillColor: materialStatics.orange_500
            }
        }
    }
}
