
# Linux Firewall Configuration and Investigation

## Objective
Investigate Linux firewall configuration, UFW rules, IPv4 and IPv6 policies, firewall service status, and application profiles.

## Environment
- Operating System: Debian Linux
- Platform: ChromeOS Linux environment (Crostini)
- Shell: Bash

## Tools Used
- UFW
- iptables
- ip6tables
- systemctl
- grep
- cat

## Firewall Installation
- UFW was initially not installed.
- UFW was installed successfully using apt.
- iptables was already installed.

## Configured Firewall Rules
The following UFW rules were added:

- Deny traffic from 203.0.113.50.
- Allow TCP port 22.
- Deny traffic from 192.168.1.105.

These rules were saved in UFW configuration, but UFW remained inactive.

## Firewall Status
- UFW status: Inactive.
- UFW service: Inactive (dead).
- Systemd service setting: Enabled.
- UFW configuration setting: ENABLED=no.
- Logging level: low.

## IPv4 Firewall Findings
The inspected iptables default policies were:

- INPUT: ACCEPT
- FORWARD: ACCEPT
- OUTPUT: ACCEPT

No custom filtering rules were displayed in the inspected chains.

## IPv6 Firewall Findings
The inspected ip6tables default policies were:

- INPUT: ACCEPT
- FORWARD: ACCEPT
- OUTPUT: ACCEPT

No custom filtering rules were displayed in the inspected chains.

## Application Profile Investigation

| Profile | Port | Purpose |
|---|---|---|
| OpenSSH | 22/tcp | Secure remote access |
| WWW | 80/tcp | HTTP web traffic |
| WWW Secure | 443/tcp | HTTPS web traffic |
| DNS | 53 | Domain name service |
| SMTP | 25/tcp | Mail transport |
| IMAPS | 993/tcp | Secure email retrieval |
| POP3S | 995/tcp | Secure email retrieval |

## Key Findings
- UFW was installed and contained three configured user rules.
- UFW was not actively enforcing those rules.
- The UFW configuration contained ENABLED=no.
- IPv4 and IPv6 default policies were ACCEPT.
- Application profiles provided predefined service and port information.
- The OpenSSH profile used TCP port 22.
- The WWW Secure profile used TCP port 443.
- The SMTP profile used TCP port 25.

## Security Assessment
The investigation found that UFW was inactive and the inspected IPv4 and IPv6 firewall chains had ACCEPT default policies.

The configured UFW rules should not be considered enforced protections while the firewall remains inactive.

No malicious activity was established by this configuration inspection.

## Limitations
- The investigation was conducted inside a ChromeOS Linux container.
- Container firewall behavior does not necessarily represent the Chromebook host firewall.
- Firewall configuration inspection does not establish whether the host network is protected.
- Application profiles describe potential firewall rules, not proof that services are running.
- The investigation represents a snapshot of the environment.
