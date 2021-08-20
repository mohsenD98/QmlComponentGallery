import QtQuick 2.12
import QtQuick.Controls 2.12

import "../../Components/"
import "../"

Item {

    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_5

        Rectangle {
            id: bottomNavigationBasicBox
            height: 70
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            color: "transparent"
            Behavior on height {
                NumberAnimation {
                    duration: 100
                }
            }

            CompBottomNavigation3 {
                anchors.fill: parent
                maxWidth: width
                unFocusedColor: materialStatics.colorPrimary
                focusedColor: materialStatics.colorPrimary
                backgroundColor: "white"
                currIndex: 1
                enableText: true
                model: [{
                        "name": "Map",
                        "icon": "qrc:/Drawables/Ic_NearMe.qml"
                    }, {
                        "name": "Add",
                        "icon": "qrc:/Drawables/Ic_Add.qml"
                    }, {
                        "name": "List",
                        "icon": "qrc:/Drawables/Ic_FormatListBulleted.qml"
                    }]

                onCurrentNavIndexChanged: {
                    console.log(newIndex)
                }
            }
        }
    }
}
