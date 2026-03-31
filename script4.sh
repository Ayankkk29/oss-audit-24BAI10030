#!/bin/bash
# Script 4: Log File Analyzer
# Author: Ayank | Course: Open Source Software
# Purpose: Reads a log file and counts occurrences of a keyword

# --- Accept log file and keyword as command-line arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}  # Default keyword is 'error' if none provided

# --- Counter variable initialized to zero ---
COUNT=0

# --- Validate that a log file argument was provided ---
if [ -z "$LOGFILE" ]; then
    echo "Usage: ./script4.sh <logfile> [keyword]"
    echo "Example: ./script4.sh /var/log/dpkg.log error"
    exit 1
fi

# --- Check if the file actually exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "✘ Error: File '$LOGFILE' not found."
    exit 1
fi

# --- Check if file is empty and retry with default log ---
if [ ! -s "$LOGFILE" ]; then
    echo "⚠ Warning: '$LOGFILE' is empty. Switching to /var/log/dpkg.log"
    LOGFILE="/var/log/dpkg.log"
fi

echo "Scanning: $LOGFILE"
echo "Keyword : $KEYWORD"
echo "-----------------------------"

# --- While read loop to go through file line by line ---
while IFS= read -r LINE; do
    # --- If the line contains the keyword (case-insensitive), count it ---
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print summary ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""

# --- Print last 5 matching lines for context ---
echo "--- Last 5 matching lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
