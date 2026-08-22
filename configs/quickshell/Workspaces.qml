import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Rectangle {
    implicitWidth: row.implicitWidth + 22
    implicitHeight: 33
    radius: height / 2
    color: "#040d0d"

    RowLayout {
        id: row
        anchors.centerIn: parent
        spacing: 8

        Repeater {
            model: Hyprland.workspaces

            Rectangle {
                implicitWidth: modelData.active ? 11 : 6
                implicitHeight: implicitWidth
                radius: width / 2
                color: modelData.active ? "transparent" : "#1d3631"
                border.width: modelData.active ? 2 : 0
                border.color: "#3dd1b0"

                Behavior on implicitWidth {
                    NumberAnimation { duration: 150; easing.type: Easing.OutCubic }
                }
            }
        }
    }
}