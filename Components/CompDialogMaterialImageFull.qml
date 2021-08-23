import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12

import "../Drawables/"

Item {
    property alias popupController: popup
    property var pWidth: mainWindow.width - 140
    property var pHeight: mainWindow.height / 2 > 360 ? 360 : mainWindow.height / 2 // 480 //header.height + 16 + body.height + accept.height + 20 + 40 // 370
    property var titleText: "Invitation"
    property var bodyText: "Quisque imperdiet nunc at massa dictum volutpat. Etiam id orci ipsum. Integer id ex dignissim"
    property var backgroundColor: "white"
    property var accentColor: materialStatics.light_green_400
    property var btnAcceptText: "GET STARTED"

    anchors.fill: parent
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
                height: parent.height

                Image {
                    anchors.fill: parent
                    source: "qrc:/images/img_plant_11.jpg"
                    fillMode: Image.PreserveAspectCrop
                }
            }
        }
    }
}
