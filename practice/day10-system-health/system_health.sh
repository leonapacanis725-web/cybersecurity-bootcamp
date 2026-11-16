#!/bin/bash

echo "===== SYSTEM HEALTH REPORT ====="

echo
echo "--- SYSTEM UPTIME ---"
uptime

echo
echo "--- MEMORY USAGE ---"
free -h

echo
echo "--- DISK SPACE ---"
df -h /

echo
echo "--- TOP CPU PROCESSES ---"
ps aux --sort=-%cpu | head -6

echo
echo "--- RECENT WARNINGS ---"
journalctl -p warning -n 5 --no-pager

echo
echo "===== INVESTIGATION COMPLETE ====="
