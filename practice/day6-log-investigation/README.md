# Linux Log Investigation

## Objective
Practice using Linux system logs and user activity commands to investigate system events and identify information that may be relevant to a security investigation.

## Tools Used
- `date` — Displays the current date and time.
- `whoami` — Displays the current username.
- `who` — Shows users currently logged in.
- `last` — Displays recent login history.
- `lastb` — Attempts to display failed login attempts, when supported by the system.
- `journalctl` — Views system logs.
- `cat` — Displays saved investigation results.

## Investigation Activities
The investigation included:

1. Checking the current date and time.
2. Identifying the current Linux user.
3. Reviewing active user sessions.
4. Checking recent login history.
5. Exploring failed-login records where available.
6. Reviewing recent system journal entries.

## Evidence Collected
The investigation results are saved in:

`investigation.txt`

## Investigation Notes
Use this section to record observations from the commands:

- Current Linux user:
- Active user sessions:
- Recent login activity:
- Failed login information:
- Interesting system log entries:

Do not assume that an unusual event is malicious without additional evidence.

## Security Relevance
Linux log analysis is an important part of defensive security and Security Operations Center (SOC) work.

Security analysts review login activity and system logs to investigate:
- Unexpected login activity.
- Repeated failed login attempts.
- Unusual system events.
- Possible unauthorized access.

## Environment
- Operating System: ChromeOS Linux (Crostini)
- Shell: Linux Terminal
- Project: Day 6 — Linux Security Monitoring & Log Analysis

## Environment Limitations
Some Linux commands and log files may not be available inside the ChromeOS Linux container.

For example, `lastb` depends on access to the failed-login database, commonly `/var/log/btmp`. If the file or command is unavailable, document that limitation rather than treating it as evidence of an attack.

## Portfolio Purpose
This exercise demonstrates basic Linux log investigation, command-line troubleshooting, and defensive security awareness.
