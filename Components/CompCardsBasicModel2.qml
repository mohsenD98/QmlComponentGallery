import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../Drawables/"
import ".."

Pane {
    Colors {
        id: materialColors
    }

    padding: 0
    Material.elevation: 6
    property var imageSource
    Rectangle {
        anchors.fill: parent
        color: "white"
        radius: 4
        clip: true

        Image {
            id: image
            source: imageSource
            fillMode: Image.PreserveAspectCrop
            anchors.bottom: options.top
            width: parent.width
            anchors.top: parent.top

            Text {
                id: title
                font.pixelSize: 25
                color: "white"
                text: "Aliquet Et Ante"
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.margins: 20
            }
        }

        Rectangle {
            id: options
            anchors.bottom: parent.bottom
            width: parent.width
            height: 65

            Row {
                anchors.right: parent.right
                anchors.rightMargin: 35
                anchors.verticalCenter: parent.verticalCenter
                spacing: 43

                Ic_Share {
                    baseShape.scale: 1.65
                    controller.fillColor: materialColors.grey_40
                    controller.strokeColor: "transparent"
                    controller.strokeWidth: 1
                }
                Ic_Bookmark {
                    baseShape.scale: 1.65
                    controller.fillColor: materialColors.grey_40
                    controller.strokeColor: "transparent"
                    controller.strokeWidth: 1
                }
                Ic_Favorites {
                    baseShape.scale: 1.65
                    controller.fillColor: materialColors.grey_40
                    controller.strokeColor: "transparent"
                    controller.strokeWidth: 1
                }
            }
        }
    }
}
