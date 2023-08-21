#!/bin/bash

# Define the name of the script to install
SCRIPT_NAME="auto_betty.sh"
TARGET_DIR="$HOME/bin"
TARGET_SCRIPT="auto_betty"

# Find the location of the auto_betty.sh script in the current directory or subdirectories
SCRIPT_PATH=$(find . -type f -name "$SCRIPT_NAME" | head -n 1)

# Check if the script was found
if [ -z "$SCRIPT_PATH" ]; then
    echo "Error: $SCRIPT_NAME not found in the current directory or subdirectories."
    exit 1
fi

# Copy the found script to the target directory with the desired name
cp "$SCRIPT_PATH" "$TARGET_DIR/$TARGET_SCRIPT"

# Make the script executable
chmod +x "$TARGET_DIR/$TARGET_SCRIPT"

# Display a success message
echo "Auto Betty script has been installed and can be used globally."
