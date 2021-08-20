import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12

import "../Drawables/"
import ".."

Item {
    property color backgroundColor: "#2e2e2e"
    property color accentColor: "#2e2e2e"
    property bool enableText: false
    property var icon
    property var model
    property var overlay
    property alias controllerOptions: options
    property bool openning: false
    property bool closing: false

    signal itemCalled(var item)
    width: 200
    height: fab.height + options.height + 20

    Colors {
        id: materialStatics
    }

    Component.onCompleted: {
        for (var i = 0; i < model.length; ++i) {
            optionList.model.append({
                                        "le_name": model[i].name,
                                        "le_icon": model[i].icon,
                                        "le_showText":enableText,
                                        "le_backGroundColor": "white",
                                        "le_iconColor": "#78909C"
                                    })
        }
    }

    Rectangle {
        id: options
        anchors.bottom: fab.top
        anchors.bottomMargin: 10
        anchors.right: fab.right
        anchors.rightMargin: fab.width / 4 - 5
        width: optionList.width + 20
        height: 0
        color: "transparent"
        Material.elevation: 6
        clip: true

        Behavior on height {
            NumberAnimation {
                duration: 100
            }
        }

        ListView {
            id: optionList
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            interactive: false
            height: contentItem.childrenRect.height
            width: contentItem.childrenRect.width
            clip: true

            model: ListModel {}
            delegate: ItemButtonFabMore {}
        }
    }

    RoundButton {
        id: fab
        width: 80
        height: 80
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.margins: 20
        highlighted: true
        smooth: true
        text: "+"

        Material.background: backgroundColor
        contentItem: Text {
            text: fab.text
            font.pixelSize: 35
            opacity: enabled ? 1.0 : 0.3
            color: accentColor
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight

            RotationAnimator {
                id:openRotate
                target: fab.contentItem
                from: 0
                to: 360
                duration: 100
                running: openning
            }

            RotationAnimator {
                id:closeRotate
                target: fab.contentItem
                from: 0
                to: -360
                duration: 100
                running: closing
            }
        }
        onClicked: {
            overlay.visible = !overlay.visible
            options.height === 0 ? options.height = 200 : options.height = 0
            options.height === 0 ? openning = true : openning = false
            options.height !== 0 ? closing = true : closing = false
        }
    }
}
