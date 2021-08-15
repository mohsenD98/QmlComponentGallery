import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Drawables/"
import ".."

Item {
    property color focusedColor
    property color unFocusedColor
    property color backgroundColor
    property real maxWidth
    property var currIndex: -1
    property var model

    signal currentNavIndexChanged(var newIndex)

    Colors {
        id: materialColors
    }
    Rectangle {
        anchors.bottom: parent.bottom
        height: 50
        width: parent.width
        color: backgroundColor

        Behavior on color {
            ColorAnimation {
                duration: 200
            }
        }

        Rectangle {
            id: btnLeft
            anchors.left: parent.left
            width: maxWidth / 3
            height: 50

            Loader {
                id: btnIconLoader
                anchors.centerIn: parent
                Component.onCompleted: {
                    var component = Qt.createComponent(model[0]["icon"])
                    sourceComponent = component
                }
                onLoaded: item.controller.fillColor = focusedColor
            }
        }

        Rectangle {
            id: btncenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            width: 66
            height: 66
            radius: 66
            color: focusedColor

            Loader {
                anchors.centerIn: parent
                Component.onCompleted: {
                    var component = Qt.createComponent(model[1]["icon"])
                    sourceComponent = component
                }
                onLoaded: item.controller.fillColor = backgroundColor
            }
        }

        Rectangle {
            id: rightcenter
            anchors.right: parent.right
            width: maxWidth / 3
            height: 50

            Loader {
                anchors.centerIn: parent
                Component.onCompleted: {
                    var component = Qt.createComponent(model[2]["icon"])
                    sourceComponent = component
                }
                onLoaded: item.controller.fillColor = focusedColor
            }
        }
    }
}
