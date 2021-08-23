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
            clip: true
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
                    le_name: "HEADER DIALOG (POLYGON)"
                    le_index: 4
                }

                ListElement {
                    le_name: "HEADER DIALOG (PRODUCT BLUE)"
                    le_index: 5
                }

                ListElement {
                    le_name: "HEADER DIALOG (PRODUCT YELLOW)"
                    le_index: 6
                }

                ListElement {
                    le_name: "HEADER DIALOG (PRODUCT NEWS)"
                    le_index: 7
                }

                ListElement {
                    le_name: "IMAGE DIALOG (FULL)"
                    le_index: 8
                }
                ListElement {
                    le_name: "IMAGE DIALOG (CENTER)"
                    le_index: 9
                }
                ListElement {
                    le_name: "IMAGE DIALOG (SHARE)"
                    le_index: 10
                }
                ListElement {
                    le_name: "IMAGE DIALOG (QUOTES)"
                    le_index: 11
                }

                ListElement {
                    le_name: "CONTACT US DIALOG (PROJECT)"
                    le_index: 12
                }

                ListElement {
                    le_name: "CONTACT US DIALOG (DESIGNER)"
                    le_index: 13
                }

                ListElement {
                    le_name: "CONTACT US DIALOG (DARK)"
                    le_index: 14
                }

                ListElement {
                    le_name: "CONTACT US DIALOG (IMAGE)"
                    le_index: 15
                }

                ListElement {
                    le_name: "ACHIEVEMENT DIALOG (CONGRAT)"
                    le_index: 16
                }

                ListElement {
                    le_name: "ACHIEVEMENT DIALOG (CHAMPION)"
                    le_index: 17
                }

                ListElement {
                    le_name: "ACHIEVEMENT DIALOG (LEVEL)"
                    le_index: 18
                }

                ListElement {
                    le_name: "ACHIEVEMENT DIALOG (RUNNING)"
                    le_index: 19
                }

                ListElement {
                    le_name: "MENU PAYMENT DIALOG"
                    le_index: 20
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
                    id: customWarningDialog
                }

                CompDialogMaterialCustomLight {
                    id: customLightDialog

                    onCallClose: {
                        customLightDialog.popupController.close()
                    }
                }
                CompDialogMaterialCustomDark {
                    id: customDarkDialog
                    anchors.fill: parent

                    onCallClose: {
                        customDarkDialog.popupController.close()
                    }
                }
                CompDialogMaterialHeaderPolygon {
                    id: headerPolygonDarkDialog
                }

                CompDialogMaterialHeaderProductBlue {
                    anchors.fill: parent
                    id: headerProductBlueDialog
                }

                CompDialogMaterialHeaderProductYellow {
                    id: headerProductYellowDialog
                }

                CompDialogMaterialHeaderProductNews {
                    id: headerProductNewsDialog
                }

                CompDialogMaterialImageFull {
                    parent: parent
                    id: imageFullDialog
                }
                CompDialogMaterialImageCenter {
                    id: imageCenterDialog
                }
                CompDialogMaterialImageQuotes {
                    id: imageQuotesDialog
                }
                CompDialogMaterialImageShare {
                    id: imageShareDialog
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
                            customWarningDialog.popupController.open()
                            break
                        case 2:
                            customLightDialog.popupController.open()
                            break
                        case 3:
                            customDarkDialog.popupController.open()
                            break
                        case 4:
                            headerPolygonDarkDialog.popupController.open()
                            break
                        case 5:
                            headerProductBlueDialog.popupController.open()
                            break
                        case 6:
                            headerProductYellowDialog.popupController.open()
                            break
                        case 7:
                            headerProductNewsDialog.popupController.open()
                            break
                        case 8:
                            imageFullDialog.popupController.open()
                            break
                        case 9:
                            imageCenterDialog.popupController.open()
                            break
                        case 10:
                            imageShareDialog.popupController.open()
                            break
                        case 11:
                            imageQuotesDialog.popupController.open()
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
