import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../../Components/"
import "../../Drawables/"
import "../../Tools/"
import "../"

Item {
    id: rootItem
    clip: true
    property var applyTheme: "Light"
    signal draggingDown(var value)
    signal draggingUp(var value)

    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_5

        GeneralToolBar {
            id: toolbar
            backgroundColor: materialStatics.colorPrimary
            iconsColor: "white"
            toolBarText: "Material Dialogs !"
            leftIcon: "Ic_Menu"
            rightIconLeft: "Ic_Search"
            rightIconRight: "Ic_MoreVert"

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
        }

        ListView {
            anchors.top: toolbar.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            model: ListModel {
                ListElement {
                    le_name: "CUSTOM INFO DIALOG"
                    le_index: 0
                }

                ListElement {
                    le_name: "CUSTOM WARNING DIALOG"
                    le_index: 1
                }

                ListElement {
                    le_name: "CUSTOM LIGHT DIALOG"
                    le_index: 2
                }

                ListElement {
                    le_name: "CUSTOM DARK DIALOG"
                    le_index: 3
                }

                ListElement {
                    le_name: "HEADER DIALOG"
                    le_index: 4
                }

                ListElement {
                    le_name: "IMAGE DIALOG"
                    le_index: 5
                }

                ListElement {
                    le_name: "MENU PAYMENT DIALOG"
                    le_index: 6
                }

                ListElement {
                    le_name: "ACHIEVEMENT DIALOG"
                    le_index: 7
                }

                ListElement {
                    le_name: "CONTACT US DIALOG"
                    le_index: 8
                }
            }

            delegate: Rectangle {
                width: parent.width
                height: 60
                color: "transparent"
                Text {
                    id: optionName
                    text: le_name
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 24
                    color: materialStatics.grey_60
                    font.family: materialStatics.fontFamily
                    font.pixelSize: 16
                }
                Rectangle {
                    width: parent.width
                    anchors.bottom: parent.bottom
                    height: 1
                    color: materialStatics.grey_60
                    opacity: 0.3
                }
                CompDialogMaterialCustomInfo {
                    id: customInfoDialog
                }
                CompDialogMaterialCustomWarning {
                    id: customInfoDialogWarning
                }

                MouseArea {
                    id: optionMouseArea
                    anchors.fill: parent

                    onClicked: {
                        console.log("index : ", le_index)
                        switch (le_index) {
                        case 0:
                            customInfoDialog.popupController.open()
                            break
                        case 1:
                            customInfoDialogWarning.popupController.open()
                            break
                        }
                    }
                }
                RippleLayout {
                    mouseArea: optionMouseArea
                    anchors.fill: parent
                }
            }
        }
    }
}
