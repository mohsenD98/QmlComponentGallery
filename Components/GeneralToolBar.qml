import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.12

import "../Drawables/"
import "../"
import "../Tools/"

Item {
    height: 60

    property var toolBarText
    property color backgroundColor
    property color iconsColor
    property var leftIcon
    property var rightIconLeft
    property var rightIconRight
    property var shapeScales: 1.25

    Rectangle {
        id: toolbar
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        height: 60
        color: backgroundColor

        Loader {
            id: iconLoaderLeft
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.verticalCenter: parent.verticalCenter
            Component.onCompleted: {
                var component = Qt.createComponent(
                            "qrc:/Drawables/" + leftIcon + ".qml")
                sourceComponent = component
            }
            onLoaded: {
                iconLoaderLeft.item.controller.fillColor = iconsColor
                iconLoaderLeft.item.baseShape.scale = shapeScales
            }
        }
        MouseArea {
            id: menu
            width: 60
            height: 60
            onClicked: {
                stackview.pop()
            }
        }

        RippleLayout {
            mouseArea: menu
            anchors.fill: parent
        }

        Text {
            id: toolbarText
            anchors.left: iconLoaderLeft.right
            anchors.verticalCenter: iconLoaderLeft.verticalCenter
            anchors.leftMargin: 20
            color: iconsColor
            text: toolBarText
            font.pixelSize: 18
            font.family: "Sans Serif"
            font.bold: true
        }

        Loader {
            id: iconLoaderRightLeft
            height: 20
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: iconLoaderRightRight.left
            anchors.rightMargin: 28

            Component.onCompleted: {
                if (rightIconLeft !== "") {
                    var component = Qt.createComponent(
                                "qrc:/Drawables/" + rightIconLeft + ".qml")
                    sourceComponent = component
                }
            }
            onLoaded: {
                iconLoaderRightLeft.item.controller.fillColor = iconsColor
                iconLoaderRightLeft.item.baseShape.scale = shapeScales
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }
        Loader {
            id: iconLoaderRightRight
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 16
            Component.onCompleted: {
                if (rightIconRight !== "") {
                    var component = Qt.createComponent(
                                "qrc:/Drawables/" + rightIconRight + ".qml")
                    sourceComponent = component
                }
            }
            onLoaded: {
                iconLoaderRightRight.item.controller.fillColor = iconsColor
                iconLoaderRightRight.item.baseShape.scale = shapeScales
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }
    }
}
