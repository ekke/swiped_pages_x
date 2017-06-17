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
    property string name: "PageFive"
    property string title: qsTr("Wizard: Page 5 of 5")
    Pane {
        id: root
        anchors.fill: parent
        ColumnLayout {
            anchors.right: parent.right
            anchors.left: parent.left
            LabelHeadline {
                leftPadding: 10
                text: qsTr("Hello Five")
            }
            HorizontalDivider {}
            RowLayout {
                LabelSubheading {
                    topPadding: 6
                    bottomPadding: 6
                    leftPadding: 10
                    rightPadding: 10
                    wrapMode: Text.WordWrap
                    text: qsTr("This is page 5 of 5 - the last page of this 5-Pages-Wizard\n\nNavigate back to previous page:\n* Swipe from left-to-right\n* Button labeled 'BACK'\n* Back Button placed top-left in Titlebar\n* on Android: System Back Button at bottom left\n\nNavigate back to the first page using Button 'FIRST PAGE'\n\nJump back to 'PageThree' using Button 'PAGE 3' or swipe left-to-right\n")
                }
            }
            HorizontalDivider{}
            RowLayout {
                // implicite fillWidth = true
                spacing: 10
                ButtonFlat {
                    text: "Back"
                    textColor: accentColor
                    onClicked: {
                        navPane.goToPage(3)
                    }
                }
                ButtonFlat {
                    text: "First Page"
                    onClicked: {
                        navPane.goToPage(0)
                    }
                }
                ButtonFlat {
                    text: "Page 3"
                    onClicked: {
                        navPane.goToPage(2)
                    }
                }
            } // button row
            HorizontalDivider {}
            LabelSubheading {
                id: statusLabel
                visible: text.length
                text: ""
                color: "red"
            }
        } // col layout
    } // pane root
    ScrollIndicator.vertical: ScrollIndicator { }

    // emitting a Signal could be another option
    Component.onDestruction: {
        cleanup()
    }

    function whoAmI() {
        return qsTr("Message from Page Five [4]")
    }
    // called immediately after Loader.loaded
    function init() {
        console.log(qsTr("Init done from Five [4]"))
    }
    // called from Component.destruction
    function cleanup() {
        console.log(qsTr("Cleanup done from Five [4]"))
    }
} // flickable
