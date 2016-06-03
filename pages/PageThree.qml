// ekke (Ekkehard Gentz) @ekkescorner
import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtGraphicalEffects 1.0
import "../common"

Flickable {
    id: flickable
    contentHeight: root.implicitHeight
    // StackView manages this, so please no anchors here
    // anchors.fill: parent
    property string name: "PageThree"
    property string title: qsTr("Wizard: Page 3 of 5")
    Pane {
        id: root
        anchors.fill: parent
        ColumnLayout {
            anchors.right: parent.right
            anchors.left: parent.left
            LabelHeadline {
                leftPadding: 10
                text: qsTr("Hello Three")
            }
            HorizontalDivider {}
            RowLayout {
                LabelSubheading {
                    topPadding: 6
                    bottomPadding: 6
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("This is page 3 of 5\n\nHere we're using another kind of Material Buttons: Flat Buttons\n\nNavigate back to previous page:\n* Swipe from left-to-right\n* Button labeled 'BACK'\n* Back Button placed top-left in Titlebar\n* on Android: System Back Button at bottom left\n\nNavigate forward to the next page 'PageFour' using Button 'PAGE 4' or swipe right-to-left\n\n")
                }
            }
            HorizontalDivider {}
            RowLayout {
                // implicite fillWidth = true
                spacing: 10
                ButtonFlat {
                    text: "Back"
                    textColor: accentColor
                    onClicked: {
                        navPane.onePageBack()
                    }
                }
                ButtonFlat {
                    id: button4
                    enabled: navPane.pageValidation[2]
                    text: "Page 4"
                    onClicked: {
                        navPane.goToPage(3)
                    }
                }
                Item {
                    // dummi placeholder for up to 2 more buttons
                    Layout.preferredWidth : 1
                    Layout.fillWidth: true
                }
            } // button row
        } // col layout
    } // pane root
    ScrollIndicator.vertical: ScrollIndicator { }

    Connections {
        target: navPane
        onValidationChanged:  {
            button4.enabled = navPane.pageValidation[2]
        }
    }

    // emitting a Signal could be another option
    Component.onDestruction: {
        cleanup()
    }

    function whoAmI() {
        return qsTr("Message from Page Three")
    }
    // called immediately after Loader.loaded
    function init() {
        console.log(qsTr("Init done from Three"))
    }
    // called from Component.destruction
    function cleanup() {
        console.log(qsTr("Cleanup done from Three"))
    }
} // flickable

