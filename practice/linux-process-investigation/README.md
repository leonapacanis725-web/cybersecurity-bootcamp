# Linux System Performance & Process Investigation

## Objective
Investigate Linux system performance, review process activity, and identify unusual process states using command-line tools.

## Tools Used
- Linux Terminal
- `top` — Monitor system performance and processes.
- `ps` — Display process information.
- `/proc` — Inspect Linux process information.

## Investigation Evidence

### System Performance
- CPU idle: 99.7%
- Memory free: 2,278.2 MiB
- Total tasks: 82
- Load average: 58.00, 57.08, 54.71

### Process Investigation
A zombie process was identified:

- PID: 20934
- Process: `ld-linux-x86-64`
- State: Z (zombie)
- Parent PID: 20931

The process inspection showed that `/proc/20931/exe` was no longer available when checked.

## Findings

1. CPU usage was very low despite the high load average.
2. Available memory was substantial.
3. A zombie process was present.
4. The parent process information could not be fully inspected because its executable link was unavailable.

## Security Relevance
System administrators and security analysts monitor process activity to identify abnormal behavior, investigate resource issues, and understand relationships between processes.

A zombie process is not automatically malicious. Additional investigation is required before determining whether activity is suspicious.

## Limitations
This investigation represents a point-in-time snapshot. The available evidence does not establish the cause of the high load average or the zombie process.

## Portfolio Skills Demonstrated
- Linux system monitoring
- Process identification
- PID and PPID investigation
- Reading process states
- Interpreting system performance metrics
- Evidence-based security reporting
