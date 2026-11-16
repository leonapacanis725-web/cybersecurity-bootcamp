
# Linux Authentication and Account Investigation Report

## 1. Investigation Overview

**Investigation:** Linux Authentication and Account Review  
**Environment:** Debian Linux container (ChromeOS Crostini)  
**Objective:** Examine account identities, login records, failed authentication records, group memberships, and administrative privileges.

## 2. User Identity

Command: `whoami`

Result:
- Current user: leonapacanis725

Command: `id`

Findings:
- UID: 1000
- Primary GID: 1000
- Supplementary groups include sudo and wireshark.

Assessment:
The account has administrative group membership and access associated with packet capture capabilities.

## 3. Active Login Sessions

Commands: `who`, `w`

Findings:
- No active login sessions were displayed.
- The w command reported zero logged-in users.
- System uptime was approximately 15 days at the time of inspection.

Assessment:
The commands returned no active session entries. Container session reporting may differ from a conventional Linux host.

## 4. Historical Login Records

Command: `last`

Findings:
- Six system boot entries were displayed.
- The earliest displayed record was September 18, 2026.
- The latest displayed boot was October 28, 2026.
- The wtmp accounting history began September 18, 2026.

Assessment:
The displayed records document system boots. They do not establish six user logins.

## 5. Failed Authentication Records

Command: `sudo lastb`

Findings:
- The btmp history began September 18, 2026.
- No failed-login entries were displayed.

Assessment:
No failed-login records were returned. This does not prove that no failed attempts occurred.

## 6. Account Inventory

Command: `getent passwd`

Findings:
- 27 account entries were returned.
- The primary user account had UID 1000.
- Root had UID 0.
- Multiple service accounts used nologin or false shells.
- ChromeOS-related accounts were also present.

Assessment:
The inventory contained system and service accounts consistent with a Debian-based container. No account was identified as malicious based on this output alone.

## 7. Group Membership Review

Command: `groups`

Important memberships:
- sudo
- wireshark
- kvm
- plugdev

Assessment:
The sudo group provides administrative privileges. The wireshark group is associated with packet capture permissions. These memberships increase the capabilities available to the account.

## 8. Sudo Privilege Review

Command: `sudo -l`

Findings:
- `(ALL : ALL) ALL`
- `(ALL : ALL) NOPASSWD: ALL`

Assessment:
The account can execute unrestricted commands as other users, including root, without a password prompt. This creates elevated risk if the account is compromised.

## 9. Authentication Log Review

Command: `ls -l /var/log/auth.log`

Findings:
- File exists.
- Owner: root
- Group: root
- Permissions: 644
- File size: 0 bytes
- Last modification: November 5, 2026.

Assessment:
The authentication log was empty at the time of inspection. It could not provide authentication-event evidence.

## 10. Overall Security Assessment

The investigation identified unrestricted passwordless sudo access as the most significant security concern.

Authentication visibility was limited because:
- No active sessions were displayed.
- No failed-login records were returned.
- The traditional authentication log was empty.

These findings do not establish malicious activity or account compromise.

## 11. Recommendations

- Review whether unrestricted passwordless sudo access is necessary.
- Apply least-privilege principles where practical.
- Maintain reliable authentication logging.
- Periodically review user accounts and group memberships.
- Investigate unexpected login activity and privilege changes.

## 12. Investigation Limitations

This investigation was performed inside a ChromeOS-managed Debian Linux container (Crostini). Its users, sessions, logs, and privileges do not represent the complete Chromebook host environment.

The available records do not establish complete authentication history.

## 13. Conclusion

The investigation successfully examined Linux identity information, account inventory, login accounting, group memberships, and sudo privileges.

The primary finding was unrestricted passwordless administrative access. Authentication logging limitations prevented a complete review of login activity.

No confirmed malicious activity was identified.



