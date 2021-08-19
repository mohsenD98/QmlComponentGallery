import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0

import "../Drawables/"
import ".."

Rectangle {
    anchors.centerIn: parent
    width: 4 * parent.width / 6
    height: 6 * parent.height / 10 > 432 ? 432 : 6 * parent.height / 10
    color: "transparent"
    property var imagePath: "qrc:/images/image_15.jpg"
    property var iconPath: "qrc:images/img_wizard_1.png"

    property var titleText: "Ready To Travel"
    property var subTitleText: "Find Featured and Premium \nItem From Our Store"
    property var controllerName: "Next"

    signal nextPageCalled

    Colors {
        id: materialColors
    }

    Pane {
        width: parent.width
        height: parent.height
        padding: 0
        Material.elevation: 6
        Rectangle {
            id: root
            anchors.fill: parent
            radius: 4

            Text {
                id: title1
                anchors.top: imgLogo.bottom
                anchors.topMargin: 42
                anchors.horizontalCenter: imgLogo.horizontalCenter
                text: titleText
                font.pixelSize: 23
                horizontalAlignment: Text.AlignHCenter
                color: materialColors.grey_80
                font.weight: Font.DemiBold
            }

            Text {
                id: desc
                anchors.top: title1.bottom
                anchors.horizontalCenter: title1.horizontalCenter
                anchors.topMargin: 21
                text: subTitleText
                font.pixelSize: 18
                wrapMode: Text.WordWrap
                width: parent.width - 20
                color: materialColors.grey_40
                horizontalAlignment: Text.AlignHCenter
            }

            Image {
                id: imgLogo
                width: 120
                height: 120
                source: iconPath
                fillMode: Image.PreserveAspectCrop
                clip: true
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            ColorOverlay {
                anchors.fill: imgLogo
                source: imgLogo
                color: materialColors.light_green_600
            }
        }
    }
}
