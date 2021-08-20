import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

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
    Rectangle {
        anchors.fill: parent
        color: materialColors.grey_10

        Rectangle {
            id: storeBox
            clip: true
            color: "transparent"
            height: parent.height
            width: parent.width

            Column {
                id: emptyCol
                spacing: 20
                anchors.centerIn: parent
                Row {
                    spacing: 10
                    Rectangle {
                        width: 75
                        height: 75
                        radius: 75
                        color: materialColors.grey_20
                    }
                    Rectangle {
                        width: 200
                        height: 75
                        color: "transparent"
                        Column {
                            anchors.centerIn: parent
                            spacing: 5

                            Rectangle {
                                width: 75
                                height: 15
                                color: materialColors.grey_20
                            }
                            Rectangle {
                                width: 175
                                height: 15
                                color: materialColors.grey_20
                            }
                            Rectangle {
                                width: 30
                                height: 15
                                color: materialColors.grey_20
                            }
                        }
                    }
                }
                Row {
                    spacing: 10
                    Rectangle {
                        width: 75
                        height: 75
                        radius: 75
                        color: materialColors.grey_20
                    }
                    Rectangle {
                        width: 200
                        height: 75
                        color: "transparent"
                        Column {
                            anchors.centerIn: parent
                            spacing: 5

                            Rectangle {
                                width: 75
                                height: 15
                                color: materialColors.grey_20
                            }
                            Rectangle {
                                width: 175
                                height: 15
                                color: materialColors.grey_20
                            }
                            Rectangle {
                                width: 30
                                height: 15
                                color: materialColors.grey_20
                            }
                        }
                    }
                }
            }

            Button {
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 100
                anchors.horizontalCenter: parent.horizontalCenter
                highlighted: true
                Material.background: materialColors.colorPrimary
                text: "work in progress! - Back"
                flat: true
                onClicked: stackview.pop()
                Material.accent: "white"
            }
        }

        GeneralToolBar {
            backgroundColor: materialColors.colorPrimary
            iconsColor: "white"
            toolBarText: "TAG"
            leftIcon: "Ic_Menu"
            rightIconLeft: ""
            rightIconRight: "Ic_MoreVert"

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
        }
    }
}
