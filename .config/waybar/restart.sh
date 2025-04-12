#!/bin/sh

ls config.jsonc style.css | entr sh -c "pkill waybar; waybar >/dev/null 2>&1 &"
