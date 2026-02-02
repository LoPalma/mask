#!/bin/bash
set -e

INSTALL_PATH="/usr/local/bin/mask"

if [[ $EUID -ne 0 ]]; then
    echo "This uninstaller needs root privileges."
    echo "Re-run with sudo."
    exit 1
fi

if [[ ! -f "$INSTALL_PATH" ]]; then
    echo "mask is not installed at $INSTALL_PATH"
    exit 0
fi

rm "$INSTALL_PATH"

echo "mask removed from $INSTALL_PATH"
