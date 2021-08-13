import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 480
    height: 720
    title: qsTr("Qml Gallery")
    color: materialColors.grey_100_

    Colors{
        id:materialColors
    }

    Rectangle{
        id:toolbar
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        height: 50
        color: materialColors.grey_100_
    }
}
