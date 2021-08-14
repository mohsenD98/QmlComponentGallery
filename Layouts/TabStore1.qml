import QtQuick 2.12
import QtQuick.Controls 2.12

import "../"
import "../Components/"

Item {
    Colors {
        id: materialColors
    }

    Rectangle {
        anchors.fill: parent
        color: "transparent"

        Text {
            id: lblRelease
            text: qsTr("New Release")
            font.pixelSize: 16
            font.bold: true
            anchors.left: parent.left
        }
        Text {
            id: lblReleaseMore
            text: qsTr("More")
            font.pixelSize: 13
            anchors.right: parent.right
            color: materialColors.grey_60
        }

        ListView {
            anchors.top: lblRelease.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.right: parent.right
            implicitHeight: contentItem.childrenRect.height
            spacing: 8
            orientation: ListView.Horizontal
            clip: true

            model: ListModel {
                ListElement {
                    le_name: "Mauris sagittis non elit"
                    le_author: "Kodaline"
                    le_image: "qrc:/images/image_5.jpg"
                }
                ListElement {
                    le_name: "Aliquam"
                    le_author: "One Republic"
                    le_image: "qrc:/images/image_9.jpg"
                }
                ListElement {
                    le_name: "learning Qml and c++"
                    le_author: "Mohsen dehghanzadeh"
                    le_image: "qrc:/images/image_1.jpg"
                }
            }
            delegate: ItemStore1 {}
        }
    }
}
