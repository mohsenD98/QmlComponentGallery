import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12

import "../Drawables/"


Item {
    width: 200
    height: options.height

    property var backgroundColor: "#2e2e2e"
    property var accentColor: "#2e2e2e"
    property var model

    property bool showText: true
    property bool showIcon: true
    property bool unselectable: false

    property real currIndex: 0

    signal currentToggleIndexChanged(var index, var value)


    Component.onCompleted: {
        for (var i = 0; i < model.length; ++i) {
            optionList.model.append({
                                        "le_text": model[i].le_text,
                                        "le_icon": model[i].le_icon,
                                        "le_showText": showText,
                                        "le_showIcon": showIcon,
                                        "le_backGroundColor": backgroundColor,
                                        "le_accentColor": accentColor,
                                        "le_selected": currIndex === i ? true : false,
                                        "le_unselectable": unselectable
                                    })
        }
    }

    Rectangle {
        id: borderMask
        width: optionList.contentItem.childrenRect.width
        height: optionList.contentItem.childrenRect.height
        anchors.left: parent.left
        anchors.leftMargin: 20
        y: optionList.y
        radius: 4
        border.color: materialStatics.grey_20
        color: "transparent"
    }

    Rectangle {
        id: options
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 20
        height: optionList.height
        color: "transparent"
        clip: true

        ListView {
            id: optionList
            interactive: false
            height: contentItem.childrenRect.height
            anchors.left: parent.left
            anchors.right: parent.right
            clip: true
            orientation: ListView.Horizontal
            spacing: -1
            model: ListModel {}
            delegate: ItemButtonToggleBasic {
                onItemClicked: {
                    for (var i = 0; i < optionList.model.count; ++i) {
                        if (optionList.model.get(i)["le_text"] !== name) {
                            optionList.model.get(i)["le_selected"] = false
                        } else {
                            if (unselectable) {
                                if (currIndex === i) {
                                    optionList.model.get(
                                                i)["le_selected"] = false
                                    currentToggleIndexChanged(currIndex, false)
                                    currIndex = -1
                                    break
                                }
                            }
                            optionList.model.get(i)["le_selected"] = true
                            currIndex = i
                            currentToggleIndexChanged(currIndex, true)
                        }
                    }
                }
            }
        }
    }
}
