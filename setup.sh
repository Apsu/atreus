#!/usr/bin/env bash

set -euo pipefail

qmk json2c layout.json -o keymap.c
mkdir -p ~/qmk_firmware/keyboards/keyboardio/atreus/keymaps/apsu/
cp rules.mk config.h keymap.c ~/qmk_firmware/keyboards/keyboardio/atreus/keymaps/apsu/
qmk flash -j 4 -kb keyboardio/atreus -km apsu
