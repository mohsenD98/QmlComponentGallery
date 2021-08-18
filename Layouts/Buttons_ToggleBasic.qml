import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.0

import "../"
import "../Components/"

Item {
    clip: true

    Colors {
        id: materialColors
    }

    Rectangle {
        anchors.fill: parent
        color: materialColors.grey_50

        Text {
            id: lblButtons1
            text: qsTr("Text Toggle")
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 20
            anchors.leftMargin: 20
            color: materialColors.blue_grey_400
        }
        Rectangle {
            anchors.right: parent.right
            anchors.left: lblButtons1.right
            anchors.verticalCenter: lblButtons1.verticalCenter
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            color: materialColors.grey_20
            height: 1
        }

        CompButtonsToggleBasic {
            id: gridBasic
            anchors.top: lblButtons1.bottom
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.leftMargin: 20

            showText: true
            showIcon: false
            currIndex: 0
            backgroundColor: "white"
            accentColor: "#1976D2"
            //names must be different
            model: [{
                    "le_text": "BUTTON1",
                    "le_icon": "Ic_Wifi"
                }, {
                    "le_text": "BUTTON2",
                    "le_icon": "Ic_Work"
                }, {
                    "le_text": "BUTTON3",
                    "le_icon": "Ic_Weekend"
                }]
        }

        Text {
            id: lblButtons2
            text: qsTr("Icon Buttons")
            anchors.top: gridBasic.bottom
            anchors.left: parent.left
            anchors.topMargin: 20
            anchors.leftMargin: 20
            color: materialColors.blue_grey_400
        }
        Rectangle {
            anchors.right: parent.right
            anchors.left: lblButtons2.right
            anchors.verticalCenter: lblButtons2.verticalCenter
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            color: materialColors.grey_20
            height: 1
        }
        CompButtonsToggleBasic {
            id: gridMaterial1
            anchors.top: lblButtons2.bottom
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.leftMargin: 20

            showText: false
            showIcon: true
            currIndex: 0
            backgroundColor: "white"
            accentColor: "#1976D2"
            //names must be different
            model: [{
                    "le_text": "BUTTON1",
                    "le_icon": "Ic_Favorites"
                }, {
                    "le_text": "BUTTON2",
                    "le_icon": "Ic_Visibility"
                }, {
                    "le_text": "BUTTON3",
                    "le_icon": "Ic_Notifications"
                }]
        }

        CompButtonsToggleBasic {
            id: gridMaterial
            anchors.top: gridMaterial1.bottom
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.leftMargin: 20

            showText: false
            showIcon: true
            currIndex: 0
            backgroundColor: "white"
            accentColor: "#1976D2"
            //names must be different
            model: [{
                    "le_text": "BUTTON1",
                    "le_icon": "Ic_FormatAlignLeft"
                }, {
                    "le_text": "BUTTON2",
                    "le_icon": "Ic_FormatAlignCenter"
                }, {
                    "le_text": "BUTTON3",
                    "le_icon": "Ic_FormatAlignJustify"
                }, {
                    "le_text": "BUTTON4",
                    "le_icon": "Ic_FormatAlignRight"
                }]
        }
        Text {
            id: lblButtons3
            text: qsTr("Text Icon Toggle Buttons")
            anchors.top: gridMaterial.bottom
            anchors.left: parent.left
            anchors.topMargin: 20
            anchors.leftMargin: 20
            color: materialColors.blue_grey_400
        }
        Rectangle {
            anchors.right: parent.right
            anchors.left: lblButtons3.right
            anchors.verticalCenter: lblButtons3.verticalCenter
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            color: materialColors.grey_20
            height: 1
        }

        CompButtonsToggleBasic {
            id: gridBasic3
            anchors.top: lblButtons3.bottom
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.leftMargin: 20

            showText: true
            showIcon: true
            currIndex: 0
            backgroundColor: "white"
            accentColor: "#1976D2"
            //names must be different
            model: [{
                    "le_text": "BUTTON1",
                    "le_icon": "Ic_Wifi"
                }, {
                    "le_text": "BUTTON2",
                    "le_icon": "Ic_Work"
                }, {
                    "le_text": "BUTTON3",
                    "le_icon": "Ic_Weekend"
                }]
        }
        Text {
            id: lblButtons4
            text: qsTr("you can select nothing ! ")
            anchors.top: gridBasic3.bottom
            anchors.left: parent.left
            anchors.topMargin: 20
            anchors.leftMargin: 20
            color: materialColors.blue_grey_400
        }
        Rectangle {
            anchors.right: parent.right
            anchors.left: lblButtons4.right
            anchors.verticalCenter: lblButtons4.verticalCenter
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            color: materialColors.grey_20
            height: 1
        }

        CompButtonsToggleBasic {
            id: gridBasic4
            anchors.top: lblButtons4.bottom
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.leftMargin: 20

            showText: true
            showIcon: true
            currIndex: unselectable ? -1 : 0
            unselectable: true
            backgroundColor: "white"
            accentColor: "#1976D2"
            //names must be different
            model: [{
                    "le_text": "BUTTON1",
                    "le_icon": "Ic_Wifi"
                }, {
                    "le_text": "BUTTON2",
                    "le_icon": "Ic_Work"
                }, {
                    "le_text": "BUTTON3",
                    "le_icon": "Ic_Weekend"
                }]

            onCurrentToggleIndexChanged: {
                console.log("index : ", index, " turn ",
                            value === true ? "On" : "Off")
            }
        }
    }
}
