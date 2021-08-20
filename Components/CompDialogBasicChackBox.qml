import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Item {
    property alias popupController: popup
    property var pWidth: mainWindow.width - 50
    property var pHeight: mainWindow.height / 3 > 240 ? 240 : mainWindow.height / 3
    property var titleText: "Use Google's location services ?"
    property var backgroundColor: "white"
    property var radioNames: ""

    Popup {
        id: popup
        x: 25
        y: 50
        width: pWidth
        height: pHeight
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Component.onCompleted: {
            console.log("radioNames : ", radioNames)
            var models = radioNames.split(",")
            for (var i = 0; i < models.length; ++i) {
                console.log("appending :", models[i])
                repeater.model.append({
                                          "le_name": models[i]
                                      })
            }
        }

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

            ColumnLayout {
                id: controls
                anchors.top: title.bottom
                anchors.left: parent.left
                anchors.right: parent.right

                Repeater {
                    id: repeater
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    model: ListModel {}

                    delegate: Rectangle {
                        width: parent.width
                        Layout.fillWidth: true

                        height: 55

                        CheckBox {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                            text: le_name
                        }
                    }
                }
            }
        }
    }
}
