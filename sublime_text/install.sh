#!/bin/sh

SUBLIME_SETTING_PATH=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
CONFIG_PATH="$(pwd)/sublime_text/config"

PREFERENCES_FILE_NAME=Preferences.sublime-settings
KEYMAP_FILE_NAME="Default (OSX).sublime-keymap"

PREFERENCES_PATH="${SUBLIME_SETTING_PATH}/$PREFERENCES_FILE_NAME"
KEYMAP_PATH="${SUBLIME_SETTING_PATH}/$KEYMAP_FILE_NAME"

mkdir -p "${SUBLIME_SETTING_PATH}"

if ! [ -f "$PREFERENCES_PATH" -o -d "$PREFERENCES_PATH" -o -L "$PREFERENCES_PATH" ]
then
  echo "  Linking Sublime Text 3 preferences"
  ln -s "$CONFIG_PATH/$PREFERENCES_FILE_NAME" "$PREFERENCES_PATH"
fi

if ! [ -f "$KEYMAP_PATH" -o -d "$KEYMAP_PATH" -o -L "$KEYMAP_PATH" ]
then
  echo "  Linking Sublime Text 3 key maps"
  ln -s "$CONFIG_PATH/$KEYMAP_FILE_NAME" "$KEYMAP_PATH"
fi
