import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import "../"
import "../Components/"
import "../Drawables/"

Item {
    clip: true
    property var applyTheme: "Light"
    signal draggingDown(var value)
    signal draggingUp(var value)
    Colors {
        id: materialColors
    }

    Rectangle {
        anchors.fill: parent
        color: materialColors.grey_10

        GeneralToolBar {
            id: toolbar
            backgroundColor: materialColors.colorPrimary
            iconsColor: "white"
            toolBarText: "Tag"
            leftIcon: "Ic_Menu"
            rightIconLeft: ""
            rightIconRight: "Ic_Send"

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
        }

        Image {
            id: image
            width: parent.width
            height: 1 / 3 * mainWindow.height > 240 ? 240 : 1 / 3 * mainWindow.height
            fillMode: Image.PreserveAspectCrop
            source: "qrc:/images/image_3.jpg"
        }
        Text {
            id: titleLbl
            anchors.top: image.bottom
            anchors.topMargin: 10
            text: qsTr("Title ")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignVCenter
            anchors.left: parent.left
            anchors.leftMargin: 22
            color: materialColors.grey_60
        }

        TextEdit {
            id: textEdit
            anchors.top: titleLbl.bottom
            anchors.topMargin: 10
            width: parent.width
            leftPadding: 22
            horizontalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.pixelSize: 20
            text: "My Photograph MaterPiece"
        }

        Rectangle {
            id: splitter1
            anchors.top: textEdit.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.right: parent.right
            color: materialColors.grey_20
            height: 1
        }
        Text {
            id: subjectLbl
            anchors.top: splitter1.bottom
            anchors.topMargin: 10
            text: qsTr("Subject ")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignVCenter
            anchors.left: parent.left
            anchors.leftMargin: 22
            color: materialColors.grey_60
        }

        TextEdit {
            id: subjectText
            anchors.top: subjectLbl.bottom
            anchors.topMargin: 10
            width: parent.width
            leftPadding: 22
            horizontalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.pixelSize: 18
        }
        Rectangle {
            id: splitter2
            anchors.top: subjectText.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.right: parent.right
            color: materialColors.grey_20
            height: 1
        }
        Text {
            id: composeLbl
            anchors.top: splitter2.bottom
            anchors.topMargin: 10
            text: qsTr("Compose Mail ")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignVCenter
            anchors.left: parent.left
            anchors.leftMargin: 22
            color: materialColors.grey_60
        }

        TextEdit {
            id: mainText
            anchors.top: composeLbl.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            leftPadding: 22
            font.pixelSize: 18
            text: "Duis tellus metus, elementum a lectus id, aliquet interdum mauris. Nam bibendum efficitur sollicitudin. Proin eleifend libero velit, nec fringilla dolor finibus quis. nMorbi eu libero pellentesque, rutrum metus quis, blandit est. Fusce bibendum accumsan nisi vulputate feugiat. In fermentum laoreet euismod. Praesent sem nisl, facilisis eget odio at, rhoncus scelerisque ipsum. Nulla orci dui, dignissim a risus ut, lobortis porttitor velit.
\n\nNulla id lectus metus. Maecenas a lorem in odio auctor facilisis non vitae nunc. Sed malesuada volutpat massa. Praesent sit amet lacinia augue, mollis tempor dolor."
            wrapMode: Text.WordWrap
        }
    }
}
