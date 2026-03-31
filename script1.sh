#!/bin/bash
# Script 1: System Identity Report
# Author: Ayank  | Course: Open Source Software
# Purpose: Displays system information as a welcome screen

# --- Variables ---
STUDENT_NAME="Ayank"
SOFTWARE_CHOICE="Python"

# --- Gather system info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -d | cut -f2)
DATETIME=$(date '+%d %B %Y, %H:%M:%S')
HOME_DIR=$HOME

# --- Display welcome screen ---
echo "============================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "============================================"
echo ""
echo "  Software Chosen : $SOFTWARE_CHOICE"
echo "  Kernel Version  : $KERNEL"
echo "  Distribution    : $DISTRO"
echo "  Logged in as    : $USER_NAME"
echo "  Home Directory  : $HOME_DIR"
echo "  System Uptime   : $UPTIME"
echo "  Date & Time     : $DATETIME"
echo ""
echo "--------------------------------------------"
echo "  License Note:"
echo "  This system runs on Linux, licensed under"
echo "  the GNU General Public License v2 (GPLv2)."
echo "  Python is licensed under the PSF License."
echo "--------------------------------------------"

