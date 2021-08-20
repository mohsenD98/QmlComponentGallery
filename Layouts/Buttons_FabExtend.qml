import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../"
import "../Components/"

Item {
    Colors {
        id: materialStatics
    }

    Rectangle {
        id: box
        clip: true
        color: "black"
        height: parent.height
        width: parent.width

        Image {
            source: "qrc:/images/world_map.png"
            width: parent.width
            height: parent.height / 3 > 240 ? 240 : parent.height / 3
            fillMode: Image.PreserveAspectFit
        }

        RoundButton {
            id: fab
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.margins: 20
            highlighted: true
            smooth: true
            text: "DOWNLOAD"
            icon.source: "qrc:/images/ic_download.png"
            icon.width: 25
            icon.height: 25

            Material.background: materialStatics.deep_orange_500

            Component.onCompleted: {
                width = width * 1.35
            }
        }
    }
}
