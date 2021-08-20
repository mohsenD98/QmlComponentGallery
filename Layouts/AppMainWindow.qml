import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

import "../Components/"

Item {
    GeneralToolBar {
        id: toolbar
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        backgroundColor: materialStatics.grey_100_
        iconsColor: "white"
        toolBarText: "Qml Gallery"
        leftIcon: "Ic_Menu"
        rightIconLeft: "Ic_Notifications"
        rightIconRight: "Ic_Search"
        clip: true
    }

    Image {
        id: ic_app
        height: 54
        width: 54
        anchors.top: toolbar.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        source: "qrc:/images/ic_logo.png"

        ColorOverlay {
            anchors.fill: ic_app
            source: ic_app
            color: materialStatics.colorPrimary
        }
    }

    Rectangle {
        id: spliter
        height: 1
        anchors.top: ic_app.bottom
        anchors.topMargin: 25
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.margins: 8
        color: materialStatics.colorPrimaryDark
        opacity: .15
    }

    Rectangle {
        anchors.top: spliter.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 8
        color: "transparent"
        clip: true

        ListView {
            anchors.fill: parent
            spacing: 8

            model: ListModelMainPage {}
            delegate: ItemListMenu {}
        }
    }
}
