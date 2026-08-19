#!/bin/sh

pgrep -x pipewire >/dev/null || pipewire >/dev/null 2>&1 &
pgrep -x wireplumber >/dev/null || wireplumber >/dev/null 2>&1 &
pgrep -x pipewire-pulse >/dev/null || pipewire-pulse >/dev/null 2>&1 &
