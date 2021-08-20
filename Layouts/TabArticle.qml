import QtQuick 2.12
import QtQuick.Controls 2.12


import "../Components/"

Item {
    clip: true
    property var applyTheme: "Light"
    signal draggingDown(var value)
    signal draggingUp(var value)


    Flickable {
        anchors.fill: parent
        contentHeight: storeBox.height + 50
        contentWidth: parent.width
        clip: true

        onVerticalVelocityChanged: {
            // if user is dragging more than content height dont effect
            // searchbar and bottomNavigationBasicBox
            if (contentY < 0)
                return
            if (contentY > contentHeight)
                return

            if (verticalVelocity > 157) {
                //dragging up  :
                draggingUp(verticalVelocity)
            } else if (verticalVelocity < -157) {
                //dragging down  :
                draggingDown(verticalVelocity)
            }
        }

        Rectangle {
            id: storeBox
            clip: true
            color: "transparent"
            height: lblTitle.height + lblTitle2.height + lblSubTitle.height + text1.height
                    + text2.height + text3.height + imageBox.height + 60 + 200 //150 for margins
            width: parent.width

            Text {
                id: lblTitle
                text: "Fusce Aliquam Blandit? Urna Quis Pulvinar. Donec Luctus Tincidunt eu Condimentum"
                font.pixelSize: 30
                font.bold: true
                lineHeight: .9
                anchors.left: parent.left
                anchors.right: parent.right
                wrapMode: Text.WordWrap
                color: applyTheme === "Dark" ? "white" : materialStatics.grey_90
            }

            Text {
                id: lblSubTitle
                text: "Quisque sapien lorem, vestibulum vitae justo eget, fringilla eleifend nisi. Nam fermentum ipsum vitae ligula"
                font.pixelSize: 22
                font.bold: true
                lineHeight: .9
                anchors.top: lblTitle.bottom
                anchors.topMargin: 30
                anchors.left: parent.left
                anchors.right: parent.right
                wrapMode: Text.WordWrap
                color: applyTheme === "Dark" ? "white" : materialStatics.grey_90
            }
            Rectangle {
                id: splitter
                anchors.top: lblSubTitle.bottom
                anchors.topMargin: 30
                anchors.left: parent.left
                anchors.right: parent.right
                height: 1
                color: materialStatics.grey_20
            }
            Text {
                id: text1
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur ipsum in placerat molestie.  Fusce quis mauris a enim sollicitudin\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur ipsum in placerat molestie.  Fusce quis mauris a enim sollicitudin"
                font.pixelSize: 18
                lineHeight: .9
                anchors.top: splitter.bottom
                anchors.topMargin: 30
                anchors.left: parent.left
                anchors.right: parent.right
                wrapMode: Text.WordWrap
                color: applyTheme === "Dark" ? "white" : materialStatics.grey_80
            }
            Rectangle {
                id: imageBox
                anchors.top: text1.bottom
                anchors.topMargin: 20
                anchors.right: parent.right
                anchors.left: parent.left
                height: width / 1.8 > 266.66 ? 266.66 : width / 1.8
                color: materialStatics.colorPrimary
                radius: 20
                clip: true
                Image {
                    id: image
                    source: "qrc:/images/image_20"
                    anchors.fill: parent
                    //                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: indicator
                height: 4
                width: parent.width
                anchors.top: imageBox.bottom
                anchors.topMargin: 8
                color: "transparent"

                Text {
                    anchors.centerIn: parent
                    text: "Image source : pexels.com"
                    color: materialStatics.grey_40
                }
            }

            Text {
                id: text2
                text: "Duis tellus metus, elementum a lectus id, aliquet interdum mauris. Nam bibendum efficitur sollicitudin. Proin eleifend libero velit, nec fringilla dolor finibus quis. nMorbi eu libero pellentesque, rutrum metus quis, blandit est. Fusce bibendum accumsan nisi vulputate feugiat. In fermentum laoreet euismod. Praesent sem nisl, facilisis eget odio at, rhoncus scelerisque ipsum. Nulla orci dui, dignissim a risus ut, lobortis porttitor velit.\n\nNulla id lectus metus. Maecenas a lorem in odio auctor facilisis non vitae nunc. Sed malesuada volutpat massa. Praesent sit amet lacinia augue, mollis tempor dolor."
                font.pixelSize: 18
                lineHeight: .9
                anchors.top: indicator.bottom
                anchors.topMargin: 30
                anchors.left: parent.left
                anchors.right: parent.right
                wrapMode: Text.WordWrap
                color: applyTheme === "Dark" ? "white" : materialStatics.grey_80
            }

            Text {
                id: lblTitle2
                text: "Quisque imperdiet nunc at massa dictum volutpat. Etiam id orci ipsum. Integer id ex dignissim"
                font.pixelSize: 18
                lineHeight: .9
                font.bold: true
                anchors.top: text2.bottom
                anchors.topMargin: 30
                anchors.left: parent.left
                anchors.right: parent.right
                wrapMode: Text.WordWrap
                color: applyTheme === "Dark" ? "white" : materialStatics.grey_90
            }

            Text {
                id: text3
                text: "Duis tellus metus, elementum a lectus id, aliquet interdum mauris. Nam bibendum efficitur sollicitudin. Proin eleifend libero velit, nec fringilla dolor finibus quis. nMorbi eu libero pellentesque, rutrum metus quis, blandit est. Fusce bibendum accumsan nisi vulputate feugiat. In fermentum laoreet euismod. Praesent sem nisl, facilisis eget odio at, rhoncus scelerisque ipsum. Nulla orci dui, dignissim a risus ut, lobortis porttitor velit.\n\nNulla id lectus metus. Maecenas a lorem in odio auctor facilisis non vitae nunc. Sed malesuada volutpat massa. Praesent sit amet lacinia augue, mollis tempor dolor."
                font.pixelSize: 18
                lineHeight: .9
                anchors.top: lblTitle2.bottom
                anchors.topMargin: 30
                anchors.left: parent.left
                anchors.right: parent.right
                wrapMode: Text.WordWrap
                color: applyTheme === "Dark" ? "white" : materialStatics.grey_90
            }
        }
    }
}
