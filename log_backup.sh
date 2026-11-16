#!/bin/bash
# Day 5 Script Framework: Automated System Triage Backup
echo "Starting log file collection timeline..."

# Dynamically copy whichever authentication log path exists on this architecture
if [ -f /var/log/auth.log ]; then
    cp /var/log/auth.log ~/analyst_workspace/auth_audit.bak 2>/dev/null
elif [ -f /var/log/secure ]; then
    cp /var/log/secure ~/analyst_workspace/auth_audit.bak 2>/dev/null
else
    echo "Warning: No standard authentication log source file discovered."
fi

echo "Collection phase complete. Verifying output permissions."
ls -l ~/analyst_workspace/auth_audit.bak


