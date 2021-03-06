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
            height: imageBox.height + categoriesList.height + 200 //150 for margins
            width: parent.width

            Rectangle {
                id: imageBox
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.left: parent.left
                height: .5 * width > 240 ? 240 : .5 * width
                color: materialStatics.colorPrimary
                radius: 20
                clip: true
                Image {
                    id: image
                    source: "qrc:/images/image_18"
                    anchors.fill: parent
                    //                    fillMode: Image.PreserveAspectFit
                }

                Rectangle {
                    anchors.fill: parent
                    color: materialStatics.overlay_dark_40
                }
                Text {
                    text: "Browse Through Million of Products\nin Many Category"
                    font.bold: true
                    font.pixelSize: 18
                    anchors.centerIn: parent
                    horizontalAlignment: Text.AlignHCenter
                    color: "white"
                }
            }

            Flow {
                id: categoriesList
                anchors.top: imageBox.bottom
                anchors.topMargin: -20
                anchors.left: parent.left
                anchors.leftMargin: 12
                anchors.right: parent.right
                anchors.rightMargin: 12
                spacing: 8
                clip: true

                Repeater {
                    id: flowRepeater
                    model: ListModel {
                        ListElement {
                            le_desc: "Gadgets & Computers"
                            le_ic_name: "Ic_Devices"
                            le_color: "#EF5350"
                            le_ic_color: "#78909C"
                            le_text_color: "#78909C"
                            le_back_color: "white"
                        }
                        ListElement {
                            le_desc: "Fashion"
                            le_ic_name: "Ic_Accessibility"
                            le_color: "#EF5350"
                            le_ic_color: "#78909C"
                            le_text_color: "#78909C"
                            le_back_color: "white"
                        }
                        ListElement {
                            le_desc: "Beauti & Health"
                            le_ic_name: "Ic_Face"
                            le_color: "#EF5350"
                            le_ic_color: "#78909C"
                            le_text_color: "#78909C"
                            le_back_color: "white"
                        }
                        ListElement {
                            le_desc: "Babies & Kids"
                            le_ic_name: "Ic_ChildFriendly"
                            le_color: "#EF5350"
                            le_ic_color: "#78909C"
                            le_text_color: "#78909C"
                            le_back_color: "white"
                        }
                        ListElement {
                            le_desc: "Home & Garden"
                            le_ic_name: "Ic_Weekend"
                            le_color: "#EF5350"
                            le_ic_color: "#78909C"
                            le_text_color: "#78909C"
                            le_back_color: "white"
                        }
                        ListElement {
                            le_desc: "Sport & Hobby"
                            le_ic_name: "Ic_Pool"
                            le_color: "#EF5350"
                            le_ic_color: "#78909C"
                            le_text_color: "#78909C"
                            le_back_color: "white"
                        }
                        ListElement {
                            le_desc: "Ticket & Voucher"
                            le_ic_name: "Ic_ConfirmationNumber"
                            le_color: "#EF5350"
                            le_ic_color: "#78909C"
                            le_text_color: "#78909C"
                            le_back_color: "white"
                        }
                        ListElement {
                            le_desc: "Service & Food"
                            le_ic_name: "Ic_Restaurant"
                            le_color: "#EF5350"
                            le_ic_color: "#78909C"
                            le_text_color: "#78909C"
                            le_back_color: "white"
                        }
                    }
                    delegate: ItemCategories2 {}
                }
            }
        }
    }
}
