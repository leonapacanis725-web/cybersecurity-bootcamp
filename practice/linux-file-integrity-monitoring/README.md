# Linux File Integrity Monitoring & Tamper Detection

## Project Overview
A hands-on Linux security exercise demonstrating how SHA-256 checksums can detect unexpected changes to files.

## Objectives
- Create a file integrity baseline.
- Verify file integrity using SHA-256.
- Simulate an unauthorized file modification.
- Detect the modification through checksum verification.
- Restore the test file and verify it again.

## Tools Used
- Linux terminal
- sha256sum
- find
- stat
- sed

## Investigation Results
- Initial checksum verification passed.
- A controlled test modification caused checksum verification to fail.
- The test comment was removed and a new baseline was generated.
- Final verification passed against the new baseline.

## Security Lessons
File integrity monitoring can help detect unexpected changes. A failed checksum indicates that a file differs from its recorded baseline, but does not by itself prove malicious activity.

## Limitations
The original baseline was overwritten after the test modification was removed. Therefore, the final successful check does not independently prove that the file exactly matched its original contents.

This was a controlled practice exercise, not evidence of a real security incident.
