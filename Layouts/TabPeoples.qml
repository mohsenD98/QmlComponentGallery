import QtQuick 2.12
import QtQuick.Controls 2.12

import "../"
import "../Components/"


Item {
    clip: true
    property var applyTheme: "Light"
    signal draggingDown(var value)
    signal draggingUp(var value)
    signal personClicked(var name)

    Colors {
        id: materialColors
    }

    ListView {
        id: contactList
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        clip: true

        model: ListModelContactPeopel {}
        delegate: ItemListpPeople {
            onItemClicked: {
                personClicked(itemName)
            }
        }
    }
}
