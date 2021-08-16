import QtQuick 2.12
import QtQuick.Controls 2.12

import "../"
import "../Components/"

Item {
    clip: true
    property var applyTheme: "Light"
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
            if (contentY > contentHeight)
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
            height: lblRecomended.height + lblCategories.height
                    + lblFeatured.height + imageBox.height + categoriesList.height
                    + featuredList.height + 200 //150 for margins
            width: parent.width

            Text {
                id: lblRecomended
                text: qsTr("Recommended")
                font.pixelSize: 16
                font.bold: true
                anchors.left: parent.left
                color: applyTheme === "Dark" ? "white" : "black"
            }
            Text {
                id: lblRecomendedMore
                text: qsTr("More")
                font.pixelSize: 13
                anchors.right: parent.right
                color: applyTheme === "Light" ? materialColors.grey_60 : materialColors.grey_20
            }

            Rectangle {
                id: imageBox
                anchors.top: lblRecomended.bottom
                anchors.topMargin: 20
                anchors.right: parent.right
                anchors.left: parent.left
                height: width / 1.8 > 266.66 ? 266.66 : width / 1.8
                color: materialColors.colorPrimary
                radius: 20
                clip: true
                Image {
                    id: image
                    source: "qrc:/images/image_18"
                    anchors.fill: parent
                    //                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: indicators
                height: 4
                width: parent.width
                anchors.top: imageBox.bottom
                anchors.topMargin: 8
                color: "transparent"
                Row {
                    anchors.centerIn: parent
                    spacing: 4
                    Rectangle {
                        width: 4
                        height: width
                        radius: width
                        color: materialColors.grey_20
                    }
                    Rectangle {
                        width: 4
                        height: width
                        radius: width
                        color: materialColors.grey_20
                    }
                    Rectangle {
                        width: 4
                        height: width
                        radius: width
                        color: materialColors.colorPrimaryLight
                    }
                    Rectangle {
                        width: 4
                        height: width
                        radius: width
                        color: materialColors.grey_20
                    }
                }
            }

            Text {
                id: lblFeatured
                text: qsTr("Featured")
                anchors.left: parent.left
                anchors.top: indicators.bottom
                anchors.topMargin: 20
                font.pixelSize: 16
                font.bold: true
                color: applyTheme === "Dark" ? "white" : "black"
            }
            Text {
                id: lblFeaturedMore
                text: qsTr("More")
                anchors.right: parent.right
                anchors.top: indicators.bottom
                anchors.topMargin: 20
                font.pixelSize: 13
                color: applyTheme === "Light" ? materialColors.grey_60 : materialColors.grey_20
            }

            ListView {
                id: featuredList
                anchors.top: lblFeaturedMore.bottom
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
                delegate: ItemStore3 {}
            }
            Text {
                id: lblCategories
                text: qsTr("Categories")
                anchors.left: parent.left
                anchors.top: featuredList.bottom
                anchors.topMargin: 20
                font.pixelSize: 16
                font.bold: true
                color: applyTheme === "Dark" ? "white" : "black"
            }
            Text {
                id: lblCategoriesMore
                text: qsTr("More")
                anchors.right: parent.right
                anchors.top: featuredList.bottom
                anchors.topMargin: 20
                font.pixelSize: 13
                color: applyTheme === "Light" ? materialColors.grey_60 : materialColors.grey_20
            }

            Flow {
                id: categoriesList
                anchors.top: lblCategoriesMore.bottom
                anchors.topMargin: 20
                anchors.left: parent.left
                anchors.right: parent.right
                spacing: 8
                clip: true

                Repeater {
                    id: flowRepeater
                    model: ListModel {
                        ListElement {
                            le_name: "AUTOMOTIVE"
                            le_color: "#EF5350"
                        }
                        ListElement {
                            le_name: "TECHOLOGY"
                            le_color: "#29B6F6"
                        }
                        ListElement {
                            le_name: "SPORT"
                            le_color: "#5C6BC0"
                        }
                        ListElement {
                            le_name: "FASHION"
                            le_color: "#FFA726"
                        }
                        ListElement {
                            le_name: "BUSINESS"
                            le_color: "#9CCC65"
                        }
                        ListElement {
                            le_name: "POLITICS"
                            le_color: "#78909C"
                        }
                    }
                    delegate: ItemCategories {}
                }
            }
        }
    }
}
