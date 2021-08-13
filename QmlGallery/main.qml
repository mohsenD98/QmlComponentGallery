import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.12
import QtGraphicalEffects 1.0

import "Components/"

Window {
    id: mainWindow
    visible: true
    width: 480
    height: 720
    title: qsTr("Qml Gallery")
    color: materialColors.grey_100_

    Colors {
        id: materialColors
    }

    Toolbar {
        id: toolbar
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        height: toolbarHeight
        toolbarHeight: 50
        clip: true
    }

    Image {
        id: ic_app
        height: 54
        width: 54
        anchors.top: toolbar.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        source: "qrc:/images/ic_logo.png"

        ColorOverlay {
            anchors.fill: ic_app
            source: ic_app
            color: materialColors.colorPrimary
        }
    }

    Rectangle {
        id: spliter
        anchors.top: ic_app.bottom
        anchors.topMargin: 25
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.margins: 8
        height: 1
        color: materialColors.colorPrimaryDark
        opacity: .15
    }

    Rectangle {
        anchors.top: spliter.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 8
        color: "transparent"
        clip: true

        ListView {
            anchors.fill: parent
            spacing: 8

            model: ListModel {
                ListElement {
                    name: "Bottom Navigation"
                    ic_name: "Ic_bottomNavigation"
                }

                ListElement {
                    name: "Bottom Sheet"
                    ic_name: "Ic_bottomSheet"
                }
                ListElement {
                    name: "Buttons"
                    ic_name: "Ic_buttons"
                }

                ListElement {
                    name: "Bottom Sheet"
                    ic_name: "Ic_bottomSheet"
                }
                ListElement {
                    name: "Buttons"
                    ic_name: "Ic_buttons"
                }
                ListElement {
                    name: "Bottom Sheet"
                    ic_name: "Ic_bottomSheet"
                }
                ListElement {
                    name: "Buttons"
                    ic_name: "Ic_buttons"
                }
            }
            delegate: ItemListMenu {}
        }
    }
}
