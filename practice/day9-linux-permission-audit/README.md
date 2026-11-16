# Linux File Permission Audit

## Objective
Inspect Linux file permissions, identify overly permissive access, and apply a more restrictive permission setting.

## Tools Used
- Linux Terminal
- `ls -l` — List files and permissions.
- `chmod` — Change file permissions.
- `stat` — Display file information.
- `tee` — Save command output to a file.

## Files
- `public-notes.txt` — Sample file with permission 644.
- `private-notes.txt` — Sample file with permission 600.
- `shared-file.txt` — Sample file initially assigned permission 666.
- `evidence.txt` — Captured permission audit and correction results.
- `README.md` — Project documentation.

## Investigation Findings
The initial audit identified a file with permission 666.

This setting allowed the owner, group, and other users to read and write the file.

## Corrective Action
Changed `shared-file.txt` from permission 666 to 600.

This restricted read and write access to the file owner.

## Security Relevance
Linux file permissions help protect sensitive information and prevent unauthorized modification.

Overly permissive settings can expose files to unnecessary access.

## Skills Demonstrated
- Linux file permission auditing
- Understanding numeric and symbolic permissions
- Identifying excessive access
- Applying permission restrictions
- Capturing terminal evidence
- Documenting security findings

## Data Limitations
All files used in this exercise were created specifically for training. No real system files or sensitive information were modified.
