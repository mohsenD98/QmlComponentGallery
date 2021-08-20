import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../../Components/"
import "../"

Item {
    clip: true

    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_10

        GeneralToolBar {
            id: toolbar
            backgroundColor: materialStatics.colorPrimary
            iconsColor: "white"
            toolBarText: "Qml Gallery"
            leftIcon: "Ic_Menu"
            rightIconLeft: "Ic_Notifications"
            rightIconRight: "Ic_MoreVert"

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
        }

        Rectangle {
            id: filckRoot
            anchors.top: toolbar.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            color: "transparent"
            anchors.margins: 10
            clip: true
            Flickable {
                anchors.fill: parent
                contentHeight: parent.height * 3
                contentWidth: parent.width

                Column {
                    id: listColumn
                    spacing: 16
                    anchors.fill: parent

                    CompCardsTimelineModel1 {
                        width: filckRoot.width
                        property var val: 4.4 * filckRoot.height / 5
                        height: val > 633.33 ? 633.33 : val
                        imageSource: "qrc:/images/image_7.jpg"
                    }

                    CompCardsTimelineModel2 {
                        width: filckRoot.width
                        property var val: 4.4 * filckRoot.height / 5
                        height: val > 633.33 ? 633.33 : val
                        imageSource: "qrc:/images/image_7.jpg"
                    }
                }
            }
        }
    }
}
