import Quickshell
import QtQuick
import QtQuick.Layouts

import Quickshell.Services.Mpris

PanelWindow {
    id: bar

    anchors { top: true; left: true; right: true }
    margins { top: 13; left: 10; right: 10 }
    implicitHeight: 33
    color: "transparent"

    Poller {
        id: clock
        command: "date +%H:%M"
        interval: 6000
    }

    Poller {
        id: volume
        command: 'wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk \'{printf "%d", $2*100}\''
        interval: 200
    }

    Poller {
        id: battery
        command: "cat /sys/class/power_supply/BAT1/capacity"
        interval: 3000
    }

    Poller {
        id: bluetooth
        command: "bluetoothctl show | grep -q 'Powered: yes' && echo on || echo off"
        interval: 5000
    }

    Poller {
        id: network
        command: "nmcli -t -f NAME connection show --active | head -n1"
        interval: 5000
    }

    readonly property var player: Mpris.players.values[1] ?? null

    RowLayout {
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        spacing: 8

        Pill {
            icon: "music_note"
            maxLabelWidth: 250
            label: (bar.player && bar.player.trackTitle) ? `${bar.player.trackTitle} — ${bar.player.trackArtist ? bar.player.trackArtist.split(',')[0] : "Unknown"}` : "Nothing playing"
        }
    }

    RowLayout {
        id: centerGroup
        anchors.centerIn: parent
        spacing: 8

        Pill { icon: "nest_clock_farsight_analog"; label: clock.value }
        Workspaces {}
    }

    RowLayout {
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        spacing: 8

        Pill { icon: "volume_up"; label: volume.value + "%"; iconColor: "#3dd1b0" }
        Pill { icon: "battery_android_full"; label: battery.value + "%"; iconColor: "#7ad9a8" }
        Pill { icon: "bluetooth"; label: bluetooth.value; iconColor: "#f5cd5b" }
        Pill { icon: "android_wifi_3_bar"; label: network.value; iconColor: "#ff6048" }
    }
}