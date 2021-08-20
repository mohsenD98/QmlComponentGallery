import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12

Item {
    property alias popupController: popup
    property var pWidth: mainWindow.width - 50
    property var pHeight: title.height + 10 + 10 + body.height + 10 + btns.height + 10
    // mainWindow.height / 3 > 240 ? 240 : mainWindow.height / 3
    property var titleText: "Use Google's location services ?"
    property var bodyText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur ipsum in placerat molestie.  Fusce quis mauris a enim sollicitudin"
    property var backgroundColor: "white"
    property var btnAcceptText: "Accept"
    property var btnDiscardText: "Discard"

    Popup {
        id: popup
        x: 25
        y: (mainWindow.height - pHeight) / 2
        width: pWidth
        height: pHeight
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Rectangle {
            anchors.fill: parent
            color: backgroundColor

            Text {
                id: title
                text: titleText
                font.pixelSize: 22
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                font.family: materialStatics.fontFamily
                font.bold: true
                anchors.margins: 10
                wrapMode: Text.WordWrap
            }
            Text {
                id: body
                text: bodyText
                font.pixelSize: 18
                font.family: materialStatics.fontFamily
                anchors.top: title.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: 10
                wrapMode: Text.WordWrap
            }

            Row {
                id: btns
                width: parent.width / 2
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 10
                Button {
                    id: discard
                    text: btnDiscardText
                    highlighted: true
                    flat: true
                    width: parent.width / 2 - 10
                }
                Button {
                    id: accept
                    text: btnAcceptText
                    highlighted: true
                    flat: true
                    width: parent.width / 2 - 10
                }
            }
        }
    }
}
