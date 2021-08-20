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

                    CompCardsBasicModel1 {
                        width: filckRoot.width
                        property var val: 3.6 * filckRoot.height / 5
                        height: val > 518.4 ? 518.4 : val
                    }

                    CompCardsBasicModel2 {
                        width: filckRoot.width
                        property var val: 0.51 * filckRoot.height
                        height: val > 376 ? 376 : val
                        imageSource: "qrc:/images/image_4.jpg"
                    }

                    Row {
                        spacing: 20
                        CompCardsBasicModel2 {
                            property var val: 0.51 * filckRoot.height
                            width: filckRoot.width / 2.1
                            height: val > 376 ? 376 : val
                            imageSource: "qrc:/images/image_8.jpg"
                        }

                        CompCardsBasicModel2 {
                            property var val: 0.51 * filckRoot.height
                            width: filckRoot.width / 2.1
                            height: val > 376 ? 376 : val
                            imageSource: "qrc:/images/image_9.jpg"
                        }
                    }

                    CompCardsBasicModel3 {
                        width: filckRoot.width
                        property var val: 0.325 * filckRoot.height
                        height: val > 234 ? 234 : val
                        backgroundColor: materialStatics.blue_700
                    }
                    Row {
                        spacing: 20
                        CompCardsBasicModel4 {
                            width: filckRoot.width / 2.1
                            property var val: 0.3 * filckRoot.height
                            height: val > 216 ? 216 : val
                            backgroundColor: materialStatics.teal_700
                        }

                        CompCardsBasicModel5 {
                            width: filckRoot.width / 2.1
                            property var val: 0.3 * filckRoot.height
                            height: val > 216 ? 216 : val
                            backgroundColor: materialStatics.deep_orange_500
                        }
                    }
                }
            }
        }
    }
}
