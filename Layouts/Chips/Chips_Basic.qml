import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../../Components/"
import "../../Drawables/"
import "../"

Item {
    clip: true
    property var applyTheme: "Light"
    signal draggingDown(var value)
    signal draggingUp(var value)

    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_10

        GeneralToolBar {
            id: toolbar
            backgroundColor: materialStatics.colorPrimary
            iconsColor: "white"
            toolBarText: "BASIC"
            leftIcon: "Ic_Menu"
            rightIconLeft: "Ic_Send"
            rightIconRight: "Ic_MoreVert"

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
        }

        TextEdit {
            id: textEdit
            anchors.top: toolbar.bottom
            anchors.topMargin: 20
            width: parent.width
            leftPadding: 65
            horizontalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.pixelSize: 18

            Text {
                text: qsTr("To ")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignVCenter
                anchors.left: parent.left
                anchors.leftMargin: 22
                anchors.top: parent.top
                color: materialStatics.grey_60
            }
            Ic_Contacts {
                anchors.right: parent.right
                anchors.rightMargin: 22
                anchors.top: parent.top
                controller.fillColor: materialStatics.colorAccent
            }
        }
        Rectangle {
            id: splitter1
            anchors.top: textEdit.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.right: parent.right
            color: materialStatics.grey_20
            height: 1
        }
        TextEdit {
            id: subjectText
            anchors.top: splitter1.bottom
            anchors.topMargin: 10
            width: parent.width
            leftPadding: 22
            horizontalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.pixelSize: 18

            Text {
                text: qsTr("Subject : ")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignVCenter
                anchors.left: parent.left
                anchors.leftMargin: 22
                anchors.top: parent.top
                color: materialStatics.grey_60
                visible: subjectText.text === ""
            }
        }
        Rectangle {
            id: splitter2
            anchors.top: subjectText.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.right: parent.right
            color: materialStatics.grey_20
            height: 1
        }
        TextEdit {
            id: mainText
            anchors.top: splitter2.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            leftPadding: 22
            font.pixelSize: 18
            wrapMode: Text.WordWrap
            Text {
                text: qsTr("Compose Mail : ")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignVCenter
                anchors.left: parent.left
                anchors.leftMargin: 22
                anchors.top: parent.top
                color: materialStatics.grey_60
                visible: mainText.text === ""
            }
        }
    }
}
