import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12


import "../../Components/"

Item {
    clip: true

    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_10

        Toolbar4 {
            id: searchBar
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            backgroundColor: materialStatics.colorPrimary
            toolbarHeight: 50
            clip: true

            Behavior on height {
                NumberAnimation {
                    duration: 100
                }
            }
        }

        Rectangle {
            id: filckRoot
            anchors.top: searchBar.bottom
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
