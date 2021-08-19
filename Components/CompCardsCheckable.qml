import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../Drawables/"
import "../Tools/"
import ".."

Item {
    property var mtext: ""
    property var subText: ""
    property var backgroundColor
    property var accentColor

    property bool longPressed: false

    Colors {
        id: materialColors
    }

    Pane {
        padding: 0
        Material.elevation: 6
        anchors.fill: parent

        Rectangle {
            id: mainCard
            anchors.fill: parent
            clip: true
            color: backgroundColor
            radius: 4

            Ic_CheckCircle {
                id: checkCircle
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.margins: 20
                controller.fillColor: accentColor
                visible: false
            }

            Text {
                id: title
                text: mtext
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.margins: 20
                font.pixelSize: 18
                font.bold: true
                color: materialColors.grey_60
                wrapMode: Text.WordWrap
            }

            Text {
                text: subText
                anchors.top: title.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: 20
                font.pixelSize: 16
                color: materialColors.grey_40
                wrapMode: Text.WordWrap
            }

            MouseArea {
                id: cardMouseArea
                anchors.fill: parent
                onPressAndHold: {
                    longPressed = !longPressed
                    if (longPressed) {
                        mainCard.color = "#edf4fb"
                        checkCircle.visible = true
                    } else {
                        mainCard.color = "white"
                        checkCircle.visible = false
                    }
                }
            }
            RippleLayout {
                mouseArea: cardMouseArea
                anchors.fill: parent
            }
        }
    }
}
