#!/bin/bash

# Define the path to the Auto-Betty directory
AUTOBETTY_DIR="$HOME/Auto-Betty/autoBetty"

# Check if the Auto-Betty directory exists
if [ -d "$AUTOBETTY_DIR" ]; then
    # Change to the Auto-Betty directory
    cd "$AUTOBETTY_DIR" || exit

    # Execute the installation script
    ./installAutoBetty.sh

    # Execute the auto_betty script
    ./auto_betty.sh
else
    echo "Error: Auto-Betty directory not found in the expected location."
fi
