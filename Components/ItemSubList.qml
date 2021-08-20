import QtQuick 2.12
import QtQuick.Controls 2.12

Rectangle {
    id: base
    height: 40
    radius: 8
    color: materialStatics.grey_100_

    property bool opened: false
    signal layoutSelected(var path)

    Text {
        id: modelName
        text: subModelName
        color: "white"
        anchors.left: parent.left
        anchors.leftMargin: 24
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
    }

    Rectangle {
        id: newComponentNotif
        width: dropDownIcon.width / 2.79
        height: width
        radius: width
        visible: isNewSubModel
        anchors.right: parent.right
        anchors.rightMargin: 15
        anchors.verticalCenter: parent.verticalCenter
        color: materialStatics.colorAccentDark
    }

    MouseArea {
        id: baseModelNameArea
        anchors.fill: parent

        onClicked: {
            layoutSelected(subModelPath)
        }
    }
}
