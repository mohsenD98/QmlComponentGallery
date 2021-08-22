import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12

import "../Drawables/"

Item {
    property alias popupController: popup
    property var pWidth: mainWindow.width - 140
    property var pHeight: 380 //header.height + 16 + body.height + accept.height + 20 + 40 // 370
    property var titleText: "Quisque imperdiet"
    property var bodyText: "$ 9.22"
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
                height: parent.height / 1.8

                Image {
                    anchors.fill: parent
                    source: "qrc:/images/img_plant_2.jpg"
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

                color: materialStatics.green_500
            }
            Rectangle {
                id: splitter1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: body.bottom
                anchors.topMargin: 16
                height: 1
                color: materialStatics.grey_90
                opacity: .1
            }

            Ic_AddBox {
                id: addBoxIc
                baseShape.scale: 1.25
                anchors.right: parent.right
                anchors.rightMargin: 24
                anchors.top: splitter1.bottom
                anchors.topMargin: 24
                controller.fillColor: materialStatics.blue_400
            }
            Ic_Favorites {
                id: love
                baseShape.scale: 1.25
                anchors.right: addBoxIc.left
                anchors.rightMargin: 38
                anchors.top: splitter1.bottom
                anchors.topMargin: 24
                controller.fillColor: materialStatics.blue_400
            }
        }
    }
}
