#!/usr/bin/env bash

dir="$HOME/.config/rofi/launcher/"
theme='style'

## Run
cliphist list |
  rofi \
    -dmenu \
    -display-columns 2 \
    -p "" \
    -theme ${dir}/${theme}.rasi |
  cliphist decode |
  wl-copy
