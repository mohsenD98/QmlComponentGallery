import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12


import "../Components/"

Item {
    clip: true
    property var applyTheme: "Light"
    signal draggingDown(var value)
    signal draggingUp(var value)


    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_10

        Toolbar4 {
            id: searchBar
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            backgroundColor: materialStatics.colorPrimary
            toolbarHeight: 50
            clip: true

            Behavior on height {
                NumberAnimation {
                    duration: 100
                }
            }
        }

        Column {
            anchors.top: searchBar.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.margins: 20
            spacing: 10
            Row {
                spacing: 10
                width: parent.width
                height: 175
                CompCardsCheckable {
                    height: 175
                    width: parent.width / 2.05
                    mtext: "Aliquet Et Ante"
                    subText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                    backgroundColor: "white"
                    accentColor: materialStatics.colorPrimary
                }
                CompCardsCheckable {
                    height: 175
                    width: parent.width / 2.05
                    mtext: "Aliquet Et Ante"
                    subText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                    backgroundColor: "white"
                    accentColor: materialStatics.colorPrimary
                }
            }
            CompCardsCheckable {
                height: 175
                anchors.right: parent.right
                anchors.left: parent.left
                mtext: "Quisque Sapien Lorem"
                subText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                backgroundColor: "white"
                accentColor: materialStatics.colorPrimary
            }
        }
    }
}
