import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0


import "../Components/"

Item {
    clip: true

    Rectangle {
        anchors.fill: parent
        color: materialStatics.grey_5

        Image {
            anchors.fill: parent
            source: "qrc:/images/image_13.jpg"
            fillMode: Image.PreserveAspectCrop
        }
        Rectangle {
            anchors.fill: parent
            color: materialStatics.overlay_light_80
        }

        SwipeView {
            id: view
            currentIndex: 0
            anchors.fill: parent

            Item {
                id: page1
                CompCardsWizard3 {
                    onNextPageCalled: {
                        view.currentIndex = view.currentIndex + 1
                    }
                    iconPath: "qrc:images/img_wizard_1.png"

                    titleText: "Ready To Travel"
                    subTitleText: "Select the day, pick Your ticket. We give you the best prices. We guarantee!"
                }
            }
            Item {
                id: page2
                CompCardsWizard3 {
                    onNextPageCalled: {
                        view.currentIndex = view.currentIndex + 1
                    }
                    iconPath: "qrc:images/img_wizard_2.png"

                    titleText: "Pick the Ticket"
                    subTitleText: "Choose your destination, plan Your trip. Pick the best place for Your holiday"
                }
            }
            Item {
                id: page3
                CompCardsWizard3 {
                    onNextPageCalled: {
                        view.currentIndex = view.currentIndex + 1
                    }
                    iconPath: "qrc:images/img_wizard_3.png"

                    titleText: "Flight to Destination"
                    subTitleText: "Safe and Comfort flight is our priority. Professional crew and services."
                }
            }
            Item {
                id: page4
                CompCardsWizard3 {
                    onNextPageCalled: {
                        stackview.pop()
                    }
                    iconPath: "qrc:images/img_wizard_4.png"

                    titleText: "Enjoy Holiday"
                    controllerName: "Getting Started!"
                    subTitleText: "Enjoy your holiday, Don't forget to feel the moment and take a photo!"
                }
            }
        }

        PageIndicator {
            id: indicator

            count: view.count
            currentIndex: view.currentIndex

            anchors.bottom: next.top
            anchors.bottomMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter

            delegate: Rectangle {
                implicitWidth: 10
                implicitHeight: 10

                radius: width / 2
                color: index === indicator.currentIndex ? materialStatics.light_green_600 : materialStatics.grey_60

                //                opacity: index === control.currentIndex ? 0.95 : pressed ? 0.7 : 0.45
                Behavior on opacity {
                    OpacityAnimator {
                        duration: 100
                    }
                }
            }
        }

        Rectangle {
            id: next
            height: 55
            width: parent.width - 20
            anchors.horizontalCenter: parent.horizontalCenter
            color: materialStatics.light_green_600
            anchors.bottom: view.bottom
            anchors.bottomMargin: 20
            radius: 4

            MouseArea {
                anchors.fill: parent
                onClicked: if (view.currentIndex <= view.count - 2) {
                               view.currentIndex = view.currentIndex + 1
                               if (view.currentIndex <= view.count - 2) {
                                   btnNext.text = "NEXT"
                               } else {
                                   btnNext.text = "Getting Started!"
                               }
                           } else {
                               stackview.pop()
                           }
            }

            Text {
                id: btnNext
                text: view.currentIndex <= view.count - 1 ? "NEXT" : "Getting Started!"
                font.pixelSize: 18
                color: "white"
                anchors.centerIn: parent
            }
        }
    }
}
