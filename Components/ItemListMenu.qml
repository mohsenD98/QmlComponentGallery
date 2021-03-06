import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

import "../Drawables/"

Rectangle {
    id: item
    width: mainWindow.width - 16
    height: opened ? (subComponentList.height) + 80 : 50
    radius: 8
    color: materialStatics.grey_95
    clip: true

    property bool opened: false

    Component.onCompleted: {
        var subMod = subModels.split(",")
        var newSubMod = isNewSubModel.split(",")
        for (var i = 0; i < subModels.split(",").length; ++i) {
            subComponentList.model.append({
                                              "subModelName": subMod[i],
                                              "isNewSubModel": newSubMod[i] === "1",
                                              "subModelPath": name.split(
                                                                  " ").join(
                                                                  "") + "_" + subMod[i].split(
                                                  " ").join("") + ".qml"
                                          })
        }
    }

    Behavior on height {
        NumberAnimation {
            duration: 135
        }
    }
    Ic_ArrowDrop {
        id: dropDownIcon
        anchors.right: parent.right
        anchors.rightMargin: 24
        anchors.verticalCenter: parent.verticalCenter
        controller.fillColor: materialStatics.colorPrimary
        controller.strokeColor: "transparent"
        controller.strokeWidth: 1
    }

    Rectangle {
        id: newComponentNotif
        width: dropDownIcon.width / 2.79
        height: width
        radius: width
        visible: isNew
        anchors.right: dropDownIcon.left
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        color: materialStatics.colorAccentDark
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
                newComponentNotif.visible = false
            } else {
                subComponentList.visible = false
                listIconLoader.anchors.top = undefined
                itemName.anchors.top = undefined
                dropDownIcon.anchors.top = undefined

                listIconLoader.anchors.verticalCenter = parent.verticalCenter
                itemName.anchors.verticalCenter = parent.verticalCenter
                dropDownIcon.anchors.verticalCenter = parent.verticalCenter

                dropDownIcon.doRotate = false
                newComponentNotif.visible = isNew
            }
        }
    }

    ListView {
        id: subComponentList
        anchors.top: parent.top
        anchors.topMargin: 65
        anchors.left: parent.left
        anchors.leftMargin: itemName.x
        anchors.right: parent.right
        height: contentItem.childrenRect.height
        spacing: 8
        model: ListModel {}

        delegate: ItemSubList {
            width: item.width - itemName.x - 24

            onLayoutSelected: {
                // call from main.qml
                loadLayout(name.split(" ").join("") + "/" + path)
            }
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
        onLoaded: listIconLoader.item.controller.fillColor = materialStatics.colorPrimary
    }

    Text {
        id: itemName
        color: "white"
        text: name
        anchors.left: listIconLoader.right
        anchors.leftMargin: 24
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 14
        font.bold: true
    }
}
