import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0

import "Components/"
import "Layouts/"

Window {
    id: mainWindow
    visible: true
    width: 480
    height: 720
    title: qsTr("Qml Gallery")
    color: materialStatics.grey_100_
    flags: Qt.Window | Qt.WindowTitleHint | Qt.WindowSystemMenuHint
           | (Qt.platform.os === "ios" ? Qt.MaximizeUsingFullscreenGeometryHint : 0)

    Materials {
        id: materialStatics
    }

    StackView {
        id: stackview
        anchors.fill: parent
        initialItem: "qrc:/Layouts/AppMainWindow.qml"
        Keys.onBackPressed: pop()
        focus: true

        pushEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to: 1
                duration: 100
            }
        }
        pushExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to: 0
                duration: 0
            }
        }
        popEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to: 1
                duration: 200
            }
        }
        popExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to: 0
                duration: 0
            }
        }
    }

    function loadLayout(path) {
        var absPath = "qrc:/Layouts/" + path
        var component = Qt.createComponent(absPath)
        stackview.push(component)
    }
}
