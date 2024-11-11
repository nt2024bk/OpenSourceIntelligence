
---

### 2. **Domain Information Script: `domain_info.sh`**

This script retrieves WHOIS information and DNS records for a given domain.

#### Script: `domain_info.sh`
```bash
#!/bin/bash
# domain_info.sh
# Description: Retrieves WHOIS and DNS information for a domain.
# Author: [Your Name]
# Version: 1.0

DOMAIN="$1"

if [ -z "$DOMAIN" ]; then
    echo "[ERROR] No domain provided. Usage: ./domain_info.sh <domain>"
    exit 1
fi

echo "[INFO] Gathering information for domain: $DOMAIN"
echo "Domain: $DOMAIN" > "domain_report.txt"

# WHOIS lookup
echo "[INFO] WHOIS lookup..." >> "domain_report.txt"
whois "$DOMAIN" >> "domain_report.txt"

# DNS lookup (A, MX, NS)
echo "[INFO] DNS lookup..." >> "domain_report.txt"
dig "$DOMAIN" A >> "domain_report.txt"
dig "$DOMAIN" MX >> "domain_report.txt"
dig "$DOMAIN" NS >> "domain_report.txt"

echo "[INFO] Report saved to domain_report.txt"
