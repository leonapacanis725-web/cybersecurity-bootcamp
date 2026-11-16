# Linux Network Service Investigation

## Project Overview
A hands-on SOC investigation examining Linux network interfaces, routing, listening ports, running processes, and service logs.

## Objectives
- Identify network interfaces and IP addresses.
- Examine network routes.
- Identify listening TCP and UDP ports.
- Attribute network sockets to running processes.
- Investigate Linux service status and logs.
- Document findings and limitations.

## Tools Used
- Linux networking utilities
- ss
- ip
- ps
- systemctl
- journalctl
- grep

## Investigation Highlights
- Identified the Linux network interface and default gateway.
- Discovered DHCP activity on UDP port 68.
- Identified Exim4 listening on TCP port 25.
- Inspected the Exim4 process and service configuration.
- Reviewed service startup and mail queue logs.

## Evidence
See investigation_report.md for the full investigation and findings.

## Skills Demonstrated
- Linux networking
- Service investigation
- Process attribution
- Log analysis
- Command-line troubleshooting
- SOC documentation
