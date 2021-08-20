import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../Drawables/"


Item {
    property alias controller: bottomSheetBox
    property var model: ""

    Drawer {
        id: bottomSheetBox
        edge: Qt.BottomEdge
        width: parent.width
        height: mainWindow.height / 1.5 > 480 ? 480 : mainWindow.height / 1.5
        position: .3
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        Rectangle {
            anchors.fill: parent
            border.color: "transparent"

            Rectangle {
                id: toggle
                width: 45
                height: 10
                radius: 8
                color: materialStatics.grey_10
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                id: title
                text: qsTr("In Iran Tehran City")
                font.family: "Sawasdee"
                anchors.top: toggle.bottom
                anchors.topMargin: 35
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 35
                color: "black"
                font.bold: true
            }

            Rectangle {
                id: ratingStars
                anchors.top: title.bottom
                anchors.topMargin: 25
                anchors.left: title.left
                width: 75
                height: 15
                color: materialStatics.grey_10
            }
            Text {
                id: numberOfVotes
                text: qsTr("4.8 (57)")
                font.family: "Sawasdee"
                anchors.left: ratingStars.right
                anchors.verticalCenter: ratingStars.verticalCenter
                anchors.leftMargin: 10
                font.pixelSize: 16
                color: materialStatics.grey_40
            }

            Rectangle {
                id: splitter1
                anchors.left: ratingStars.left
                anchors.right: parent.right
                anchors.rightMargin: 25
                height: 1
                anchors.top: numberOfVotes.bottom
                anchors.topMargin: 5
                color: materialStatics.grey_10
            }

            Text {
                id: deallineTime
                text: "12 min away"
                font.family: "Sawasdee"
                anchors.top: splitter1.bottom
                anchors.topMargin: 25
                anchors.left: ratingStars.left
                font.pixelSize: 22
                font.bold: true
                color: materialStatics.colorPrimary
            }
            Rectangle {
                id: splitter2
                anchors.left: ratingStars.left
                anchors.right: parent.right
                anchors.rightMargin: 25
                height: 1
                anchors.top: deallineTime.bottom
                anchors.topMargin: 25
                color: materialStatics.grey_10
            }

            Rectangle {
                id: prop1
                anchors.top: splitter2.bottom
                anchors.topMargin: 1
                anchors.left: parent.left
                anchors.right: parent.right
                height: 50
                color: "transparent"

                Ic_Location {
                    id: locIcon
                    height: 20
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 28
                    controller.fillColor: "#cccccc"
                    controller.strokeColor: "transparent"
                    controller.strokeWidth: 1
                    function onControllerClicked(value) {
                        console.log(value)
                    }
                }
                Text {
                    x: splitter2.x
                    text: "740 Valencia St, San Francisco, CA"
                    font.family: "Sawasdee"
                    anchors.verticalCenter: locIcon.verticalCenter
                    anchors.topMargin: 35
                    font.pixelSize: 20
                    font.bold: true
                    color: "black"
                }
            }
            Rectangle {
                id: prop2
                anchors.top: prop1.bottom
                anchors.topMargin: 1
                anchors.left: parent.left
                anchors.right: parent.right
                height: 50
                color: "transparent"

                Text {
                    x: splitter2.x
                    text: "(415) 349-0942"
                    font.family: "Sawasdee"
                    anchors.verticalCenter: phoneIcon.verticalCenter
                    anchors.topMargin: 35
                    font.pixelSize: 20
                    font.bold: true
                    color: "black"
                }

                Ic_Phone {
                    id: phoneIcon
                    height: 20
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 28
                    controller.fillColor: "#cccccc"
                    controller.strokeColor: "transparent"
                    controller.strokeWidth: 1
                    function onControllerClicked(value) {
                        console.log(value)
                    }
                }
            }
            Rectangle {
                id: prop3
                anchors.top: prop2.bottom
                anchors.topMargin: 1
                anchors.left: parent.left
                anchors.right: parent.right
                height: 50
                color: "transparent"

                Text {
                    x: splitter2.x
                    text: "Wed, 10 AM - 9 PM"
                    font.family: "Sawasdee"
                    anchors.verticalCenter: schedIcon.verticalCenter
                    anchors.topMargin: 35
                    font.pixelSize: 20
                    font.bold: true
                    color: "black"
                }

                Ic_Schedule {
                    id: schedIcon
                    height: 20
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 28
                    controller.fillColor: "#cccccc"
                    controller.strokeColor: "transparent"
                    controller.strokeWidth: 1
                    function onControllerClicked(value) {
                        console.log(value)
                    }
                }
            }
        }
    }
}
