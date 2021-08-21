import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12

import "../Drawables/"

Item {
    property alias popupController: popup
    property var pWidth: mainWindow.width - 140
    property var pHeight: 480 //header.height + 16 + body.height + accept.height + 20 + 40 // 370
    property var titleText: "Invitation"
    property var bodyText: "Quisque imperdiet nunc at massa dictum volutpat. Etiam id orci ipsum. Integer id ex dignissim"
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
                    source: "qrc:/images/bg_polygon.png"
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
                anchors.margins: 16
                wrapMode: Text.WordWrap
                font.weight: Font.Medium
                color: materialStatics.grey_60
            }

            Button {
                id: join
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.margins: 20
                width: 80
                flat: true
                highlighted: true
                Material.accent: materialStatics.colorPrimary
                text: "JOIN"
            }
            Button {
                anchors.right: join.left
                anchors.rightMargin: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                width: 80
                flat: true
                highlighted: true
                text: "DECILNE"
            }
        }
    }
}
