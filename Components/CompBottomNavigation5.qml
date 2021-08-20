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
    property bool enableText: false

    signal currentNavIndexChanged(var newIndex)

    Colors {
        id: materialStatics
    }

    Component.onCompleted: {

        //        for (var i = 0; i < model.length; ++i) {
        //            menuList.model.append({
        //                                      "le_btnName": model[i].name,
        //                                      "le_btnIconPath": model[i].icon,
        //                                      "le_background": model[i].backgroundColor.toString(
        //                                          ),
        //                                      "focusedColor": focusedColor.toString(
        //                                                             ),
        //                                      "le_unFocusedColor": unFocusedColor.toString(
        //                                                               ),
        //                                      "le_width": maxWidth / model.length,
        //                                      "le_hasFocus": currIndex === i ? true : false
        //                                  })
        //        }
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
            id: btnLeft1
            anchors.left: parent.left
            width: maxWidth / 5
            height: 50

            Row {
                anchors.centerIn: parent
                spacing: 6
                Loader {
                    Component.onCompleted: {
                        var component = Qt.createComponent(model[0]["icon"])
                        sourceComponent = component
                    }
                    onLoaded: item.controller.fillColor = focusedColor
                }
                Text {
                    text: model[0]["name"]
                    font.pixelSize: 16
                    font.bold: true
                    color: focusedColor
                    visible: enableText
                }
            }
        }

        Rectangle {
            id: btnLeft
            anchors.left: btnLeft1.right
            width: maxWidth / 5
            height: 50

            Row {
                anchors.centerIn: parent
                spacing: 6
                Loader {
                    Component.onCompleted: {
                        var component = Qt.createComponent(model[1]["icon"])
                        sourceComponent = component
                    }
                    onLoaded: item.controller.fillColor = focusedColor
                }
                Text {
                    text: model[1]["name"]
                    font.pixelSize: 16
                    font.bold: true
                    color: focusedColor
                    visible: enableText
                }
            }
        }

        Rectangle {
            id: btncenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: focusedColor
            width: 40
            height: 40
            radius: 40

            Loader {
                anchors.centerIn: parent
                Component.onCompleted: {
                    var component = Qt.createComponent(model[2]["icon"])
                    sourceComponent = component
                }
                onLoaded: item.controller.fillColor = backgroundColor
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    stackview.pop()
                }
            }
        }

        Rectangle {
            id: rightcenter
            anchors.right: rightcenter1.left
            width: maxWidth / 5
            height: 50

            Row {
                anchors.centerIn: parent
                spacing: 6
                Loader {
                    Component.onCompleted: {
                        var component = Qt.createComponent(model[3]["icon"])
                        sourceComponent = component
                    }
                    onLoaded: item.controller.fillColor = focusedColor
                }
                Text {
                    text: model[3]["name"]
                    font.pixelSize: 16
                    font.bold: true
                    color: focusedColor
                    visible: enableText
                }
            }
        }

        Rectangle {
            id: rightcenter1
            anchors.right: parent.right
            width: maxWidth / 5
            height: 50

            Row {
                anchors.centerIn: parent
                spacing: 6
                Loader {
                    Component.onCompleted: {
                        var component = Qt.createComponent(model[4]["icon"])
                        sourceComponent = component
                    }
                    onLoaded: item.controller.fillColor = focusedColor
                }
                Text {
                    text: model[4]["name"]
                    font.pixelSize: 16
                    font.bold: true
                    color: focusedColor
                    visible: enableText
                }
            }
        }
    }
}
