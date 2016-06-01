import QtQuick 2.6
import QtQuick.Layouts 1.3
import Qt.labs.controls 1.0

Popup {
    id: popup
    property alias text: popupLabel.text
    property alias buttonText: okButton.text
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2
    height: 160
    ColumnLayout {
        spacing: 20
        LabelDisplay1 {
            id: popupLabel
            topPadding: 20
            leftPadding: 8
            rightPadding: 8
            text: ""
        }
        ButtonFlat {
            id: okButton
            text: ""
            textColor: accentColor
            onClicked: {
                popupInfo.close()
            }
        }
    }
    onAboutToHide: {
        stopTimer()
    }
    onAboutToShow: {
        closeTimer.start()
    }

    Timer {
        id: closeTimer
        interval: 3000
        repeat: false
        onTriggered: {
            popup.close()
        }
    }
    function stopTimer() {
        closeTimer.stop()
    }
} // popup
