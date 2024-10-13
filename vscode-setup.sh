#!/bin/bash

# Check if code command is available
if ! command -v code &> /dev/null
then
    echo "VSCode command line tool is not installed. Please install it first."
    echo "You can do this by opening VSCode, pressing Cmd+Shift+P, and running 'Shell Command: Install 'code' command in PATH'"
    exit 1
fi

# Directory for VSCode settings
VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"

# Backup existing settings
if [ -f "$VSCODE_USER_DIR/settings.json" ]; then
    mv "$VSCODE_USER_DIR/settings.json" "$VSCODE_USER_DIR/settings.json.backup"
fi

# Copy settings
cp vscode/settings.json "$VSCODE_USER_DIR/settings.json"

# Install extensions
while read extension; do
    code --install-extension "$extension"
done < vscode/extensions.txt

echo "VSCode settings and extensions have been updated."
