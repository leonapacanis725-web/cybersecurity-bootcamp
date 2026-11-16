# Python Failed Login Analyzer

## Objective
Build a Python script that analyzes authentication log entries and counts failed login attempts by IP address.

## Tools Used
- Python 3
- Linux Terminal
- Nano text editor

## Files
- `auth.log` — Contains synthetic authentication log entries for testing.
- `analyzer.py` — Python script that analyzes failed login attempts.
- `README.md` — Project documentation.

## Skills Practiced
- Reading files with Python.
- Using loops and conditional statements.
- Splitting text into individual fields.
- Extracting IP addresses from log entries.
- Using dictionaries to count repeated events.

## Investigation Results
The analyzer identified:

- `192.0.2.10` — 3 failed login attempts.
- `192.0.2.15` — 1 failed login attempt.

## Security Relevance
Security analysts examine authentication logs to identify repeated failed login attempts and investigate potentially suspicious activity.

Repeated failures may indicate attempted unauthorized access, but additional evidence is needed before drawing conclusions.

## Environment
- Operating System: ChromeOS Linux (Crostini)
- Language: Python 3
- Project: Day 8 — Python Log Analysis

## Data Limitations
The authentication entries are synthetic training data, not actual system logs or evidence of real attacks.

## Portfolio Purpose
Demonstrate basic Python automation, log analysis, text processing, and security investigation skills.
