#!/bin/bash

# Define the name of the script to install
SCRIPT_NAME="auto_betty.sh"
TARGET_USER_DIR="$HOME/bin"
TARGET_SYSTEM_DIR="/usr/local/bin"
TARGET_SCRIPT="auto_betty"

# Create the target user directory if it doesn't exist
mkdir -p "$TARGET_USER_DIR"

# Find the location of the auto_betty.sh script in the current directory or subdirectories
SCRIPT_PATH=$(find . -type f -name "$SCRIPT_NAME" | head -n 1)

# Check if the script was found
if [ -z "$SCRIPT_PATH" ]; then
    echo "Error: $SCRIPT_NAME not found in the current directory or subdirectories."
    exit 1
fi

# Copy the found script to the user's directory with the desired name
cp "$SCRIPT_PATH" "$TARGET_USER_DIR/$TARGET_SCRIPT"

# Check if the copy was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to copy $SCRIPT_NAME to $TARGET_USER_DIR."
    exit 1
fi

# Make the script executable in the user's directory
chmod +x "$TARGET_USER_DIR/$TARGET_SCRIPT"

# Check if the permission change was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to make $TARGET_SCRIPT executable in $TARGET_USER_DIR."
    exit 1
fi

# Copy the script to the system-wide directory with the desired name
sudo cp "$SCRIPT_PATH" "$TARGET_SYSTEM_DIR/$TARGET_SCRIPT"

# Check if the system-wide copy was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to copy $SCRIPT_NAME to $TARGET_SYSTEM_DIR. Try running with sudo."
    exit 1
fi

# Make the script executable in the system-wide directory
sudo chmod +x "$TARGET_SYSTEM_DIR/$TARGET_SCRIPT"

# Check if the permission change was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to make $TARGET_SCRIPT executable in $TARGET_SYSTEM_DIR. Try running with sudo."
    exit 1
fi

# Display a success message
echo "Auto Betty script has been installed and can be used both locally and globally."
