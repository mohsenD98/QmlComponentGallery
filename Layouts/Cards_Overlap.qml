import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0

import "../"
import "../Components/"
import "../Drawables/"

Item {
    clip: true
    property var applyTheme: "Light"
    signal draggingDown(var value)
    signal draggingUp(var value)
    Colors {
        id: materialStatics
    }

    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_10

        Flickable {
            width: parent.width
            height: parent.height
            contentHeight: 1.5 * parent.height + descriptions.height
            contentWidth: parent.width

            Image {
                id: imgBackground
                source: "qrc:images/image_8.jpg"
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top
                height: 2 / 5 * parent.height > 288 ? 288 : 2 / 5 * parent.height

                Rectangle {
                    anchors.fill: imgBackground
                    color: materialStatics.overlay_dark_40
                }

                Toolbar5 {
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: 50
                    toolbarHeight: 50
                    backgroundColor: "transparent"
                }

                Image {
                    id: imgLogo
                    source: "qrc:images/img_wizard_1.png"
                    fillMode: Image.PreserveAspectCrop
                    clip: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 1 / 2 * height
                    width: 99
                    height: 99
                }

                ColorOverlay {
                    anchors.fill: imgLogo
                    source: imgLogo
                    color: "white"
                }

                Text {
                    anchors.top: imgLogo.bottom
                    anchors.horizontalCenter: imgLogo.horizontalCenter
                    anchors.topMargin: 8
                    text: qsTr("Nature Park")
                    font.pixelSize: 26
                    color: "white"
                    font.weight: Font.DemiBold
                }
            }

            Pane {
                id: facilitiesCard
                padding: 0
                Material.elevation: 6

                width: parent.width - 36
                anchors.top: imgBackground.bottom
                anchors.topMargin: -45
                anchors.horizontalCenter: parent.horizontalCenter
                height: facilitiesCol.height + facilities.height + 50
                Rectangle {
                    anchors.fill: parent
                    radius: 4
                    color: "white"

                    Text {
                        id: facilities
                        text: qsTr("Facilities")
                        font.pixelSize: 22
                        font.bold: true
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.margins: 20
                        color: materialStatics.grey_80
                    }
                    Column {
                        id: facilitiesCol
                        anchors.top: facilities.bottom
                        anchors.topMargin: 20
                        anchors.left: parent.left
                        anchors.right: parent.right

                        Row {
                            width: parent.width
                            height: 45
                            Rectangle {
                                width: parent.width
                                height: 45
                                Ic_LocalCafe {
                                    id: icon
                                    anchors.left: parent.left
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.leftMargin: 20
                                    controller.fillColor: materialStatics.grey_40
                                }
                                Text {
                                    anchors.left: icon.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: parent.verticalCenter
                                    color: materialStatics.grey_40
                                    font.pixelSize: 18
                                    text: "Food & Cafe"
                                }
                            }
                        }
                        Row {
                            width: parent.width
                            height: 45
                            Rectangle {
                                width: parent.width
                                height: 45
                                Ic_LocalFlorist {
                                    id: icon2
                                    anchors.left: parent.left
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.leftMargin: 20
                                    controller.fillColor: materialStatics.grey_40
                                }
                                Text {
                                    anchors.left: icon2.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: parent.verticalCenter
                                    color: materialStatics.grey_40
                                    font.pixelSize: 18
                                    text: "Fresh Air"
                                }
                            }
                        }
                        Row {
                            width: parent.width
                            height: 45
                            Rectangle {
                                width: parent.width
                                height: 45
                                Ic_AirportShuttle {
                                    id: icon3
                                    anchors.left: parent.left
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.leftMargin: 20
                                    controller.fillColor: materialStatics.grey_40
                                }
                                Text {
                                    anchors.left: icon3.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: parent.verticalCenter
                                    color: materialStatics.grey_40
                                    font.pixelSize: 18
                                    text: "Parking Area"
                                }
                            }
                        }
                        Row {
                            width: parent.width
                            height: 45
                            Rectangle {
                                width: parent.width
                                height: 45
                                Ic_BeachAccess {
                                    id: icon4
                                    anchors.left: parent.left
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.leftMargin: 20
                                    controller.fillColor: materialStatics.grey_40
                                }
                                Text {
                                    anchors.left: icon4.right
                                    anchors.leftMargin: 20
                                    anchors.verticalCenter: parent.verticalCenter
                                    color: materialStatics.grey_40
                                    font.pixelSize: 18
                                    text: "Cozy Canopy"
                                }
                            }
                        }
                    }
                }
            }

            Pane {
                id: addressCard
                padding: 0
                Material.elevation: 6

                width: parent.width - 36
                anchors.top: facilitiesCard.bottom
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
                height: addressDetails.height + address.height + 70

                Rectangle {
                    anchors.fill: parent
                    radius: 4
                    color: "white"

                    Text {
                        id: address
                        text: qsTr("Address")
                        font.pixelSize: 22
                        font.bold: true
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.margins: 20
                        color: materialStatics.grey_80
                    }
                    Text {
                        id: addressDetails
                        text: "14321 Saddle Wood Dr, North Little Rock \nAR, 72117"
                        font.pixelSize: 18
                        anchors.top: address.bottom
                        anchors.topMargin: 20
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.margins: 20
                        color: materialStatics.grey_40
                    }
                }
            }

            Pane {
                id: descriptions
                padding: 0
                Material.elevation: 6
                width: parent.width - 36
                anchors.top: addressCard.bottom
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
                height: descText.height + desc.height + 50

                Rectangle {
                    anchors.fill: parent
                    radius: 4
                    color: "white"

                    Text {
                        id: desc
                        text: qsTr("Description")
                        font.pixelSize: 22
                        font.bold: true
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.margins: 20
                        color: materialStatics.grey_80
                    }
                    Text {
                        id: descText
                        text: "Duis tellus metus, elementum a lectus id, aliquet interdum mauris. Nam bibendum efficitur sollicitudin. Proin eleifend libero velit, nec fringilla dolor finibus quis. nMorbi eu libero pellentesque, rutrum metus quis, blandit est. Fusce bibendum accumsan nisi vulputate feugiat. In fermentum laoreet euismod. Praesent sem nisl, facilisis eget odio at, rhoncus scelerisque ipsum. Nulla orci dui, dignissim a risus ut, lobortis porttitor velit.
\n\nNulla id lectus metus. Maecenas a lorem in odio auctor facilisis non vitae nunc. Sed malesuada volutpat massa. Praesent sit amet lacinia augue, mollis tempor dolor."
                        font.pixelSize: 18
                        anchors.top: desc.bottom
                        anchors.topMargin: 20
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.margins: 20
                        wrapMode: Text.WordWrap
                        color: materialStatics.grey_40
                    }
                }
            }
        }
    }
}
