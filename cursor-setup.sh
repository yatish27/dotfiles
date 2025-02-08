#!/bin/bash

# Check if code command is available
if ! command -v cursor &> /dev/null
then
    echo "Cursor command line tool is not installed. Please install it first."
    echo "You can do this by opening VSCode, pressing Cmd+Shift+P, and running 'Shell Command: Install 'code' command in PATH'"
    exit 1
fi

# Directory for VSCode settings
VSCODE_USER_DIR="$HOME/Library/Application Support/Cursor/User"

# Backup existing settings
if [ -f "$VSCODE_USER_DIR/settings.json" ]; then
    mv "$VSCODE_USER_DIR/settings.json" "$VSCODE_USER_DIR/settings.json.backup"
fi

# Copy settings
cp cursor/settings.json "$VSCODE_USER_DIR/settings.json"

# Install extensions
while read extension; do
    cursor --install-extension "$extension"
done < cursor/extensions.txt

echo "Cursor settings and extensions have been updated."
