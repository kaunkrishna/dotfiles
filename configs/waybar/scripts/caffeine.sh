#!/usr/bin/env bash

if pgrep -x hypridle >/dev/null; then
    pkill -x hypridle
else
    hypridle >/dev/null 2>&1 &
fi