# Linux Cron Automation Investigation

## Objective
Configure and verify an automated recurring task using Linux cron.

## Environment
- Operating System: Debian Linux
- Shell: Bash
- Automation Service: Cron

## Configuration
Installed cron using:

sudo apt install -y cron

Enabled and started the service using:

sudo systemctl enable --now cron

## Scheduled Task

* * * * * date >> ~/cron-test.log

The five asterisks represent:
- Minute: every minute
- Hour: every hour
- Day of month: every day
- Month: every month
- Day of week: every day

The date command records the current date and time.
The >> operator appends output to the log file.

## Verification
- crontab -l confirmed the scheduled task.
- systemctl status cron confirmed the service was active.
- cron-test.log contained repeated timestamps.

## Result
The scheduled task executed successfully at approximately one-minute intervals.

## Skills Demonstrated
- Linux service management
- Cron scheduling
- Command-line automation
- Output redirection
- Log verification
- Troubleshooting
