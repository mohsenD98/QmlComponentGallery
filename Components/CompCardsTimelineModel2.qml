import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0

import "../Drawables/"
import "../Tools/"

Pane {
    padding: 0
    Material.elevation: 6
    property var imageSource
    Rectangle {
        id: root
        anchors.fill: parent
        color: "white"
        radius: 4
        clip: true

        Rectangle {
            id: sec1
            width: parent.width
            anchors.bottom: image.top
            anchors.top: parent.top
            clip: true

            Behavior on height {
                NumberAnimation {
                    duration: 200
                }
            }

            Rectangle {
                id: mask
                color: "black"
                width: 80
                height: 80
                radius: 80
                visible: false
            }
            Image {
                id: profileImage
                source: "qrc:/images/" + "photo_female_2" + ".jpg"
                width: 80
                height: 80
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.top: parent.top
                anchors.topMargin: 20
                fillMode: Image.PreserveAspectFit
                layer.enabled: true
                layer.effect: OpacityMask {
                    maskSource: mask
                }
            }

            Column {
                anchors.left: profileImage.right
                anchors.leftMargin: 20
                anchors.verticalCenter: profileImage.verticalCenter
                spacing: 10

                Text {
                    text: "Bsilico Eat"
                    color: "black"
                    font.pixelSize: 16
                }
                Text {
                    text: "June 1, 2015"
                    color: materialStatics.grey_60
                    font.pixelSize: 16
                }
            }

            Text {
                anchors.top: profileImage.bottom
                anchors.topMargin: 110
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.right: parent.right
                anchors.rightMargin: 20
                anchors.fill: parent
                wrapMode: Text.WordWrap
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur ipsum in placerat molestie.  Fusce quis mauris a enim sollicitudin"
                font.pixelSize: 18
                font.weight: Font.Medium
                color: materialStatics.grey_60
            }
        }

        Image {
            id: image
            source: imageSource
            width: parent.width
            anchors.bottom: sec2.top
            height: 1 / 3 * parent.height > 240 ? 240 : 1 / 3 * parent.height
            fillMode: Image.PreserveAspectCrop
        }

        Rectangle {
            id: sec2
            anchors.bottom: parent.bottom
            color: "transparent"
            width: parent.width
            height: 1 / 3.6 * parent.height > 200 ? 200 : 1 / 3.6 * parent.height

            MouseArea {
                id: showComments
                anchors.fill: parent
                onClicked: {
                    sec1.anchors.bottom = undefined
                    sec1.anchors.top = undefined
                    var temp = [sec1.height]
                    sec1.height = 0

                    sec2.height = sec2.height + temp[0]

                    replys.height = 0
                    comments.anchors.bottom = parent.bottom
                }
            }
            RippleLayout {
                anchors.fill: parent
                mouseArea: showComments
            }

            Rectangle {
                id: reactions
                width: parent.width
                height: 80
                color: "transparent"
                Ic_Favorites {
                    id: favorites
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    baseShape.scale: 1.5
                    controller.fillColor: materialStatics.grey_60
                    anchors.verticalCenter: parent.verticalCenter
                }
                Ic_Share {
                    anchors.left: favorites.right
                    anchors.leftMargin: 35
                    baseShape.scale: 1.5
                    controller.fillColor: materialStatics.grey_60
                    anchors.verticalCenter: parent.verticalCenter
                }
                Text {
                    id: count
                    text: qsTr("12")
                    font.pixelSize: 20
                    anchors.right: parent.right
                    anchors.rightMargin: 20
                    color: materialStatics.grey_60
                    anchors.verticalCenter: parent.verticalCenter
                }
                Ic_Comment {
                    anchors.right: count.left
                    anchors.rightMargin: 35
                    baseShape.scale: 1.5
                    controller.fillColor: materialStatics.grey_60
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Rectangle {
                id: comments
                anchors.top: reactions.bottom
                anchors.topMargin: 5
                width: parent.width
                anchors.bottom: undefined
                clip: true
                color: materialStatics.grey_3

                Behavior on height {
                    NumberAnimation {
                        duration: 200
                    }
                }

                Column {
                    spacing: 15
                    anchors.left: parent.left
                    anchors.leftMargin: 20
                    anchors.right: parent.right
                    anchors.rightMargin: 20
                    anchors.top: parent.top
                    anchors.topMargin: 20

                    Row {
                        spacing: 10
                        width: parent.width
                        height: 120
                        Image {
                            id: commentProfileImage
                            source: "qrc:/images/" + "photo_female_3" + ".jpg"
                            width: 60
                            height: 60
                            fillMode: Image.PreserveAspectFit
                            layer.enabled: true
                            layer.effect: OpacityMask {
                                maskSource: mask
                            }
                        }

                        Rectangle {
                            width: parent.width - 80
                            height: 120
                            color: "transparent"

                            Column {
                                anchors.fill: parent
                                spacing: 10
                                Text {
                                    text: qsTr("Sandra Adams")
                                    color: "black"
                                    font.pixelSize: 16
                                }
                                Text {
                                    text: qsTr("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur ipsum in placerat molestie.  Fusce quis mauris a enim sollicitudin")
                                    color: materialStatics.grey_60
                                    font.pixelSize: 16
                                    width: parent.width - 20
                                    height: 80
                                    wrapMode: Text.WordWrap
                                }
                            }
                        }
                    }

                    Row {
                        spacing: 10
                        width: parent.width
                        height: 120
                        Image {
                            id: commentProfileImage2
                            source: "qrc:/images/" + "photo_female_1" + ".jpg"
                            width: 60
                            height: 60
                            fillMode: Image.PreserveAspectFit
                            layer.enabled: true
                            layer.effect: OpacityMask {
                                maskSource: mask
                            }
                        }

                        Rectangle {
                            width: parent.width - 80
                            height: 120
                            color: "transparent"

                            Column {
                                anchors.fill: parent
                                spacing: 10
                                Text {
                                    text: qsTr("Sandra Adams")
                                    color: "black"
                                    font.pixelSize: 16
                                }
                                Text {
                                    text: qsTr("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur ipsum in placerat molestie.  Fusce quis mauris a enim sollicitudin")
                                    color: materialStatics.grey_60
                                    font.pixelSize: 16
                                    width: parent.width - 20
                                    height: 80
                                    wrapMode: Text.WordWrap
                                }
                            }
                        }
                    }
                }
            }

            Rectangle {
                id: replys
                width: parent.width
                height: parent.height / 1.8
                anchors.top: reactions.bottom
                anchors.topMargin: 5
                color: "transparent"
                clip: true

                Behavior on height {
                    NumberAnimation {
                        duration: 200
                    }
                }

                Text {
                    id: repName
                    text: qsTr("Mohsen Dehghanzadeh")
                    font.pixelSize: 16
                    color: "black"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 20
                    anchors.leftMargin: 20
                    anchors.top: parent.top
                    anchors.topMargin: 10
                }
                Text {
                    id: comment
                    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                    font.pixelSize: 16
                    wrapMode: Text.WordWrap
                    anchors.top: repName.bottom
                    anchors.topMargin: 10
                    color: materialStatics.grey_60
                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: lineHeight * 2
                    anchors.margins: 20
                }
            }

            Rectangle {
                id: splitter1
                anchors.top: reactions.bottom
                anchors.right: parent.right
                anchors.left: parent.left
                height: 1
                color: materialStatics.grey_20
            }
        }
    }
}
