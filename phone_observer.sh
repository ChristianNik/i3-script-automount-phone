#!/bin/bash

function print_offline {
    echo "%{F#555555}  %{F-}"
}

function print_online {
    echo "%{A1:(scrcpy -S >/dev/null 2>&1 &):} %{F#fff}%{F-} %{A}"
}

function print_connected {
    echo "%{A1:i3-msg '[class="scrcpy"] focus':} %{F#5294E2}%{F-} %{A}"
}
function main() {
    is_running=$(pgrep scrcpy | wc -l)
    if [ $is_running -eq 1 ]; then
        print_connected
    else
        line_count=$(adb devices | awk ' $2 ~ /device/ { print }' | wc -l)
        if [ $line_count -gt 0 ]; then
            print_online
        else
            print_offline
        fi
    fi
}

while true; do
    main
    sleep 1
done
