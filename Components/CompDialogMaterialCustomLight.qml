import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

import "../Drawables/"

Item {
    property alias popupController: popup
    property var pWidth: mainWindow.width - 80
    property var pHeight: mainWindow.height / 1.5 > 480 ? 480 : mainWindow.height / 1.5
    property var titleText: "Mohsen Dehghanzadeh"
    property var bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    property var backgroundColor: "white"
    property var accentColor: materialStatics.red_300
    property var btnAcceptText: "Follow"

    signal callClose

    Popup {
        id: popup
        x: 80 / 2
        y: -100 //mainWindow.height - (mainWindow.height / 1.5) / 2
        width: pWidth
        height: pHeight
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
        padding: 0

        Rectangle {
            anchors.fill: parent
            color: backgroundColor

            Column {
                anchors.fill: parent

                Rectangle {
                    width: parent.width
                    height: parent.height / 3.25
                    color: "transparent"

                    Ic_Close {
                        anchors.top: parent.top
                        anchors.right: parent.right
                        anchors.margins: 16
                        controller.fillColor: materialStatics.blue_grey_600
                        baseShape.scale: 1.25

                        MouseArea {
                            anchors.fill: parent
                            onClicked: callClose()
                        }
                    }

                    Rectangle {
                        id: mask
                        color: "black"
                        width: 85
                        height: 85
                        radius: 85
                        visible: false
                    }
                    Image {
                        id: image
                        source: "qrc:/images/" + "photo_male_1" + ".jpg"
                        width: 85
                        height: 85
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 10
                        fillMode: Image.PreserveAspectFit
                        layer.enabled: true
                        layer.effect: OpacityMask {
                            maskSource: mask
                        }
                    }
                }
                Rectangle {
                    width: parent.width
                    height: parent.height / 3
                    color: "transparent"

                    Text {
                        id: title
                        text: titleText
                        font.pixelSize: 22
                        anchors.top: parent.top
                        anchors.topMargin: 24
                        anchors.left: parent.left
                        anchors.right: parent.right
                        horizontalAlignment: Text.AlignHCenter
                        font.family: materialStatics.fontFamily
                        font.bold: true
                        color: materialStatics.blue_grey_600
                        wrapMode: Text.WordWrap
                    }

                    Text {
                        id: body
                        text: bodyText
                        font.pixelSize: 18
                        font.family: materialStatics.fontFamily
                        anchors.top: title.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        horizontalAlignment: Text.AlignHCenter
                        anchors.rightMargin: 32
                        anchors.leftMargin: 32
                        anchors.topMargin: 10
                        wrapMode: Text.WordWrap
                        font.weight: Font.Medium
                        color: materialStatics.grey_60
                    }

                    Rectangle {
                        id: accept
                        anchors.top: body.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        height: 50
                        width: 150
                        anchors.topMargin: 35
                        radius: 50
                        color: accentColor
                        Text {
                            text: btnAcceptText
                            anchors.centerIn: parent
                            font.pixelSize: 16
                            color: "white"
                            font.bold: true
                            font.family: materialStatics.fontFamily
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: callClose()
                        }
                    }
                }
                Rectangle {
                    width: parent.width
                    height: parent.height / 3
                    color: "transparent"

                    RowLayout {
                        anchors.fill: parent
                        anchors.topMargin: 75
                        Column {
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            spacing: 5

                            Text {
                                id: followers1
                                text: "35.4 K"
                                font.pixelSize: 22
                                width: parent.width
                                horizontalAlignment: Text.AlignHCenter
                                font.family: materialStatics.fontFamily
                                font.bold: true
                                color: materialStatics.blue_grey_600
                                wrapMode: Text.WordWrap
                            }

                            Text {
                                id: followers2
                                text: "Followers"
                                width: parent.width
                                font.pixelSize: 18
                                font.family: materialStatics.fontFamily
                                horizontalAlignment: Text.AlignHCenter
                                anchors.margins: 16
                                wrapMode: Text.WordWrap
                                font.weight: Font.Medium
                                color: materialStatics.grey_60
                            }
                        }
                        Column {
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            spacing: 5

                            Text {
                                id: following1
                                text: "215"
                                font.pixelSize: 22
                                width: parent.width
                                horizontalAlignment: Text.AlignHCenter
                                font.family: materialStatics.fontFamily
                                font.bold: true
                                color: materialStatics.blue_grey_600
                                wrapMode: Text.WordWrap
                            }

                            Text {
                                id: following2
                                text: "Following"
                                width: parent.width
                                font.pixelSize: 18
                                font.family: materialStatics.fontFamily
                                horizontalAlignment: Text.AlignHCenter
                                anchors.margins: 16
                                wrapMode: Text.WordWrap
                                font.weight: Font.Medium
                                color: materialStatics.grey_60
                            }
                        }
                    }
                }
            }
        }
    }
}
