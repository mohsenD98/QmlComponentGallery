import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

import "../Tools/"
import "../Drawables/"

Rectangle {
    id: item
    width: parent.width
    height: subComponentList.height + itemName.height + 64 // margins
    color: "white"
    clip: true

    property bool opened: false

    Component.onCompleted: {
        var names = le_names.split(",")
        var pics = le_pics.split(",")

        for (var i = 0; i < names.length; ++i) {
            subComponentList.model.append({
                                              "le_name": names[i],
                                              "le_pic": pics[i],
                                              "le_text": le_text
                                          })
        }
    }

    Behavior on height {
        NumberAnimation {
            duration: 135
        }
    }

    ListView {
        id: subComponentList
        anchors.top: itemName.bottom
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.right: parent.right
        height: contentItem.childrenRect.height
        spacing: 8
        clip: true
        interactive: false

        model: ListModel {}

        delegate: ItemSubSectionedList {
            width: item.width

            onLayoutSelected: {
                console.log(path)
            }
        }
    }

    Text {
        id: itemName
        text: le_date
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 20
        font.pixelSize: 18
        font.bold: true
        color: materialStatics.grey_60
    }
    //    RippleLayout {
    //        mouseArea: itemMouseArea
    //        anchors.fill: item
    //    }
}
