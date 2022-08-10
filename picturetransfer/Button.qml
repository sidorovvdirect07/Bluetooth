

import QtQuick 2.1

Rectangle {
    property alias text: label.text
    signal clicked();
    opacity: 0.7
    height: label.height + 30
    width: label.width + 120
    border.color: Qt.lighter("white")
    border.width: 5
    color: mArea.pressed ? "cyan" : "blue"
    Text {
        id: label
        anchors.right: parent.right
         anchors.left: parent.left
         anchors.bottom: parent.bottom
         anchors.top: parent.top
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 10
        color: "black"
    }
    MouseArea {
        id: mArea
        anchors.fill: parent
        onClicked: parent.clicked()
    }
}
