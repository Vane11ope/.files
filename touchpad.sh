#!/bin/bash
if xinput list-props 12 | grep "Device Enabled (142):.*1" >/dev/null
then
  xinput --disable 12
  notify-send -u low -i mouse "Touchpad disabled"
else
  xinput --enable 12
  notify-send -u low -i mouse "Touchpad enabled"
fi
