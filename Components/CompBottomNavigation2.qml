import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Drawables/"


Item {
    property color focusedColor
    property color unFocusedColor
    property real maxWidth
    property var currIndex: -1
    property var model

    signal currentNavIndexChanged(var newIndex)


    Component.onCompleted: {
        for (var i = 0; i < model.length; ++i) {
            menuList.model.append({
                                      "le_btnName": model[i].name,
                                      "le_btnIconPath": model[i].icon,
                                      "le_background": model[i].backgroundColor.toString(
                                          ),
                                      "le_focusedColor": focusedColor.toString(
                                                             ),
                                      "le_unFocusedColor": unFocusedColor.toString(
                                                               ),
                                      "le_width": maxWidth / model.length,
                                      "le_hasFocus": currIndex === i ? true : false
                                  })
        }
    }

    Rectangle {
        anchors.fill: parent
        color: !menuList.model.get(
                   currIndex) ? materialStatics.blue_grey_700 : menuList.model.get(
                                    currIndex)["le_background"]
        clip: true

        Behavior on color {
            ColorAnimation {
                duration: 200
            }
        }

        ListView {
            id: menuList
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            height: contentItem.childrenRect.height
            spacing: 8
            orientation: ListView.Horizontal
            clip: true
            model: ListModel {}
            delegate: ItemBottomNavigation2 {
                width: maxWidth / menuList.model.count
                onBtnPressed: {
                    for (var i = 0; i < menuList.model.count; ++i) {
                        if (menuList.model.get(i)["le_btnName"] !== value) {
                            menuList.model.get(i)["le_hasFocus"] = false
                        } else {
                            menuList.model.get(i)["le_hasFocus"] = true
                            currIndex = i
                            currentNavIndexChanged(currIndex)
                        }
                    }
                }
            }
        }
    }
}
