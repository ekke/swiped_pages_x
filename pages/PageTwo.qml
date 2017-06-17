// ekke (Ekkehard Gentz) @ekkescorner
import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtGraphicalEffects 1.0
import "../common"

Flickable {
    id: flickable
    contentHeight: root.implicitHeight
    // StackView manages this, so please no anchors here
    // anchors.fill: parent
    property string name: "PageTwo"
    property string title: qsTr("Wizard: Page 2 of 5")
    Pane {
        id: root
        anchors.fill: parent
        ColumnLayout {
            anchors.right: parent.right
            anchors.left: parent.left
            LabelHeadline {
                leftPadding: 10
                text: qsTr("Hello Two")
            }
            HorizontalDivider {}
            RowLayout {
                LabelSubheading {
                    topPadding: 6
                    bottomPadding: 6
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("This is page 2 of 5\n\nNavigate back to previous page:\n* Swipe from left-to-right\n* Button labeled 'BACK'\n* Back Button placed top-left in Titlebar\n* on Android: System Back Button at bottom left\n\nNavigate forward to the next page 'PageThree' tap on Button 'PAGE 3' or swipe from right-to-left.\n\nButton labeled 'LAST PAGE' jumps forward to Page 5 - but only if Pages 2, 3 and 4 are valid. \n")
                }
            }
            HorizontalDivider {}
            RowLayout {
                // implicite fillWidth = true
                spacing: 10
                ButtonRaised {
                    text: "Back"
                    buttonColor: accentColor
                    onClicked: {
                        navPane.goToPage(0)
                    }
                }
                ButtonRaised {
                    id: button3
                    enabled: navPane.pageValidation[1]
                    text: "Page 3"
                    onClicked: {
                        navPane.goToPage(2)
                    }
                }
                ButtonRaised {
                    id: button5
                    enabled: navPane.pageValidation[2] && navPane.pageValidation[3]
                    text: "Last Page"
                    onClicked: {
                        navPane.goToPage(4)
                    }
                }
            } // button row
        } // col layout
    } // pane root
    ScrollIndicator.vertical: ScrollIndicator { }

    Connections {
        target: navPane
        onValidationChanged:  {
            button3.enabled = navPane.pageValidation[1]
            button5.enabled = navPane.pageValidation[2] && navPane.pageValidation[3]
        }
    }

    // emitting a Signal could be another option
    Component.onDestruction: {
        cleanup()
    }

    function whoAmI() {
        return qsTr("Message from Page Two [1]")
    }
    // called immediately after Loader.loaded
    function init() {
        console.log(qsTr("Init done from Two [1]"))
    }
    // called from Component.destruction
    function cleanup() {
        console.log(qsTr("Cleanup done from Two [1]"))
    }
} // flickable
