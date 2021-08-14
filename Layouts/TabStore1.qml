import QtQuick 2.12
import QtQuick.Controls 2.12

import "../"
import "../Components/"

Item {
    clip: true
    signal draggingDown(var value)
    signal draggingUp(var value)
    Colors {
        id: materialColors
    }

    Flickable {
        anchors.fill: parent
        contentHeight: storeBox.height + 50
        contentWidth: parent.width
        clip: true

        onVerticalVelocityChanged: {
            // if user is dragging more than content height dont effect
            // searchbar and bottomNavigationBasicBox
            if (contentY < 0)
                return

            if (verticalVelocity > 157) {
                //dragging up  :
                draggingUp(verticalVelocity)
            } else if (verticalVelocity < -157) {
                //dragging down  :
                draggingDown(verticalVelocity)
            }
        }

        Rectangle {
            id: storeBox
            clip: true
            color: "transparent"
            height: lblRecomended.height + lblRelease.height + lblTop.height + recomendedList.height
                    + releaseList.height + topList.height + 150 //150 for margins
            width: parent.width

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
                id: releaseList
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

            Text {
                id: lblRecomended
                text: qsTr("Recomended")
                anchors.left: parent.left
                anchors.top: releaseList.bottom
                anchors.topMargin: 20
                font.pixelSize: 16
                font.bold: true
            }
            Text {
                id: lblRecomendedMore
                text: qsTr("More")
                anchors.right: parent.right
                anchors.top: releaseList.bottom
                anchors.topMargin: 20
                font.pixelSize: 13
                color: materialColors.grey_60
            }

            ListView {
                id: recomendedList
                anchors.top: lblRecomended.bottom
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
                        le_image: "qrc:/images/image_15.jpg"
                    }
                    ListElement {
                        le_name: "Aliquam"
                        le_author: "One Republic"
                        le_image: "qrc:/images/image_14.jpg"
                    }
                    ListElement {
                        le_name: "learning Qml and c++"
                        le_author: "Mohsen dehghanzadeh"
                        le_image: "qrc:/images/image_12.jpg"
                    }
                    ListElement {
                        le_name: "Mauris sagittis non elit"
                        le_author: "Kodaline"
                        le_image: "qrc:/images/image_15.jpg"
                    }
                    ListElement {
                        le_name: "Aliquam"
                        le_author: "One Republic"
                        le_image: "qrc:/images/image_14.jpg"
                    }
                }
                delegate: ItemStore2 {}
            }
            Text {
                id: lblTop
                text: qsTr("Top Rated")
                anchors.left: parent.left
                anchors.top: recomendedList.bottom
                anchors.topMargin: 20
                font.pixelSize: 16
                font.bold: true
            }
            Text {
                id: lblTopMore
                text: qsTr("More")
                anchors.right: parent.right
                anchors.top: recomendedList.bottom
                anchors.topMargin: 20
                font.pixelSize: 13
                color: materialColors.grey_60
            }

            ListView {
                id: topList
                anchors.top: lblTop.bottom
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
                        le_image: "qrc:/images/image_2.jpg"
                    }
                    ListElement {
                        le_name: "Aliquam"
                        le_author: "One Republic"
                        le_image: "qrc:/images/image_8.jpg"
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
}
