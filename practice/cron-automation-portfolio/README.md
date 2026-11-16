# Linux Cron Automation

## Project Overview
A hands-on Linux project demonstrating how to schedule commands to run automatically using cron.

## Objectives
- Install and enable the cron service.
- Understand cron scheduling syntax.
- Create a recurring scheduled task.
- Capture and verify automated execution.

## Tools Used
- Debian Linux
- Bash
- Cron
- Nano

## Scheduled Task

* * * * * date >> ~/cron-test.log

This job runs every minute and appends the current date and time to a log file.

## Evidence
- cron-test.log contains timestamps from repeated executions.

## Skills Demonstrated
- Linux system administration
- Task scheduling
- Bash command-line operations
- Log collection
- Troubleshooting
