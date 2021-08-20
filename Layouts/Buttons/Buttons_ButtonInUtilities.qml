import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../../Drawables/"
import "../../Components/"
import "../"

Item {
    clip: true
    property var applyTheme: "Light"
    signal draggingDown(var value)
    signal draggingUp(var value)

    Rectangle {
        id: storeBox
        clip: true
        color: "transparent"
        height: parent.height
        width: parent.width

        GeneralToolBar {
            id: toolbar
            backgroundColor: materialStatics.colorPrimary
            iconsColor: "white"
            toolBarText: "Qml Gallery"
            leftIcon: "Ic_Menu"
            rightIconLeft: "Ic_Notifications"
            rightIconRight: "Ic_MoreVert"

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
        }

        Flickable {
            anchors.top: toolbar.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            contentHeight: parent.height * 1.5
            contentWidth: parent.width
            clip: true

            Rectangle {
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                color: materialStatics.grey_5

                Ic_Contacts {
                    id: contactIcon
                    anchors.left: parent.left
                    anchors.leftMargin: 35
                    anchors.top: parent.top
                    anchors.topMargin: 50
                    controller.fillColor: materialStatics.colorPrimary
                    controller.strokeColor: "transparent"
                    controller.strokeWidth: 1
                    baseShape.scale: 1.25

                    onControllerClicked: {

                    }
                }
                Text {
                    id: morningPizza
                    text: qsTr("Morning Pizza")
                    color: "Black"
                    anchors.left: contactIcon.right
                    anchors.leftMargin: 35
                    anchors.verticalCenter: contactIcon.verticalCenter
                    font.pixelSize: 30
                }
                Button {
                    id: details
                    anchors.top: morningPizza.bottom
                    anchors.topMargin: 15
                    anchors.left: cancel.right
                    anchors.leftMargin: 25
                    text: "UNINSTALL"
                    highlighted: true
                    Material.background: materialStatics.colorAccent
                }

                Button {
                    id: cancel
                    anchors.top: morningPizza.bottom
                    anchors.topMargin: 15
                    anchors.left: morningPizza.left
                    text: "FORCE STOP"
                    highlighted: true
                    Material.background: "white"
                    contentItem: Text {
                        text: cancel.text
                        font: cancel.font
                        opacity: enabled ? 1.0 : 0.3
                        color: materialStatics.colorAccent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        elide: Text.ElideRight
                    }
                }

                Rectangle {
                    id: splitter1
                    anchors.top: cancel.bottom
                    anchors.topMargin: 25
                    anchors.right: parent.right
                    anchors.left: parent.left
                    height: 1
                    color: materialStatics.grey_20
                }

                Ic_Storage {
                    id: storageIcon
                    anchors.left: parent.left
                    anchors.leftMargin: 35
                    anchors.top: splitter1.top
                    anchors.topMargin: 35
                    controller.fillColor: materialStatics.grey_60
                    controller.strokeColor: "transparent"
                    controller.strokeWidth: 1
                    baseShape.scale: 1.25

                    onControllerClicked: {

                    }
                }
                Text {
                    id: storage
                    text: qsTr("Storage")
                    color: materialStatics.grey_60
                    x: morningPizza.x
                    anchors.verticalCenter: storageIcon.verticalCenter
                    font.pixelSize: 18
                }
                Text {
                    id: total
                    text: qsTr("Total")
                    color: "black"
                    anchors.top: storage.bottom
                    anchors.topMargin: 25
                    x: morningPizza.x
                    font.pixelSize: 18
                }
                Text {
                    id: size
                    text: "11.64 MB"
                    color: "Black"
                    anchors.top: total.bottom
                    anchors.topMargin: 10
                    x: morningPizza.x
                    font.pixelSize: 35
                }
                Rectangle {
                    anchors.top: size.bottom
                    anchors.topMargin: 10
                    x: morningPizza.x
                    height: 18
                    width: parent.width - x - 25
                    color: materialStatics.colorAccentLight
                }
                Rectangle {
                    id: progressed
                    anchors.top: size.bottom
                    anchors.topMargin: 10
                    x: morningPizza.x
                    height: 18
                    width: parent.width - x - 150
                    color: materialStatics.colorAccent
                }
                Text {
                    id: appTitle
                    text: qsTr("App")
                    color: "black"
                    anchors.top: progressed.bottom
                    anchors.topMargin: 10
                    x: morningPizza.x
                    font.pixelSize: 18
                }
                Text {
                    id: appValue
                    text: qsTr("9.4 MB")
                    color: materialStatics.grey_60
                    anchors.top: appTitle.bottom
                    anchors.topMargin: 5
                    x: morningPizza.x
                    font.pixelSize: 18
                }
                Text {
                    id: dataTitle
                    text: qsTr("Data")
                    color: materialStatics.grey_60
                    anchors.top: progressed.bottom
                    anchors.topMargin: 10
                    x: progressed.x + progressed.width
                    font.pixelSize: 18
                }
                Text {
                    id: dataValue
                    text: qsTr("9.4 MB")
                    color: materialStatics.grey_60
                    anchors.top: dataTitle.bottom
                    anchors.topMargin: 5
                    x: progressed.x + progressed.width
                    font.pixelSize: 18
                }

                Button {
                    id: clearDara
                    anchors.top: appValue.bottom
                    anchors.topMargin: 15
                    anchors.left: appValue.left
                    text: "CLEAR DATA"
                    highlighted: true
                    Material.background: "white"
                    contentItem: Text {
                        text: cancel.text
                        font: cancel.font
                        opacity: enabled ? 1.0 : 0.3
                        color: materialStatics.colorAccent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        elide: Text.ElideRight
                    }
                }
                Rectangle {
                    id: splitter2
                    anchors.top: clearDara.bottom
                    anchors.topMargin: 25
                    anchors.right: parent.right
                    anchors.left: parent.left
                    height: 1
                    color: materialStatics.grey_20
                }
                Ic_DataUsage {
                    id: datausageIcon
                    anchors.left: parent.left
                    anchors.leftMargin: 35
                    anchors.top: splitter2.top
                    anchors.topMargin: 35
                    controller.fillColor: materialStatics.grey_60
                    controller.strokeColor: "transparent"
                    controller.strokeWidth: 1
                    baseShape.scale: 1.25

                    onControllerClicked: {

                    }
                }
                Text {
                    id: dataUsage
                    text: qsTr("Data Usage")
                    color: materialStatics.grey_60
                    x: morningPizza.x
                    anchors.verticalCenter: datausageIcon.verticalCenter
                    font.pixelSize: 18
                }
                Text {
                    id: total2
                    text: qsTr("Total")
                    color: "black"
                    x: morningPizza.x
                    anchors.top: dataUsage.bottom
                    anchors.topMargin: 20
                    font.pixelSize: 18
                }
                Text {
                    text: qsTr("3.58 MB")
                    color: "black"
                    anchors.top: total2.bottom
                    anchors.topMargin: 10
                    x: morningPizza.x
                    font.pixelSize: 35
                }
            }
        }
    }
}
