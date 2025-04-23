#!/bin/sh

ls config.jsonc style.css | entr sh -c "clear;pkill waybar; waybar &"
