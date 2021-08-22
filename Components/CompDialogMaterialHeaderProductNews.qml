import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12

import "../Drawables/"

Item {
    property alias popupController: popup
    property var pWidth: mainWindow.width - 80
    property var pHeight: mainWindow.height / 1.2 > 600 ? 600 : mainWindow.height / 1.2
    property var titleText: "Quisque imperdiet"
    property var bodyText: "1.4k peoples like this news"
    property var backgroundColor: "white"
    property var accentColor: materialStatics.light_green_400
    property var btnAcceptText: "GET STARTED"

    Popup {
        id: popup
        x: 80 / 2
        y: -(mainWindow.height / 1.7)
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
                height: 2.2 * parent.height / 3

                Image {
                    anchors.fill: parent
                    source: "qrc:/images/image_30.jpg"
                    fillMode: Image.PreserveAspectCrop
                }
                Rectangle {
                    anchors.fill: parent
                    color: materialStatics.overlay_light_30
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

            Rectangle {
                id: splitter1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: title.bottom
                anchors.topMargin: 16
                height: 1
                color: materialStatics.grey_90
                opacity: .1
            }

            Ic_Favorites {
                id: love
                anchors.left: parent.left
                anchors.leftMargin: 16
                anchors.top: splitter1.bottom
                anchors.topMargin: 24
                controller.fillColor: materialStatics.red_300
            }

            Text {
                id: body
                text: bodyText
                font.pixelSize: 17
                anchors.verticalCenter: love.verticalCenter
                anchors.margins: 16
                anchors.left: love.right
                font.family: materialStatics.fontFamily
                color: materialStatics.grey_60
                wrapMode: Text.WordWrap
            }
        }
    }
}
