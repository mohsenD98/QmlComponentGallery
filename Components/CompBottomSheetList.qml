import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../Drawables/"


Item {
    property alias controller: bottomSheetBox
    property var model: ""

    Component.onCompleted: {
        var models = model.split(",")
        for (var i = 0; i < models.length; ++i) {
            controlList.model.append({
                                         "name": models[i],
                                         "ic_name": "Ic_" + models[i].split(
                                             " ").join("")
                                     })
        }
    }

    Drawer {
        id: bottomSheetBox
        edge: Qt.BottomEdge
        width: parent.width
        height: mainWindow.height / 2.95 > 244.06 ? 244.06 : mainWindow.height / 2.95
        modal: true
        interactive: false
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        Rectangle {
            anchors.fill: parent
            border.color: "transparent"

            ListView {
                id: controlList
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                height: contentItem.childrenRect.height
                spacing: 8
                model: ListModel {}

                delegate: ItemControlList {
                    width: parent.width

                    onItemClicked: {
                        console.log(itemName)
                        onClicked: bottomSheetBox.close()
                    }
                }
            }
        }
    }
}
