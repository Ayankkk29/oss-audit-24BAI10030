# oss-audit-24BAI10030
OSS Audit — 24BAI10030
Student Name: Ayank Kumar Giri
Registration Number: 24BAI10030
Course: Open Source Software (OSS NGMC)
Chosen Software: Python
Submission Date: March 31, 2026

About This Project
This repository contains the shell scripts submitted as part of The Open Source Audit capstone project. The project audits the Python programming language across its origin, license, Linux footprint, ecosystem, and comparison with proprietary alternatives.

Repository Structure
oss-audit-24BCE10270/
├── README.md
├── script1.sh       # System Identity Report
├── script2.sh       # FOSS Package Inspector
├── script3.sh       # Disk and Permission Auditor
├── script4.sh       # Log File Analyzer
└── script5.sh       # Open Source Manifesto Generator

Dependencies
All scripts require a Linux environment with the following tools installed:

bash (v4.0+)
python3 (v3.x)
dpkg (standard on Ubuntu/Debian)
lsb_release (install with: sudo apt install lsb-release)
uname, whoami, uptime, date (standard Linux utilities)

To install any missing dependencies on Ubuntu:
bashsudo apt update
sudo apt install lsb-release python3 -y

Scripts
Script 1 — System Identity Report
File: script1.sh
Description: Displays a formatted welcome screen showing the Linux distribution, kernel version, logged-in user, home directory, system uptime, current date/time, and a license note about both Linux (GPLv2) and Python (PSF License).
Concepts used: Variables, command substitution ($()), echo formatting.
How to run:
bashchmod +x script1.sh
./script1.sh

Script 2 — FOSS Package Inspector
File: script2.sh
Description: Checks whether Python (python3) is installed on the system using dpkg, displays version, architecture, and binary location if found, and prints a philosophy note using a case statement.
Concepts used: if-then-else, case statement, dpkg, grep, awk, pipes.
How to run:
bashchmod +x script2.sh
./script2.sh

Script 3 — Disk and Permission Auditor
File: script3.sh
Description: Loops through a predefined list of critical system directories (/etc, /var/log, /home, /usr/bin, /tmp) and reports permissions, owner, group, and size for each. Also checks for Python's config directory at /etc/python3.
Concepts used: for loop, arrays, if-then, ls -ld, awk, du.
How to run:
bashchmod +x script3.sh
./script3.sh

Script 4 — Log File Analyzer
File: script4.sh
Description: Accepts a log file path and optional keyword as command-line arguments, scans the file line by line counting keyword matches, and prints the total count plus the last 5 matching lines.
Concepts used: Command-line arguments ($1, $2), while read loop, if-then, counter variables, grep, tail.
How to run:
bashchmod +x script4.sh
./script4.sh /var/log/dpkg.log install

Replace /var/log/dpkg.log with any log file path and install with any keyword.


Script 5 — Open Source Manifesto Generator
File: script5.sh
Description: Interactively prompts the user for three personal inputs, then generates a personalized open-source philosophy statement and saves it to a .txt file named after the current user.
Concepts used: read for user input, string concatenation, file redirection (> and >>), date, whoami, cat, alias concept (demonstrated via comment).
How to run:
bashchmod +x script5.sh
./script5.sh

Follow the three prompts. Your manifesto will be saved as manifesto_<username>.txt in the current directory.


Running All Scripts at Once
bashchmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/dpkg.log install
./script5.sh

Notes

All scripts have been tested on Ubuntu 24.04 (WSL2) with Python 3.12.3
Scripts must be run on a Linux system — they will not work on Windows CMD or PowerShell directly
Script 4 defaults to searching for the keyword error if no second argument is provided
Script 5 generates a .txt file in the directory from which it is run
