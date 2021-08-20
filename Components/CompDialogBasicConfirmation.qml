import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Item {
    property alias popupController: popup

    property var pWidth: mainWindow.width - 50
    property var pHeight: mainWindow.height / 3 > 240 ? 240 : mainWindow.height / 3
    Popup {
        id: popup
        x: 25
        y: (mainWindow.height - pHeight) / 2
        width: pWidth
        height: pHeight
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
    }
}
