#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Ayank | Course: Open Source Software
# Purpose: Checks if Python is installed and prints its details

# --- Define the package to inspect ---
PACKAGE="python3"

# --- Check if package is installed using if-then-else ---
if dpkg -l $PACKAGE &>/dev/null; then
    echo "✔ $PACKAGE is installed on this system."
    echo ""
    # --- Display key package details using grep to filter output ---
    echo "--- Package Details ---"
    dpkg -l $PACKAGE | grep -E "^ii" | awk '{print "Version      : "$3"\nArchitecture : "$4"\nDescription  : "$5" "$6" "$7" "$8}'
    echo ""
    # --- Show exact binary location ---
    echo "Binary Location : $(which python3)"
    echo "Symlink Target  : $(readlink -f $(which python3))"
else
    echo "✘ $PACKAGE is NOT installed on this system."
    echo "  Install it with: sudo apt install python3"
fi

echo ""
echo "--- OSS Philosophy Notes ---"

# --- Case statement to print philosophy note per package ---
case $PACKAGE in
    python3)
        echo "Python: a community-built language where readability and openness are core values." ;;
    httpd|apache2)
        echo "Apache: the web server that built the open internet." ;;
    mysql-server)
        echo "MySQL: open source at the heart of millions of applications." ;;
    firefox)
        echo "Firefox: a nonprofit's fight to keep the web open and free." ;;
    *)
        echo "$PACKAGE: an open-source tool built on the philosophy of sharing." ;;
esac
