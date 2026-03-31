#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Ayank | Course: Open Source Software
# Purpose: Generates a personalized open source philosophy statement

# --- Alias concept demonstrated (aliases are normally set in .bashrc) ---
# alias today='date +%d-%B-%Y'  # Example alias — not active in scripts

echo "============================================"
echo "   Open Source Manifesto Generator"
echo "============================================"
echo ""
echo "Answer three questions to generate your personal manifesto."
echo ""

# --- Read user input interactively ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date and logged-in username ---
DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)

# --- Define output filename using string concatenation ---
OUTPUT="manifesto_${AUTHOR}.txt"

echo ""
echo "Generating your manifesto..."
echo ""

# --- Write manifesto to file using redirection (>) for first line ---
echo "=== My Open Source Manifesto ===" > "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "Author: $AUTHOR" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# --- Compose paragraph using variables and string concatenation ---
echo "Every day, I rely on $TOOL — a tool built not for profit, but for people." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM, and open source is the closest thing" >> "$OUTPUT"
echo "the software world has to that ideal." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "One day, I intend to build $BUILD and share it freely with the world," >> "$OUTPUT"
echo "because I believe that knowledge locked away helps no one." >> "$OUTPUT"
echo "Every line of open-source code is a small act of trust in humanity —" >> "$OUTPUT"
echo "a belief that others will use it well, improve it, and pass it on." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I stand on the shoulders of giants. The least I can do is reach down" >> "$OUTPUT"
echo "and help the next person climb." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "— $AUTHOR, $DATE" >> "$OUTPUT"

# --- Confirm save and display the manifesto ---
echo "✔ Manifesto saved to $OUTPUT"
echo ""
echo "--- Your Manifesto ---"
echo ""

# --- Display file contents ---
cat "$OUTPUT"
