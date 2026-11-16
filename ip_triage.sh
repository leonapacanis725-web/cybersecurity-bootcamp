#!/bin/bash
# Day 6 Automation Focus: Public IP Discovery (Fixed)
echo "Querying external DNS and network endpoints..."

# -s silences the loading bar, -L forces curl to follow HTML redirects
PUBLIC_IP=$(curl -sL https://ifconfig.me)

echo "----------------------------------------"
echo "Triage Complete. Your sandbox public IP is: $PUBLIC_IP"
echo "----------------------------------------"

