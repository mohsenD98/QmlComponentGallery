import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

import "../Tools/"
import "../Drawables/"

Rectangle {
    id: item
    width: mainWindow.width - 16
    height: opened ? (40 * subComponentList.count) + 100 : 50
    radius: 8
    color: materialColors.grey_95

    property bool opened: false

    Behavior on height {
        NumberAnimation {
            duration: 135
        }
    }

    Ic_arrowDrop {
        id: dropDownIcon
        anchors.right: parent.right
        anchors.rightMargin: 24
        anchors.verticalCenter: parent.verticalCenter
        controller.fillColor: materialColors.colorPrimary
        controller.strokeColor: "transparent"
        controller.strokeWidth: 1
    }

    MouseArea {
        id: itemMouseArea
        anchors.fill: parent

        onClicked: {
            console.log("clicked")
            opened = !opened
            if (opened) {
                subComponentList.visible = true
                listIconLoader.anchors.verticalCenter = undefined
                listIconLoader.anchors.top = parent.top
                listIconLoader.anchors.topMargin = 25

                itemName.anchors.verticalCenter = undefined
                itemName.anchors.top = parent.top
                itemName.anchors.topMargin = 25

                dropDownIcon.anchors.verticalCenter = undefined
                dropDownIcon.anchors.top = parent.top
                dropDownIcon.anchors.topMargin = 25

                dropDownIcon.doRotate = true
            } else {
                subComponentList.visible = false
                listIconLoader.anchors.top = undefined
                itemName.anchors.top = undefined
                dropDownIcon.anchors.top = undefined

                listIconLoader.anchors.verticalCenter = parent.verticalCenter
                itemName.anchors.verticalCenter = parent.verticalCenter
                dropDownIcon.anchors.verticalCenter = parent.verticalCenter

                dropDownIcon.doRotate = false
            }
        }
    }

    ListView {
        id: subComponentList
        anchors.fill: parent
        anchors.topMargin: 65
        anchors.leftMargin: itemName.x
        spacing: 8

        model: ListModel {

            ListElement {
                subModelName: "Bottom Navigation"
            }
            ListElement {
                subModelName: "Bottom Sheet"
            }
            ListElement {
                subModelName: "Buttons"
            }
            ListElement {
                subModelName: "Buttons"
            }
            ListElement {
                subModelName: "Buttons"
            }
        }
        delegate: ItemSubList {
            width: item.width - itemName.x - 24
        }
    }
    Loader {
        id: listIconLoader
        anchors.left: parent.left
        anchors.leftMargin: 24
        anchors.verticalCenter: parent.verticalCenter
        Component.onCompleted: {
            var component = Qt.createComponent(
                        "qrc:/Drawables/" + ic_name + ".qml")
            sourceComponent = component
        }
    }

    Text {
        id: itemName
        color: "white"
        text: name
        anchors.left: listIconLoader.right
        anchors.leftMargin: 24
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 14
    }

    RippleLayout {
        mouseArea: itemMouseArea
        anchors.fill: item
    }
}
