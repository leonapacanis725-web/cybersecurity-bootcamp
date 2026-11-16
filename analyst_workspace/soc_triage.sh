#!/bin/bash
# Day 14 Capstone: Automated Linux Incident Response Triage Tool

REPORT_DIR=~/analyst_workspace/ir_report_$(date +%Y%m%d_%H%M%S)
mkdir -p "$REPORT_DIR"

echo "=================================================="
echo " Starting Automated SOC Triage Collection..."
echo " Output Directory: $REPORT_DIR"
echo "=================================================="

# 1. System Vitals & Uptime (Day 8)
echo "[+] Capturing system vitals and disk usage..."
uptime > "$REPORT_DIR/01_system_vitals.txt"
df -h >> "$REPORT_DIR/01_system_vitals.txt"

# 2. Active Processes & Memory State (Day 4 & 8)
echo "[+] Snapshotting running processes..."
ps aux > "$REPORT_DIR/02_running_processes.txt"

# 3. Network Sockets & Open Listeners (Day 4 & 6)
echo "[+] Auditing active network sockets..."
ss -tulpn > "$REPORT_DIR/03_network_sockets.txt" 2>/dev/null

# 4. Persistence Mechanisms (Day 10)
echo "[+] Checking scheduled tasks and active services..."
crontab -l > "$REPORT_DIR/04_persistence.txt" 2>&1
systemctl list-units --type=service --state=running >> "$REPORT_DIR/04_persistence.txt"

# 5. Recent File Modifications in /tmp (Day 12)
echo "[+] Hunting recently modified files in /tmp (last 60 mins)..."
find /tmp /var/tmp -type f -mmin -60 > "$REPORT_DIR/05_recent_tmp_files.txt" 2>/dev/null

# 6. Top Brute-Force Attacker Frequency Analysis (Day 2 & 13)
echo "[+] Parsing auth.log for top failed login IPs..."
if [ -f /var/log/auth.log ]; then
    grep "Failed password" /var/log/auth.log | awk '{print $11}' | sort | uniq -c | sort -nr > "$REPORT_DIR/06_top_attackers.txt"
fi

# 7. Cryptographic Evidence Sealing (Day 12)
echo "[+] Generating SHA-256 chain-of-custody hashes..."
sha256sum "$REPORT_DIR"/*.txt > "$REPORT_DIR/manifest.sha256"

echo "=================================================="
echo " Triage Complete! All evidence hashed and locked."
echo "=================================================="
ls -lh "$REPORT_DIR"
