#!/bin/bash
set -e

INSTALL_PATH="/usr/local/bin/mask"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if [[ ! -f "$SCRIPT_DIR/mask" ]]; then
    echo "Error: mask script not found in $SCRIPT_DIR"
    exit 1
fi

if [[ $EUID -ne 0 ]]; then
    echo "This installer needs root privileges."
    echo "Re-run with sudo."
    exit 1
fi

install -m 0755 "$SCRIPT_DIR/mask" "$INSTALL_PATH"

echo "mask installed to $INSTALL_PATH"
