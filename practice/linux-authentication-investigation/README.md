
# Linux Authentication and Account Investigation

## Project Overview
A hands-on Linux SOC investigation examining user accounts, login history, failed authentication records, group memberships, and administrative privileges.

## Objectives
- Identify the current Linux user and user ID.
- Examine active and historical login sessions.
- Review failed authentication records.
- Inventory system accounts.
- Investigate group memberships and sudo permissions.
- Inspect authentication log availability.

## Tools and Commands
- `whoami`, `id`, `who`, `w`
- `last`, `lastb`
- `getent passwd`, `groups`
- `sudo -l`
- `ls -l /var/log/auth.log`

## Key Findings
- Identified the primary user account and its group memberships.
- Found unrestricted, passwordless sudo permissions.
- Reviewed historical boot records and failed-login accounting.
- Identified an empty authentication log.

## Security Considerations
Unrestricted passwordless sudo access increases the impact of account compromise. Authentication log limitations reduce visibility into login activity.

## Environment
Debian Linux container running under ChromeOS (Crostini).

## Disclaimer
This investigation was conducted in a controlled personal Linux environment. Findings describe the container and do not represent the security configuration of the Chromebook host.
