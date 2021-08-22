#!/bin/bash

(scrcpy >/dev/null 2>&1 &)

# DEVICE_IP="192.168.178.24"
# DEVICE_PORT=5555
# adb disconnect $DEVICE_IP:$DEVICE_PORT
# adb tcpip $DEVICE_PORT
# adb connect $DEVICE_IP:$DEVICE_PORT
# adb usb
# Error Text
# INFO: scrcpy 1.18 <https://github.com/Genymobile/scrcpy>
# ERROR: "adb push" returned with value 1
# adb: error: failed to get feature set: no devices/emulators found

# Swich to USB connection
# ❯ adb usb

# Switch to TCP/IP connection
# ❯ adb tcpip port
# ❯ adb tcpip 5555

# Can not connect via TCP/IP
# ❯ adb connect 192.168.178.24:5555
# unable to connect to 192.168.178.24:5555: Connection refused
