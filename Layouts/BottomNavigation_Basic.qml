import QtQuick 2.12
import QtQuick.Controls 2.12

import "../"
import "../Components/"

Item {

    Colors {
        id: materialColors
    }

    Rectangle {
        anchors.fill: parent
        color: materialColors.grey_5

        CompSearchBar {
            id: searchBar
            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.left: parent.left
            anchors.leftMargin: 12
            anchors.right: parent.right
            anchors.rightMargin: 12
            height: 50
        }

        TabStore1 {
            anchors.top: searchBar.bottom
            anchors.topMargin: 20
            anchors.bottom: bottomNavigationBasicBox.top
            anchors.bottomMargin: 8
            anchors.left: parent.left
            anchors.leftMargin: 12
            anchors.right: parent.right
            anchors.rightMargin: 12
        }

        Rectangle {
            id: bottomNavigationBasicBox
            height: 50
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 12
            anchors.right: parent.right
            anchors.rightMargin: 12
            color: materialColors.grey_10
        }
    }
}
