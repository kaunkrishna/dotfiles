#!/usr/bin/env bash

if pgrep -x hypridle >/dev/null; then
    echo '{"text":"󰾪","tooltip":"Caffeine: Off (Click to disable idle)"}'
else
    echo '{"text":"","tooltip":"Caffeine: On (Idle disabled)"}'
fi