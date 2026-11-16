# Linux System Health Investigation

## Objective
Collect system health information using Bash and Linux utilities.

## Tools
- Bash
- uptime
- free
- df
- ps
- journalctl

## Findings

1. System load average was approximately 128.
2. Available memory was 2.6 GiB.
3. Root filesystem usage was 86%.
4. No obvious high CPU consumer appeared in the displayed process list.
5. Sommelier graphical integration warnings appeared in system logs.

## Conclusion

Memory usage appeared healthy.
Disk utilization requires monitoring.
The unusually high load average requires additional investigation.
Graphical integration warnings require further observation.

## Limitations

This investigation does not establish malicious activity.
Additional monitoring is needed before drawing conclusions.
