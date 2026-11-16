# Linux File Integrity Monitoring Investigation Report

## 1. Objective
Test whether SHA-256 checksums can identify unexpected changes to a Linux file.

## 2. Environment
- Platform: Debian Linux (Crostini)
- User: leonapacanis725
- Test file: ~/log_backup.sh
- Integrity tool: sha256sum

## 3. Investigation Steps

### Step 1: Create Initial Baseline
Generated a SHA-256 checksum and saved it to:
~/analyst_workspace/script_baseline.sha256

### Step 2: Verify Initial Integrity
Executed:
sha256sum -c ~/analyst_workspace/script_baseline.sha256

Result: OK

### Step 3: Review Recent Temporary Files
Executed:
find /tmp /var/tmp -type f -mmin -60 2>/dev/null

Result: No matching files were displayed.

### Step 4: Inspect System Account File
Executed:
stat /etc/passwd

Observed:
- Owner: root
- Group: root
- Permissions: 644
- File size: 1641 bytes

Two checks showed the same displayed metadata.

### Step 5: Simulate File Modification
Appended a test comment to log_backup.sh.

Rechecked the original checksum.

Result: FAILED — checksum mismatch detected.

### Step 6: Restore Test File and Verify
Removed the appended test comment.
Generated a new checksum baseline.
Ran checksum verification again.

Result: OK

## 4. Findings
- SHA-256 verification successfully detected the controlled file modification.
- The checksum mismatch demonstrated how file integrity monitoring can identify changes.
- The final verification passed against a newly generated baseline.

## 5. Limitations
The original checksum baseline was overwritten after the test. The final successful verification therefore does not independently establish that the file matched its original contents.

No malicious activity was established by this exercise.

## 6. SOC Analyst Conclusion
Checksum monitoring is a useful defensive technique for detecting file changes. In a production environment, baselines should be stored securely and separately from monitored files to reduce the risk of unauthorized baseline modification.

This exercise demonstrated controlled tamper detection in a Linux practice environment.
