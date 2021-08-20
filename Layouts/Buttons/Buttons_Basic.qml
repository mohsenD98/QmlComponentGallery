import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.0

import "../../Components/"
import "../"

Item {
    clip: true

    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_50

        Text {
            id: lblButtons1
            text: qsTr("Basic Buttons")
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 20
            anchors.leftMargin: 20
            color: materialStatics.blue_grey_400
        }
        Rectangle {
            anchors.right: parent.right
            anchors.left: lblButtons1.right
            anchors.verticalCenter: lblButtons1.verticalCenter
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            color: materialStatics.grey_20
            height: 1
        }

        GridLayout {
            id: gridBasic
            anchors.top: lblButtons1.bottom
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            columns: 3
            rows: 3
            columnSpacing: 10
            rowSpacing: 10

            Button {
                text: "NORMAL"
                Layout.fillWidth: true
            }
            Button {
                id: control1
                text: "PRIMARY"
                Layout.fillWidth: true
                contentItem: Text {
                    text: control1.text
                    font: control1.font
                    opacity: enabled ? 1.0 : 0.3
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    color: materialStatics.colorPrimary
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3

                    radius: 2
                }
            }
            Button {
                id: control2
                text: "ACCENT"
                Layout.fillWidth: true
                contentItem: Text {
                    text: control2.text
                    font: control2.font
                    opacity: enabled ? 1.0 : 0.3
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    color: materialStatics.colorAccent
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3

                    radius: 2
                }
            }

            Button {
                text: "NORMAL"
                Layout.fillWidth: true
                flat: true
            }
            Button {
                id: control3
                text: "PRIMARY"
                Layout.fillWidth: true
                flat: true
                contentItem: Text {
                    text: control3.text
                    font: control3.font
                    opacity: enabled ? 1.0 : 0.3
                    color: materialStatics.colorPrimary
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }
            Button {
                id: control4
                text: "ACCENT"
                Layout.fillWidth: true
                flat: true
                contentItem: Text {
                    text: control4.text
                    font: control4.font
                    opacity: enabled ? 1.0 : 0.3
                    color: materialStatics.colorAccent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }

            Button {
                text: "DISABLE"
                flat: true
                enabled: false
                Layout.fillWidth: true
            }
            Button {
                id: control5
                text: "PRIMARY"
                Layout.fillWidth: true
                contentItem: Text {
                    text: control5.text
                    font: control5.font
                    opacity: enabled ? 1.0 : 0.3
                    color: materialStatics.colorPrimary
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    color: "white"
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: "white"

                    radius: 2
                }
            }
            Button {
                id: control6
                text: "ACCENT"
                Layout.fillWidth: true
                contentItem: Text {
                    text: control6.text
                    font: control6.font
                    opacity: enabled ? 1.0 : 0.3
                    color: materialStatics.colorAccent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    color: "white"
                    implicitWidth: 100
                    implicitHeight: 40
                    opacity: enabled ? 1 : 0.3
                    border.color: "white"

                    radius: 2
                }
            }
        }

        Text {
            id: lblButtons2
            text: qsTr("Material Buttons")
            anchors.top: gridBasic.bottom
            anchors.left: parent.left
            anchors.topMargin: 20
            anchors.leftMargin: 20
            color: materialStatics.blue_grey_400
        }
        Rectangle {
            anchors.right: parent.right
            anchors.left: lblButtons2.right
            anchors.verticalCenter: lblButtons2.verticalCenter
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            color: materialStatics.grey_20
            height: 1
        }

        GridLayout {
            id: gridMaterial
            anchors.top: lblButtons2.bottom
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            columns: 3
            rows: 3
            columnSpacing: 10
            rowSpacing: 10

            Button {
                text: "NORMAL"
                highlighted: true
                Layout.fillWidth: true
            }
            Button {
                text: "PRIMARY"
                highlighted: true
                Layout.fillWidth: true
                Material.background: materialStatics.colorPrimary
                Material.accent: "white"
            }
            Button {
                text: "ACCENT"
                highlighted: true
                Layout.fillWidth: true
                Material.background: materialStatics.colorAccent
                Material.accent: "white"
            }

            Button {
                text: "NORMAL"
                highlighted: true
                Layout.fillWidth: true
                flat: true
            }
            Button {
                text: "PRIMARY"
                highlighted: true
                Layout.fillWidth: true
                Material.accent: materialStatics.colorPrimary
                flat: true
            }
            Button {
                text: "ACCENT"
                highlighted: true
                Layout.fillWidth: true
                Material.accent: materialStatics.colorAccent
                flat: true
            }

            Button {
                text: "NORMAL"
                highlighted: true
                Layout.fillWidth: true
                enabled: false
            }
            Button {
                id: control7
                text: "PRIMARY"
                highlighted: true
                Layout.fillWidth: true
                Material.background: "white"
                contentItem: Text {
                    text: control7.text
                    font: control7.font
                    opacity: enabled ? 1.0 : 0.3
                    color: materialStatics.colorPrimary
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }
            Button {
                id: control8
                text: "ACCENT"
                highlighted: true
                Layout.fillWidth: true
                Material.background: "white"
                contentItem: Text {
                    text: control8.text
                    font: control8.font
                    opacity: enabled ? 1.0 : 0.3
                    color: materialStatics.colorAccent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }
        }

        Text {
            id: lblButtons3
            text: qsTr("Round Buttons")
            anchors.top: gridMaterial.bottom
            anchors.left: parent.left
            anchors.topMargin: 20
            anchors.leftMargin: 20
            color: materialStatics.blue_grey_400
        }
        Rectangle {
            anchors.right: parent.right
            anchors.left: lblButtons3.right
            anchors.verticalCenter: lblButtons3.verticalCenter
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            color: materialStatics.grey_20
            height: 1
        }

        GridLayout {
            id: gridRound
            anchors.top: lblButtons3.bottom
            anchors.topMargin: 50
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            columns: 3
            columnSpacing: 10
            rowSpacing: 10

            Rectangle {
                color: "transparent"
                Layout.fillWidth: true
                Layout.fillHeight: true
                RoundButton {
                    highlighted: true
                    icon.source: "qrc:/images/ic_mic.png"
                    Material.background: "white"
                    anchors.centerIn: parent
                    width: 80
                    height: 80
                    icon.width: 50
                    icon.height: 50
                    icon.color: "black"
                }
            }
            Rectangle {
                color: "transparent"
                Layout.fillWidth: true
                Layout.fillHeight: true
                RoundButton {
                    highlighted: true
                    icon.source: "qrc:/images/ic_plus.png"
                    Material.background: materialStatics.colorPrimary
                    anchors.centerIn: parent
                    width: 80
                    height: 80
                    icon.width: 50
                    icon.height: 50
                }
            }
            Rectangle {
                color: "transparent"
                Layout.fillWidth: true
                Layout.fillHeight: true
                RoundButton {
                    highlighted: true
                    icon.source: "qrc:/images/ic_create.png"
                    Material.background: materialStatics.colorAccent
                    anchors.centerIn: parent
                    width: 80
                    height: 80
                    icon.width: 50
                    icon.height: 50
                }
            }
        }
    }
}
