# Linux Network Service Investigation

## Objective
Investigate Linux network interfaces, listening ports, running services, and service logs.

## Environment
- Operating System: Debian Linux
- Platform: ChromeOS Linux environment
- Shell: Bash

## Tools Used
- ip
- ss
- ps
- systemctl
- journalctl
- grep
- tail

## Network Interface Findings

### Loopback
- Interface: lo
- IPv4 Address: 127.0.0.1
- Status: UP

### Ethernet
- Interface: eth0
- IPv4 Address: 100.115.92.195
- Status: UP

## Routing Findings
- Default Gateway: 100.115.92.193
- Network Interface: eth0
- Connected Network: 100.115.92.192/28

## Listening Port Findings

### UDP Port 68
- Process: dhclient
- PID: 113
- Purpose: DHCP client communication

### TCP Port 25
- Process: exim4
- PID: 28836
- Purpose: Mail Transfer Agent
- Listening Addresses: 127.0.0.1 and ::1

## Process Investigation
- Exim4 runs as a background process.
- Parent Process ID: 1
- Startup Command: /usr/sbin/exim4 -bd -q30m

## Service Investigation
- Service: exim4
- Status: Active (running)
- Startup Configuration: Enabled
- Memory Usage: 10.9 MB

## Log Analysis

### System Journal
- Exim4 service startup was recorded.
- Systemd confirmed successful service startup.
- No startup errors appeared in the reviewed entries.

### Exim4 Main Log
- Multiple mail queue runs were observed.
- Each displayed start event had a corresponding end event.
- No delivery indicators matched the search.
- No authentication, rejection, denial, or failure keywords matched the search.

### Log Search Troubleshooting
- Initial grep expression generated warnings because asterisks were not escaped.
- Corrected the expression using \*\*.
- The corrected searches completed without warnings.

## Conclusion

The investigation identified the network interfaces, routing configuration, listening sockets, and associated processes.

Exim4 was active and configured for automatic startup. Its SMTP listener was bound to loopback addresses.

The reviewed logs showed successful service startup and completed queue runs. No matching delivery or authentication-related entries were found in the searched log sample.

No malicious activity was established by the evidence collected.

## Limitations
- The investigation represents a snapshot of the Linux environment.
- Empty log searches do not prove that no activity occurred.
- Further investigation would be needed to establish whether unexpected network activity exists.
