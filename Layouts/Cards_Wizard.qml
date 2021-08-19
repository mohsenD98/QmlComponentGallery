import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0

import "../"
import "../Components/"

Item {
    clip: true

    Colors {
        id: materialColors
    }

    Rectangle {
        anchors.fill: parent
        color: materialColors.grey_5
        SwipeView {
            id: view
            currentIndex: 0
            anchors.fill: parent

            Item {
                id: page1
                Rectangle {
                    anchors.centerIn: parent
                    width: 4 * parent.width / 6
                    height: 6 * parent.height / 10
                    color: "transparent"
                    Pane {
                        width: parent.width
                        height: parent.height
                        padding: 0
                        Material.elevation: 6
                        Rectangle {
                            id: root
                            anchors.fill: parent
                            radius: 4
                            color: materialColors.light_green_600

                            Image {
                                anchors.top: parent.top
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.bottom: next.top
                                source: "qrc:/images/image_15.jpg"
                                fillMode: Image.PreserveAspectCrop

                                Rectangle {
                                    anchors.fill: parent
                                    color: "#B38BC34A"
                                }

                                Text {
                                    id: title1
                                    anchors.top: parent.top
                                    anchors.topMargin: 24
                                    anchors.horizontalCenter: imgLogo.horizontalCenter
                                    text: qsTr("Ready To Travel")
                                    font.pixelSize: 23
                                    horizontalAlignment: Text.AlignHCenter
                                    color: "white"
                                    font.weight: Font.DemiBold
                                }

                                Text {
                                    id: desc
                                    anchors.top: title1.bottom
                                    anchors.horizontalCenter: title1.horizontalCenter
                                    anchors.topMargin: 42
                                    text: "Find Featured and Premium \nItem From Our Store"
                                    font.pixelSize: 18
                                    color: "white"
                                    horizontalAlignment: Text.AlignHCenter
                                }

                                Image {
                                    id: imgLogo
                                    width: 120
                                    height: 120
                                    source: "qrc:images/img_wizard_1.png"
                                    fillMode: Image.PreserveAspectCrop
                                    clip: true
                                    anchors.top: desc.bottom
                                    anchors.topMargin: 8
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }

                                ColorOverlay {
                                    anchors.fill: imgLogo
                                    source: imgLogo
                                    color: "white"
                                }
                            }

                            Rectangle {
                                id: next
                                height: 45
                                width: parent.width
                                color: "transparent"
                                anchors.bottom: parent.bottom

                                Text {
                                    text: "NEXT"
                                    font.pixelSize: 18
                                    color: "white"
                                    anchors.centerIn: parent
                                }
                            }
                        }
                    }
                }
            }
            Item {
                id: page2
            }
            Item {
                id: page3
            }
            Item {
                id: page4
            }
        }

        PageIndicator {
            id: indicator

            count: view.count
            currentIndex: view.currentIndex

            anchors.bottom: view.bottom
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter

            delegate: Rectangle {
                implicitWidth: 10
                implicitHeight: 10

                radius: width / 2
                color: index === indicator.currentIndex ? materialColors.light_green_600 : materialColors.grey_20

                //                opacity: index === control.currentIndex ? 0.95 : pressed ? 0.7 : 0.45
                Behavior on opacity {
                    OpacityAnimator {
                        duration: 100
                    }
                }
            }
        }
    }
}
