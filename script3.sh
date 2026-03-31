#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Ayank | Course: Open Source Software
# Purpose: Loops through key directories and reports permissions and size

# --- List of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "       Directory Audit Report"
echo "========================================"
echo ""

# --- For loop to iterate through each directory ---
for DIR in "${DIRS[@]}"; do
    # --- Check if directory exists before inspecting ---
    if [ -d "$DIR" ]; then
        # --- Extract permissions, owner, group using awk ---
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        # --- Get human-readable size, suppress errors ---
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Directory : $DIR"
        echo "  Permissions : $PERMS"
        echo "  Owner       : $OWNER"
        echo "  Group       : $GROUP"
        echo "  Size        : $SIZE"
        echo ""
    else
        echo "✘ $DIR does not exist on this system."
        echo ""
    fi
done

echo "========================================"
echo "   Python Config Directory Check"
echo "========================================"
echo ""

# --- Check if Python's config directory exists ---
PYTHON_CONF="/etc/python3"
if [ -d "$PYTHON_CONF" ]; then
    echo "✔ Python config directory found: $PYTHON_CONF"
    PERMS=$(ls -ld "$PYTHON_CONF" | awk '{print $1}')
    OWNER=$(ls -ld "$PYTHON_CONF" | awk '{print $3}')
    echo "  Permissions : $PERMS"
    echo "  Owner       : $OWNER"
    ls "$PYTHON_CONF"
else
    echo "✘ Python config directory not found at $PYTHON_CONF"
fi
