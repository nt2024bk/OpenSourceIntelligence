#!/bin/bash
# ip_info.sh
# Description: Retrieves detailed information about an IP address.
# Author: [Your Name]
# Version: 1.0

IP_ADDRESS="$1"

if [ -z "$IP_ADDRESS" ]; then
    echo "[ERROR] No IP address provided. Usage: ./ip_info.sh <IP>"
    exit 1
fi

echo "[INFO] Gathering information for IP: $IP_ADDRESS"
echo "IP Address: $IP_ADDRESS" > "ip_report.txt"

# WHOIS lookup
echo "[INFO] WHOIS lookup..." >> "ip_report.txt"
whois "$IP_ADDRESS" >> "ip_report.txt"

# Geolocation (using ipinfo.io)
echo "[INFO] Geolocation lookup..." >> "ip_report.txt"
curl -s "https://ipinfo.io/$IP_ADDRESS/json" >> "ip_report.txt"

echo "[INFO] Report saved to ip_report.txt"
