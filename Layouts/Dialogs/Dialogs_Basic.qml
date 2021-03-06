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
            toolBarText: "BASIC"
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
                    le_name: "CONFIRMATION Diallog"
                    le_component: "qrc:/Components/CompDialogBasicConfirmation.qml"
                }
                ListElement {
                    le_name: "ALERT DIALOG"
                    le_component: "qrc:/Components/CompDialogBasicConfirmation.qml"
                }
                ListElement {
                    le_name: "SINGLE DIALOG"
                    le_component: "qrc:/Components/CompDialogBasicRadios.qml"
                }
                ListElement {
                    le_name: "MULTIPLE CHOICE GIALOG"
                    le_component: "qrc:/Components/CompDialogBasicChackBox.qml"
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

                CompDialogBasicRadios {
                    id: radioDialogs
                    radioNames: "option1,option2,option3"
                }
                CompDialogBasicChackBox {
                    id: radicheckboxesDialogs
                    radioNames: "option1,option2,option3"
                }

                MouseArea {
                    id: optionMouseArea
                    anchors.fill: parent

                    onClicked: {
                        if (le_name === "SINGLE DIALOG") {
                            radioDialogs.popupController.open()
                            return
                        }

                        if (le_name === "MULTIPLE CHOICE GIALOG") {
                            radicheckboxesDialogs.popupController.open()
                            return
                        }

                        var component = Qt.createComponent(le_component)
                        if (component.status === Component.Ready) {

                            var dialog = component.createObject(rootItem)
                            if (le_name === "ALERT DIALOG") {
                                dialog.bodyText = ""
                                dialog.titleText = "Discard Draft?"
                                dialog.btnAcceptText = "Discard"
                                dialog.btnDiscardText = "Cancel"
                            }

                            dialog.popupController.open()
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
